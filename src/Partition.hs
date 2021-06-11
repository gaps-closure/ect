{-# LANGUAGE RecordWildCards #-}

module Partition where

import Z3.Monad

import qualified LLVM.AST as A
import qualified LLVM.AST.Global as A

import qualified Data.Traversable as T
import qualified Data.Map.Strict as M

import Control.Monad.IO.Class

import CLEMap

type GlobalsIdTable = M.Map A.Name Int

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

numInstrs :: [A.BasicBlock] -> Int
numInstrs [] = 0
numInstrs ((A.BasicBlock _ il _):bbs) = length il + 1 + numInstrs bbs

-- Make a map of integer IDs for globals
mkGlobalsIds :: [A.Global] -> GlobalsIdTable
mkGlobalsIds gs = fst $ foldl addG (M.empty, 1) gs
  where
    addG (tbl, i) g = case g of
      A.Function{..} -> (M.insert name i tbl, i + (numInstrs basicBlocks) + 1)
      _ -> (M.insert (A.name g) i tbl, i + 1)

lookup' :: A.Name -> GlobalsIdTable -> Int
lookup' n gids = case M.lookup n gids of
  Just i -> i
  _ -> error $ "GlobalsIdTable missing key: " ++ show n

-- ctrldep-callinv: Tie every function call instruction to the definition
getCallinv :: GlobalsIdTable -> [A.Global] -> [(Int, Int)]
getCallinv _ _ = []

-- ctrldep-callret: Tie every return to the node it's returning to
getCallret :: GlobalsIdTable -> [A.Global] -> [(Int, Int)]
getCallret _ _ = []

-- ctrldep-entry: Tie every function definition to all instructions in it
getEntry :: GlobalsIdTable -> [A.Global] -> [(Int, Int)]
getEntry _ [] = []
getEntry gids (A.Function{..}:gs) = pairs ++ getEntry gids gs
  where
    pairs = (zip (repeat func_id) instr_ids)
    func_id = lookup' name gids
    instr_ids = [(func_id + 1)..(func_id + numInstrs basicBlocks)]
getEntry gids (_:gs) = getEntry gids gs

getBr :: GlobalsIdTable -> [A.Global] -> [(Int, Int)] -- Unused
getBr _ _ = []

getOther :: GlobalsIdTable -> [A.Global] -> [(Int, Int)] -- Unused
getOther _ _ = []

-- datadep-defuse: Tie every instruction using a variable to the variable def
-- FIXME: Partial: only handles global references right now
getDefuse :: GlobalsIdTable -> [A.Global] -> [(Int, Int)]
getDefuse _ _ = []

getRaw :: GlobalsIdTable -> [A.Global] -> [(Int, Int)] -- Unused
getRaw _ _ = []

getRet :: GlobalsIdTable -> [A.Global] -> [(Int, Int)] -- Unused
getRet _ _ = []

getAlias :: GlobalsIdTable -> [A.Global] -> [(Int, Int)] -- Unused
getAlias _ _ = []

addEdges :: FuncDecl -> [(Int, Int)] -> Z3 ()
addEdges f pairs = do
  int <- mkIntSort
  x <- mkFreshConst "x" int
  y <- mkFreshConst "y" int
  qx <- toApp x
  qy <- toApp y
  f' <- mkApp f [x, y]

  let intEq a b = mkEq a =<< mkIntNum b
      mkEdge (a, b) = mkAnd =<< T.sequence [intEq x a, intEq y b]

  edgeExprs <- mapM mkEdge pairs
  assert =<< mkForallConst [] [qx, qy] =<< mkEq f' =<< mkOr edgeExprs

encodeEdges :: PartitionEnv -> GlobalsIdTable -> [A.Global] -> Z3 ()
encodeEdges PartitionEnv{..} gids gs = mapM_ (uncurry addEdges) allPairs
  where
    run f = f gids gs
    allPairs = [ (f_cd_callinv, run getCallinv), (f_cd_callret, run getCallret)
               , (f_cd_entry, run getEntry), (f_cd_br, run getBr)
               , (f_cd_other, run getOther), (f_dd_defuse, run getDefuse)
               , (f_dd_raw, run getRaw), (f_dd_ret, run getRet)
               , (f_dd_alias, run getAlias) ]

-- labels: Every node that has an llvm annotation corresponding to a label in
-- the CLE gets the information in that label encoded into z3
-- Remember to encode negations as well
-- (i.e. labeled is false for all unlabeled nodes)
encodeLabels :: PartitionEnv -> GlobalsIdTable -> [A.Global] -> CLEMap -> Z3 ()
encodeLabels PartitionEnv{..} _ _ _ = do
  return ()

provePartitionable :: A.Module -> CLEMap -> Z3 (Result, GlobalsIdTable)
provePartitionable llvm cle = do
  let gs = concatMap isG (A.moduleDefinitions llvm)
      isG (A.GlobalDefinition g) = [g]
      isG _ = []
      gids = mkGlobalsIds gs
  env <- mkPartitionEnv
  addPartitionRules env
  encodeEdges env gids gs
  encodeLabels env gids gs cle
  res <- check
  script <- solverToString
  liftIO $ writeFile "partition.smt2" script
  return (res, gids)

runProvePartitionable :: A.Module -> CLEMap -> IO (Result, Maybe Model, GlobalsIdTable)
runProvePartitionable llvm cle = do
  (res, gids) <- evalZ3 $ provePartitionable llvm cle
  return (res, Nothing, gids)
