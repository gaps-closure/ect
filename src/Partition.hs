{-# LANGUAGE RecordWildCards #-}

module Partition where

import Z3.Monad

import qualified LLVM.AST as A hiding (GetElementPtr, BitCast)
import qualified LLVM.AST.Global as A
import qualified LLVM.AST.Constant as A

import qualified Data.Traversable as T
import qualified Data.Map.Strict as M

import qualified Data.Char as C
import qualified Data.List as L
import qualified Data.ByteString.UTF8 as BS
import qualified Data.ByteString.Short as BSS

import Control.Monad.IO.Class

import CLEMap

type GlobalsIdTable = M.Map A.Name Int
type Solution = M.Map A.Name String

data PartitionEnv = PartitionEnv { s_Bool        :: !Sort
                                 , s_Int         :: !Sort
                                 , c_Orange      :: !FuncDecl
                                 , c_Purple      :: !FuncDecl
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
  -- FIXME: make color agnostic
  let symbols = ["Color", "Orange", "Purple", "is_Orange", "is_Purple"]
  [cSym, oSym, pSym, oRec, pRec] <- mapM mkStringSymbol symbols
  consOrange <- mkConstructor oSym oRec []
  consPurple <- mkConstructor pSym pRec []
  s_Color <- mkDatatype cSym [consOrange, consPurple]
  [c_Orange, c_Purple] <- getDatatypeSortConstructors s_Color

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

-- FIXME: ctrldep-callinv: Tie every function call instruction to the definition
getCallinv :: GlobalsIdTable -> [A.Global] -> [(Int, Int)]
getCallinv _ _ = []

-- FIXME: ctrldep-callret: Tie every return to the node it's returning to
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

-- FIXME: datadep-defuse: Tie every instruction using a variable to the variable def
-- Partial: only handles global references right now
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

markAllLabeled :: FuncDecl -> [(Int, CLE)] -> Z3 ()
markAllLabeled f nodes = do
  int <- mkIntSort
  x <- mkFreshConst "x" int
  qx <- toApp x
  isLabeled <- mkApp f [x]

  labeledExprs <- mapM (\(y, _) -> mkEq x =<< mkIntNum y) nodes
  assert =<< mkForallConst [] [qx] =<< mkEq isLabeled =<< mkOr labeledExprs

addLabels' :: PartitionEnv -> [(Int, CLE)] -> Z3 ()
addLabels' PartitionEnv{..} ns = mapM_ (\(y, c) -> assert =<< mkLabel y c) ns
  where
    mkColor s = case s of
      "orange" -> mkApp c_Orange []
      "purple" -> mkApp c_Purple []
      _ -> error "addLabels': bad color"

    levelIsColor color f y = do
      levelOfY <- mkApp f =<< T.sequence [mkIntNum y]
      mkEq levelOfY =<< color

    mkLvl y cle = levelIsColor (mkColor . level . json $ cle) f_level y
    mkRmt y cle = case cdf (json cle) of
      Just [cdf'] -> levelIsColor (mkColor $ remotelevel cdf') f_remotelevel y
      Nothing -> levelIsColor (mkColor . level . json $ cle) f_remotelevel y
      _ -> error $ "CLE label has unsupported CDF: " ++ label cle

    mkLabel y cle = mkAnd =<< T.sequence [mkLvl y cle, mkRmt y cle]

addLabels :: PartitionEnv -> [(Int, CLE)] -> Z3 ()
addLabels env labeledNodes = do
  markAllLabeled (f_labeled env) labeledNodes
  addLabels' env labeledNodes

getGlobalArr :: A.Name -> [A.Global] -> [A.Constant]
getGlobalArr n gs = case filter (\g -> A.name g == n) gs of
  [(A.GlobalVariable _ _ _ _ _ _ _ _ _ (Just (A.Array _ ms)) _ _ _ _)] -> ms
  _ -> error $ "Global name not found: " ++ show n

globalArrToString :: A.Name -> [A.Global] -> String
globalArrToString n gs = init $ map toChar $ getGlobalArr n gs
  where
    toChar (A.Int 8 i) = C.chr $ fromIntegral i
    toChar _ = error "globalArrToString: expected Int constant"

toName :: String -> A.Name
toName = A.Name . BSS.toShort . BS.fromString

findUnNameId :: GlobalsIdTable -> A.Global -> A.Name -> Int
findUnNameId gids (A.Function{..}) n = case foldl (bbFind n) gid basicBlocks of
  Left i -> i
  Right _ -> error $ "findUnNameId: unName " ++ show n ++ " missing"
  where
    gid = (Right $ lookup' name gids)

    bbFind n' (Right c) (A.BasicBlock _ is _) = case L.findIndex (isUn n') is of
      Just i -> Left $ c + i + 1
      _ -> Right $ c + length is + 1
    bbFind _ c _ = c

    isUn n'' (n' A.:= _) = n'' == n'
    isUn _ _ = False

findUnNameId _ _ _ = error "unreachable"

fxnLocalAnnos :: GlobalsIdTable -> [A.Global] -> A.Global -> [(Int, String)]
fxnLocalAnnos gids gs f@(A.Function{..}) = concatMap bbAnnos basicBlocks
  where
    bbAnnos (A.BasicBlock _ is _) = concatMap pa is
    pa (_ A.:= i) = pa' i
    pa (A.Do i) = pa' i
    pa' (A.Call _ _ _ (Right (A.ConstantOperand gr)) args _ _) = pa'' gr args
    pa' _ = []
    pa'' (A.GlobalReference _ n) [(lr, _), (co, _), _, _] = pa''' n lr co
    pa'' _ _ = []
    pa''' n (A.LocalReference _ un) (A.ConstantOperand gep) = pa'''' n un gep
    pa''' _ _ _ = []
    pa'''' lln un (A.GetElementPtr _ (A.GlobalReference _ n) _)
      | lln == toName s = [(findUnNameId gids f un, globalArrToString n gs)]
      | otherwise = []
    pa'''' _ _ _ = []
    s = "llvm.var.annotation"
fxnLocalAnnos _ _ _ = []

findLocalAnnotations :: GlobalsIdTable -> [A.Global] -> [(Int, String)]
findLocalAnnotations gids gs = concatMap (fxnLocalAnnos gids gs) gs

findGlobalAnnotations :: GlobalsIdTable -> [A.Global] -> [(Int, String)]
findGlobalAnnotations gids gs = map parseAnn $ getGlobalArr n gs
  where
    parseAnn (A.Struct _ _ [(A.BitCast a _), (A.GetElementPtr _ b _), _, _]) =
      parseAnn' a b
    parseAnn _ = die

    parseAnn' (A.GlobalReference _ tgtName) (A.GlobalReference _ lblName) =
      (lookup' tgtName gids, globalArrToString lblName gs)
    parseAnn' _ _ = die

    die = error $ "unexpected structure in @" ++ s
    s = "llvm.global.annotations"
    n = toName s

encodeLabels :: PartitionEnv -> GlobalsIdTable -> [A.Global] -> CLEMap -> Z3 ()
encodeLabels env gids gs cles = addLabels env allPairs
  where
    allPairs = M.toList $ foldl nameToCle M.empty annotations
    annotations = findLocalAnnotations gids gs ++ findGlobalAnnotations gids gs
    clemap = M.fromList $ map (\c@(CLE l _) -> (l, c)) cles
    nameToCle pairs (i, s) = case M.lookup s clemap of
      Just cle -> M.insert i cle pairs
      _ -> error $ "CLE label missing from CLEmap: " ++ s

provePartitionable :: A.Module -> CLEMap -> Z3 (Maybe Solution)
provePartitionable llvm cle = do

  -- Encode
  let gs = concatMap isG (A.moduleDefinitions llvm)
      isG (A.GlobalDefinition g) = [g]
      isG _ = []
      gids = mkGlobalsIds gs
  env <- mkPartitionEnv
  addPartitionRules env

  encodeEdges env gids gs
  encodeLabels env gids gs cle

  -- Dump file
  script <- solverToString
  liftIO $ writeFile "partition.smt2" script

  -- Check
  (_, m) <- solverCheckAndGetModel
  case m of
    Just m' -> Just <$> extractEnclaves m' env gids
    _ -> return Nothing

extractEnclaves :: Model -> PartitionEnv -> GlobalsIdTable -> Z3 Solution
extractEnclaves m PartitionEnv{..} gids = do
  enclave <- evalFunc m f_enclave
  case enclave of
    Just (FuncModel vals els) -> do
      vals' <- mapM interpretEntry vals

      -- kind <- getAstKind els
      -- aels <- toApp els
      -- fname <- getSymbolString =<< getDeclName =<< getAppDecl aels
      -- nargs <- getAppNumArgs aels
      -- args <- getAppArgs aels
      -- args' <- mapM astToString args
      -- liftIO $ print kind
      -- liftIO $ print fname
      -- liftIO $ print nargs
      -- liftIO $ print $ unlines args'

      els' <- astToString els -- FIXME
      return $ gidsToEnclaves vals' els' gids
    Nothing -> error "enclave function has no interpretation in model"

interpretEntry :: ([AST], AST) -> Z3 (Int, String)
interpretEntry ([z3gid], z3clr) = do
  gid <- fromIntegral <$> getInt z3gid
  clr <- astToString z3clr -- FIXME
  return (gid, clr)
interpretEntry _ = error "InterpretEntry: bad functionEntry"

gidsToEnclaves :: [(Int, String)] -> String -> GlobalsIdTable -> Solution
gidsToEnclaves vals els gids = foldl gidToEnclave M.empty $ M.toList gids
  where
    gidToEnclave soln (n, i) = case M.lookup i (M.fromList vals) of
      Just c -> M.insert n c soln
      Nothing -> M.insert n els soln

runProvePartitionable :: A.Module -> CLEMap -> IO (Maybe Solution)
runProvePartitionable llvm cle = evalZ3 $ provePartitionable llvm cle
