{-# LANGUAGE RecordWildCards #-}

{-
LD_LIBRARY_PATH=z3-4.8.8/lib stack build

stack run -- \
  examples/example1/llvm/example1-orange-9.ll \
  examples/example1/llvm/example1-purple-9.ll \
  examples/example1/llvm/example1-refactored-9.ll \
  examples/example1/clemaps/orange.json \
  examples/example1/clemaps/purple.json \
  examples/example1/clemaps/refactored.json

LD_LIBRARY_PATH=z3-4.8.8/lib stack ghci
:set -XTemplateHaskell
-}

module Main where

import System.Environment ( getArgs, getProgName )
import System.Console.GetOpt ( getOpt, usageInfo, OptDescr(..),
                              ArgDescr(NoArg, ReqArg), ArgOrder(RequireOrder) )
import System.IO
import System.Exit( exitSuccess, exitFailure )

import Data.Maybe
import qualified Data.ByteString.UTF8 as BS
import qualified Data.ByteString.Lazy.UTF8 as BSL
import Data.ByteString.Short ( toShort, fromShort )
import Data.List ( intercalate, isPrefixOf, nub )
import qualified Data.ByteString.Char8 as C
import qualified Data.Map.Strict as M
import qualified Data.Set as S

import Data.Aeson ( decode )

import Control.Monad ( unless, when )
import Control.Monad.IO.Class ( liftIO )

import LLVM.Context ( withContext )

import qualified LLVM.Module as LM
import qualified LLVM.AST as A hiding ( metadata
                                      , callingConvention
                                      , alignment
                                      , returnAttributes
                                      , functionAttributes
                                      , type' )
import qualified LLVM.AST.Global as A
import qualified LLVM.AST.Constant as A hiding ( type' )

import Z3.Monad

import ProofM
import InitialEnv
import CLEMap
import Partition

import ProveEquiv

import Debug.Trace (trace)

----------------------------------------------------------------------
-- | Convert a string into a name used by the LLVM AST
llvmName :: String -> A.Name
llvmName = A.Name . toShort . BS.fromString

showIN :: A.Instruction -> String
showIN _ = "instruction"

showTERM :: A.Terminator -> String
showTERM = show

showBB :: A.BasicBlock -> String
showBB (A.BasicBlock name instructions terminator) =
  showName name ++ "\n    " ++
  intercalate "\n    "  (map (showNamed showIN) instructions) ++ "\n    " ++
  showNamed showTERM terminator

shortGlobal :: A.Global -> String
shortGlobal A.GlobalVariable {..} = "var " ++ show name
shortGlobal A.GlobalAlias {..} = "alias " ++ show name
shortGlobal A.Function {..} = showName name ++ "()"

dumpGlobal :: A.Global -> String
dumpGlobal A.GlobalVariable {..} = "Global Variable " ++ show name
dumpGlobal A.GlobalAlias {..} = "Global Alias " ++ show name
dumpGlobal A.Function {..} = unlines $ (showName name ++ "()") :
                                           map showBB basicBlocks

dumpDefinition :: A.Definition -> String
dumpDefinition (A.GlobalDefinition g) = dumpGlobal g
dumpDefinition A.TypeDefinition{} = "Type Definition"
dumpDefinition A.MetadataNodeDefinition{} = "Metadata Node Definition"
dumpDefinition A.NamedMetadataDefinition{} = "Named Metadata Node Definition"
dumpDefinition A.ModuleInlineAssembly{} = "Inline Assembly Definition"
dumpDefinition A.FunctionAttributes{} = "Function Attributes"
dumpDefinition A.COMDAT{} = "COMDAT"

dumpModule :: A.Module -> String
dumpModule A.Module {..} =
  show moduleName ++ "\n" ++
  show moduleSourceFileName ++ "\n" ++
  show moduleDataLayout ++ "\n" ++
  show moduleTargetTriple ++ "\n" ++
  concatMap (\x -> dumpDefinition x ++ "\n") moduleDefinitions

showBBIso :: NameMap -> String
showBBIso m = unwords $
  map (\(k,v) -> showName k ++ "-" ++ showName v) (M.assocs m)

----------------------------------------------------------------------
-- | Read a .ll file to produce an LLVM.AST.Module
readLL :: String -> IO A.Module
readLL filename = do
  str <- readFile filename
  withContext $ \ctx ->
    LM.withModuleFromLLVMAssembly ctx str $ \llvmMod ->
      LM.moduleAST llvmMod

readCLE :: String -> IO CLEMap
readCLE f = do
  h <- openFile f ReadMode
  contents <- hGetContents h
  let cle = (decode $ BSL.fromString contents) :: Maybe CLEMap
  case cle of
    Nothing   -> die ["Error: " ++ f ++ " is not a CLEmap json"]
    Just cle' -> return cle'

-- | Locate a function by name in the given module
findFunction :: A.Module -> A.Name -> Maybe A.Global
findFunction A.Module{..} funcName = case mapMaybe ffh moduleDefinitions of
  f:_ -> Just f
  []  -> Nothing
  where
    ffh (A.GlobalDefinition g@A.Function {name = n}) | n == funcName = Just g
    ffh _ = Nothing

findGlobals :: A.Module -> NameReferenceMap
findGlobals A.Module{..} = M.fromList $ concatMap nameGlobals moduleDefinitions
  where
    nameGlobals (A.GlobalDefinition g) = [(A.name g, g)]
    nameGlobals _ = []

combineGlobals :: A.Module -> A.Module -> A.Name -> NameReferenceMap
combineGlobals l r entry = M.unionWithKey dupHandler lGlobals rGlobals
  where
    lGlobals = M.delete entry $ findGlobals l
    rGlobals = M.delete entry $ findGlobals r
    dupHandler n g1 _ = trace (";;; WARNING: duplicate A.Global: " ++ show n) g1
    -- FIXME

-- FIXME: function calls can potentially come from other places besides
-- Call instructions, and we should replace RPC calls there too.
replRpc :: NameReferenceMap -> NameReferenceMap
replRpc = M.map replRpcFunc
  where
    replRpcFunc f@A.Function{} = f { A.basicBlocks = map
      (\(A.BasicBlock n i t) -> A.BasicBlock n (map replRpcNamed i) t)
      (A.basicBlocks f)
    }
    replRpcFunc g = g

    replRpcNamed (n A.:= a) = n A.:= replRpcInstr a
    replRpcNamed (A.Do a)   = A.Do (replRpcInstr a)

    replRpcInstr i@A.Call{} = i { A.function = replRpcRef $ A.function i }
    replRpcInstr i = i

    replRpcRef (Right (A.ConstantOperand (A.GlobalReference t n))) =
      Right (A.ConstantOperand (A.GlobalReference t' n'))
      where
        n' = case n of
               A.Name bytes
                 | isPrefixOf "_rpc_" s -> A.Name $ toShort $ C.pack $ drop 5 s
                 | otherwise -> n
                 where s = C.unpack $ fromShort bytes
               _ -> n
        t' = if n' == n then t
             else case t of
                    A.PointerType (A.FunctionType r a _) addr ->
                      A.PointerType (A.FunctionType r a False) addr
                    _ -> error "A.GlobalReference has unexpected type"
    replRpcRef r = r

rmDbgCalls :: NameReferenceMap -> NameReferenceMap
rmDbgCalls = M.map rmDbgCalls'
  where
    dbg = [llvmName "llvm.var.annotation", llvmName "printf"]

    rmDbgCalls' f@A.Function{} = f { A.basicBlocks = map
      (\(A.BasicBlock n i t) -> A.BasicBlock n (filter (not . isDbgCall) i) t)
      (A.basicBlocks f)
    }
    rmDbgCalls' g = g

    isDbgCall (_ A.:= a) = isDbgCall' a
    isDbgCall (A.Do a)   = isDbgCall' a

    isDbgCall' (A.Call _ _ _ ref _ _ _) = isDbgRef ref
    isDbgCall' _ = False

    isDbgRef (Right (A.ConstantOperand (A.GlobalReference _ n))) = n `elem` dbg
    isDbgRef _ = False

rmRpcInit :: A.Global -> Maybe A.Global
rmRpcInit f@A.Function{} = if new == f then Nothing else Just new
  where
    rpci = llvmName "_master_rpc_init"
    new = f { A.basicBlocks = map
      (\(A.BasicBlock n i t) -> A.BasicBlock n (rmRpcInit' i) t)
      (A.basicBlocks f)
    }
    rmRpcInit' = filter (not . isRpcInitCall)

    isRpcInitCall (_ A.:= a) = isRpcInitCall' a
    isRpcInitCall (A.Do a)   = isRpcInitCall' a

    isRpcInitCall' (A.Call _ _ _ ref _ _ _) = isRpcInitRef ref
    isRpcInitCall' _ = False

    isRpcInitRef (Right (A.ConstantOperand (A.GlobalReference _ n))) = n == rpci
    isRpcInitRef _ = False

rmRpcInit _ = error "rmRpcInit: Expecting A.Function"

----------------------------------------------------------------------
die :: [String] -> IO a
die errs = do
  mapM_ (hPutStr stderr) errs
  putStrLn "\n"
  usageMessage
  exitFailure

unlessJustFail :: Maybe a -> String -> IO a
unlessJustFail p s = case p of Just x -> return x
                               Nothing -> die [s]

comment :: String -> IO ()
comment s = putStrLn $ ";;; " ++ s

----------------------------------------------------------------------
data Options = Options { entryFunction :: String
                       , displayFunctions :: Bool
                       , logFile :: Maybe String
                       }

defaultOptions :: Options
defaultOptions = Options { entryFunction = "main"
                         , displayFunctions = False
                         , logFile = Nothing
                         }

optionDescriptions :: [ OptDescr (Options -> IO Options) ]
optionDescriptions =
    [ Option "h" ["help"]
        (NoArg (\_ -> usageMessage >> exitSuccess ))
        "Print help"
    , Option "f" ["entry-function"]
        (ReqArg (\fn o -> return o { entryFunction = fn }) "<function-name>")
        "Specify the entry function (default: main)"
    , Option "d" ["display"]
        (NoArg (\o -> return o { displayFunctions = True }))
        "Dump information about the entry functions"
    , Option "l" ["logfile"]
        (ReqArg (\fn o -> return o { logFile = Just fn }) "<log-file.smt2>")
        "Write the proof log to the given file after solving"
    ]

usageMessage :: IO ()
usageMessage = do prg <- getProgName
                  let fs = "orange.ll purple.ll ref.ll"
                      fs' = fs ++ " orange.json purple.json ref.json"
                      header = "Usage: " ++ prg ++ " [options] " ++ fs'
                  hPutStr stderr (usageInfo header optionDescriptions)

main :: IO ()
main = do
  -- Parse and validate args
  comment "Parsing arguments..."
  args <- getArgs
  let (actions, filenames, errors) = getOpt RequireOrder optionDescriptions args
  options <- foldl (>>=) (return defaultOptions) actions
  unless (null errors) $ die errors
  when (null filenames) $ die ["Error: no source files"]
  unless (length filenames == 6) $ die ["Error: expecting six filenames"]
  let Options {..} = options

  -- Parse and validate CLE maps
  comment "Valdating CLE maps..."
  cmaps@[leftCle, rightCle, refCle] <- mapM readCLE $ drop 3 filenames
  let checkCmap (cmap, name) = case clemapValidate cmap of
        Right cs -> do
          comment $ name ++ " is a well-formed CLE map."
          return cs
        Left e  -> die ["Error: " ++ name ++ ": " ++ e ++ "."]
      checkAgreement l r rf = case clemapsAgree l r rf of
        Nothing -> do
          comment "Refactored CLE map is a subset of the union of partitioned CLE maps."
          comment "Tags in the partitioned CLE maps are consistent."
        Just e -> die ["Error: " ++ e ++ "."]
  cs <- mapM checkCmap $ zip cmaps $ drop 3 filenames
  let colorSet = nub $ concat cs
  checkAgreement leftCle rightCle refCle

  -- Parse and valdiate LLVM files
  comment "Parsing LLVM files..."
  [leftLl, rightLl, refLl] <- mapM readLL $ take 3 filenames
  let entryName = llvmName entryFunction
      leftEntry = findFunction leftLl entryName
      rightEntry = findFunction rightLl entryName
      (leftOrRightEntry, startEnclave) = case (leftEntry, rightEntry) of
        (Nothing, Nothing) -> (Nothing, fst)
        (Just l, Nothing)  -> (rmRpcInit l, fst)
        (Nothing, Just r)  -> (rmRpcInit r, snd)
        (Just l, Just r)   -> case (rmRpcInit l, rmRpcInit r) of
                                (Nothing, Nothing) -> (Nothing, fst)
                                (Just l', Nothing) -> (Just l', fst)
                                (Nothing, Just r') -> (Just r', snd)
                                _ -> error "Duplicate _master_rpc_init()"

  partitioned <- unlessJustFail leftOrRightEntry $
    "Error: no fxn " ++ entryFunction ++ " with _master_rpc_init() in partition"

  refactored <- unlessJustFail (findFunction refLl entryName) $
    "Error: no fxn " ++ entryFunction ++ " in refactored"

  when displayFunctions $ do putStrLn (dumpGlobal partitioned)
                             putStrLn (dumpGlobal refactored)
                             exitSuccess

  -- Make sure the refactored file can be partitioned
  partition <- runProvePartitionable refLl refCle colorSet
  case partition of
    Just partition' -> do
      comment "Refactored LLVM can be partitioned by:"
      let toStr (A.Name b, s) = (C.unpack $ fromShort b) ++ " -> " ++ s
      mapM_ (comment . toStr) partition'
    _ -> die ["Error: refactored LLVM cannot be partitioned."]

  -- Construct intial proof state
  -- TODO: During ProveEquiv operation, globals pass their Ids to their
  -- instructions and increment them, so that the proveEquiv for a node X has
  -- access to its own Id.
  -- TODO: Globals and instructions check for an annotation associated with
  -- their Id during ProveEquiv. Annotations must be equal.
  let gc = S.fromList [S.fromList $ map A.name [partitioned, refactored]]
      prepare = rmDbgCalls . replRpc . findGlobals
      getAnnotations gids gs = findLocalAnnotations  gids gs
                            ++ findGlobalAnnotations gids gs
      lGlobals   = prepare leftLl
      rGlobals   = prepare rightLl
      refGlobals = prepare refLl
      lGids      = mkGlobalsIds $ M.elems lGlobals
      rGids      = mkGlobalsIds $ M.elems rGlobals
      refGids    = mkGlobalsIds $ M.elems refGlobals
      lAnnos     = getAnnotations lGids $ M.elems lGlobals
      rAnnos     = getAnnotations rGids $ M.elems rGlobals
      refAnnos'  = getAnnotations refGids $ M.elems refGlobals
      stateG = initialState { partGlobals = (lGlobals, rGlobals)
                            , partAnnos = ((lGids, lAnnos), (rGids, rAnnos))
                            , refGlobals = refGlobals
                            , refAnnos = (refGids, refAnnos')
                            , toEnclave = startEnclave
                            , congruence = gc
                            }
      environmentOptions = stdOpts +? opt "auto-config" False
      -- ^ See https://hackage.haskell.org/package/z3-408.2/docs/Z3-Opts.html

  -- Begin proof
  (_, _, proofLog) <-
    runProofEnvironment environmentOptions stateG initialEnv $ do
      liftIO $ comment "Encoding constraints..."
      pushMatching
      r <- proveEquiv partitioned refactored
      assert =<< mkNot (z3equiv r)
      logSMTLIB =<< solverToString
      liftIO $ comment "Solving..."
      z3Result <- check
      case z3Result of
        Unsat -> do logString "Unsatisfiable"
                    liftIO $ comment "Valid (unsat)"
        _     -> do logString $ show z3Result
                    liftIO $ comment $ "Invalid (" ++ show z3Result ++ ")"
      return r
  case logFile of
    Just name -> writeFile name $ unlines $ map show proofLog
    _ -> return ()
  comment "Done"
