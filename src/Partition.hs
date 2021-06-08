{-# LANGUAGE RecordWildCards #-}

module Partition where

import Z3.Monad

import qualified LLVM.AST as A
import qualified LLVM.AST.DLL as A (StorageClass(..))
import qualified LLVM.AST.AddrSpace as A
import qualified LLVM.AST.Visibility as A
import qualified LLVM.AST.Linkage as A
import qualified LLVM.AST.CallingConvention as A
import qualified LLVM.AST.ParameterAttribute as A
import qualified LLVM.AST.FunctionAttribute as A
import qualified LLVM.AST.Constant as A
import qualified LLVM.AST.InlineAssembly as A
import qualified LLVM.AST.RMWOperation as A
import qualified LLVM.AST.IntegerPredicate as A
import qualified LLVM.AST.FloatingPointPredicate as A
import qualified LLVM.AST.ThreadLocalStorage as A
import qualified LLVM.AST.Float as A
import Data.ByteString.Short (ShortByteString)
import Data.Word (Word32)

import qualified Data.Map.Strict as M

import CLEMap

type IdTable = M.Map A.Name Int

data PartitionEnv = PartitionEnv { s_Bool        :: !Sort
                                 , s_Int         :: !Sort
                                 , c_Orange      :: !Constructor
                                 , c_Purple      :: !Constructor
                                 , s_Color       :: !Sort
                                 , f_enclave     :: !FuncDecl
                                 , f_labeled     :: !FuncDecl
                                 , f_level       :: !FuncDecl
                                 , f_remotelevel :: !FuncDecl
                                 , f_cd_callinv  :: !FuncDecl
                                 , f_cd_callret  :: !FuncDecl
                                 , f_cd_entry    :: !FuncDecl
                                 , f_cd_br       :: !FuncDecl
                                 , f_cd_other    :: !FuncDecl
                                 , f_dd_defuse   :: !FuncDecl
                                 , f_dd_raw      :: !FuncDecl
                                 , f_dd_ret      :: !FuncDecl
                                 , f_dd_alias    :: !FuncDecl }

mkPartitionEnv :: Z3 PartitionEnv
mkPartitionEnv = do

  -- Datatypes
  let symbols = ["Color", "Orange", "Purple", "is_Orange", "is_Purple"]
  [cSym, oSym, pSym, oRec, pRec] <- mapM mkStringSymbol symbols
  c_Orange <- mkConstructor oSym oRec []
  c_Purple <- mkConstructor pSym pRec []
  s_Color <- mkDatatype cSym [c_Orange, c_Purple]
  s_Int <- mkIntSort
  s_Bool <- mkBoolSort

  -- Mapping functions
  let mkFunc n args ret = do
        funcSym <- mkStringSymbol n
        mkFuncDecl funcSym args ret

  -- Enclave, labeled, level, remotelevel
  f_enclave <- mkFunc "enclave" [s_Int] s_Color
  f_labeled <- mkFunc "labeled" [s_Int] s_Bool
  f_level <- mkFunc "level" [s_Int] s_Color
  f_remotelevel <- mkFunc "remotelevel" [s_Int] s_Color

  -- Edge functions
  let mkEdge n = mkFunc n [s_Int, s_Int] s_Bool
      edges = [ "ctrldep-callinv", "ctrldep-callret", "ctrldep-entry"
              , "ctrldep-br", "ctrldep-other", "datadep-defuse"
              , "datadep-raw", "datadep-ret", "datadep-alias" ]
  [ f_cd_callinv, f_cd_callret, f_cd_entry, f_cd_br, f_cd_other,
    f_dd_defuse, f_dd_raw, f_dd_ret, f_dd_alias ] <- mapM mkEdge edges

  return PartitionEnv{..}

addPartitionRules :: PartitionEnv -> Z3 ()
addPartitionRules PartitionEnv{..} = do

  -- Two quantified integers to work with
  x             <- mkFreshConst "x" s_Int
  qx            <- toApp x
  x_enclave     <- mkApp f_enclave [x]
  x_labeled     <- mkApp f_labeled [x]
  x_level       <- mkApp f_level [x]
  -- x_remotelevel <- mkApp f_remotelevel [x]
  y             <- mkFreshConst "y" s_Int
  qy            <- toApp y
  y_enclave     <- mkApp f_enclave [y]
  y_labeled     <- mkApp f_labeled [y]
  -- y_level       <- mkApp f_level [y]
  y_remotelevel <- mkApp f_remotelevel [y]

  -- Edges between the quantified variables
  [cd_callinv, cd_entry, cd_br, cd_other, dd_defuse] <- mapM (flip mkApp [x, y])
    [f_cd_callinv, f_cd_entry, f_cd_br, f_cd_other, f_dd_defuse]
  -- Other edges unused (for now)

  -- (assert (forall ((x Int))
  --   (=> (labeled x) (= (level x) (enclave x)))
  -- ))
  levelIsEnclave <- mkEq x_level x_enclave
  assert =<< mkForallConst [] [qx] =<< mkImplies x_labeled levelIsEnclave

  -- (assert (forall ((x Int) (y Int))
  --   (=>
  --     (or (ctrldep-entry x y) (ctrldep-br x y) (ctrldep-other x y))
  --     (= (enclave x) (enclave y))
  --   )
  -- ))
  sameEnclave <- mkEq x_enclave y_enclave
  noResolve <- mkOr [cd_entry, cd_br, cd_other]
  assert =<< mkForallConst [] [qx, qy] =<< mkImplies noResolve sameEnclave

  -- (assert (forall ((x Int) (y Int))
  --   (=>
  --     (ctrldep-callinv x y)
  --     (ite
  --       (labeled y)
  --       (= (enclave x) (remotelevel y))
  --       (= (enclave x) (enclave y))
  --     )
  --   )
  -- ))
  resolvable <- mkEq x_enclave y_remotelevel
  ifLabelResolve <- mkIte y_labeled resolvable sameEnclave
  assert =<< mkForallConst [] [qx, qy] =<< mkImplies cd_callinv ifLabelResolve

  -- (assert (forall ((x Int) (y Int))
  --   (=> (datadep-defuse x y) (= (enclave x) (enclave y)))
  -- ))
  assert =<< mkForallConst [] [qx, qy] =<< mkImplies dd_defuse sameEnclave

-- Pass over LLVM AST, assign each node an integer, encode labels and
-- dependencies over integers. Remember to encode negations as well
-- (i.e. labeled is false for all unlabeled nodes, edge functions are false
-- outside the edges specified)
-- Encode:
  -- ids: Every Node gets a corresponding id in the ID table.
    -- Convert both names and unnames to unique string keys (multiplex unnames).
    -- Nodes include instructions and definitions.
    -- LLVM object must have an A.Name to be considered a Node.
  -- labels: Every node that has an llvm annotation corresponding to a label in
    -- the CLE gets the information in that label encoded into z3
  -- ctrldep-callinv: Tie every function call instruction to the definition
  -- ctrldep-callret: Tie every return to the node it's returning to
  -- ctrldep-entry: Tie every function definition to all instructions in it
  -- datadep-defuse: Tie every instruction using a variable to the variable def
encodeLabelsEdges :: PartitionEnv -> A.Module -> CLEMap -> Z3 IdTable
encodeLabelsEdges PartitionEnv{..} llvm cle = do
  -- Consider splitting into three functions?
  -- encodeIds (returns table),
  -- encodeLabels (uses table),
  -- encodeEdges (uses table)
  return M.empty

provePartitionable :: A.Module -> CLEMap -> Z3 (Result, IdTable)
provePartitionable llvm cle = do
  env <- mkPartitionEnv
  addPartitionRules env
  idTable <- encodeLabelsEdges env llvm cle
  res <- check
  return (res, idTable)

runProvePartitionable :: A.Module -> CLEMap -> IO (Result, Maybe Model, IdTable)
runProvePartitionable llvm cle = do
  (res, idTable) <- evalZ3 $ provePartitionable llvm cle
  return (res, Nothing, idTable)
