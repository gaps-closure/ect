{-# LANGUAGE RecordWildCards #-}

{-

LD_LIBRARY_PATH=z3-4.8.8-x64-ubuntu-16.04/bin stack build

stack run -- examples/example1/example1-refactored-9.ll examples/example1/example1-orange-9.ll examples/example1/example1-purple-9.ll


LD_LIBRARY_PATH=z3-4.8.8-x64-ubuntu-16.04/bin stack ghci
:set -XTemplateHaskell
-}

module Main where

import System.Environment (getArgs, getProgName)
import System.Console.GetOpt (getOpt, usageInfo, OptDescr(..),
                              ArgDescr(NoArg, ReqArg), ArgOrder(RequireOrder))
import System.IO ( hPutStrLn, hPutStr, stderr )
import System.Exit( exitSuccess, exitFailure )

import Data.Maybe
import Data.ByteString.UTF8 (fromString)
import Data.ByteString.Short (toShort, fromShort)
import Data.List (intercalate, isPrefixOf)
import qualified Data.ByteString.Char8 as C
import qualified Data.Map.Strict as M
import qualified Data.Set as S

import Control.Monad ( unless, when )
import Control.Monad.IO.Class ( liftIO )

import LLVM.Context (withContext)

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

import ProveEquiv

import Debug.Trace (trace)

----------------------------------------------------------------------
-- | Convert a string into a name used by the LLVM AST
llvmName :: String -> A.Name
llvmName = A.Name . toShort . fromString

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
combineGlobals l r entry = M.unionWithKey dupRefHandler lGlobals rGlobals
  where
    lGlobals = M.delete entry $ findGlobals l
    rGlobals = M.delete entry $ findGlobals r
    dupRefHandler n g1 _ = trace ("Warning: duplicate A.Global: " ++ show n) g1 -- FIXME

-- FIXME: function calls can potentially come from other places besides,
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
                 | "_rpc_" `isPrefixOf` s -> A.Name $ toShort $ C.pack $ drop 5 s
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
unlessJustFail :: Maybe a -> String -> IO a
unlessJustFail p s = case p of Just x -> return x
                               Nothing -> do hPutStrLn stderr s
                                             usageMessage
                                             exitFailure

----------------------------------------------------------------------
data Options = Options { entryFunction :: String
                       , displayFunctions :: Bool
                       }

defaultOptions :: Options
defaultOptions = Options { entryFunction = "main"
                         , displayFunctions = False
                         }

optionDescriptions :: [ OptDescr (Options -> IO Options) ]
optionDescriptions =
    [ Option "h" ["help"]
        (NoArg (\_ -> usageMessage >> exitSuccess ))
        "Print help"
    , Option "f" ["entry-function"]
        (ReqArg (\fn o -> return o { entryFunction = fn })
          "<function-name>")
        "Specify the entry function (default: main)"
    , Option "d" ["display"]
        (NoArg (\o -> return o { displayFunctions = True }))
        "Dump information about the entry functions"
    ]

usageMessage :: IO ()
usageMessage = do prg <- getProgName
                  let header = "Usage: " ++ prg ++ " [options] file..."
                  hPutStr stderr (usageInfo header optionDescriptions)

main :: IO ()
main = do
  putStrLn ";;; Parsing LLVM files..."
  args <- getArgs
  let (actions, filenames, errors) =
        getOpt RequireOrder optionDescriptions args
  options <- foldl (>>=) (return defaultOptions) actions
  unless (null errors) $ do mapM_ (hPutStr stderr) errors
                            usageMessage
                            exitFailure
  when (null filenames) $ do hPutStrLn stderr "Error: no source files"
                             usageMessage
                             exitFailure

  unless (length filenames == 3) $ do hPutStrLn stderr
                                       "Error: expecting three filenames"
                                      usageMessage
                                      exitFailure

  let Options {..} = options  -- Bring options into scope

  [leftLl, rightLl, refLl] <- mapM readLL filenames


  let entryName = llvmName entryFunction
      leftEntry = findFunction leftLl entryName
      rightEntry = findFunction rightLl entryName
      leftOrRightEntry = case (leftEntry, rightEntry) of
        (Nothing, Nothing) -> Nothing
        (Just l, Nothing)  -> rmRpcInit l
        (Nothing, Just r)  -> rmRpcInit r
        (Just l, Just r)   -> case (rmRpcInit l, rmRpcInit r) of
                                (Nothing, Nothing) -> Nothing
                                (Just l', Nothing) -> Just l'
                                (Nothing, Just r') -> Just r'
                                _ -> error "Duplicate _master_rpc_init()"

  partitioned <- unlessJustFail leftOrRightEntry $
    "Error: no fxn " ++ entryFunction ++ " with _master_rpc_init() in partition"

  refactored <- unlessJustFail (findFunction refLl entryName) $
    "Error: no fxn " ++ entryFunction ++ " in refactored"

  when displayFunctions $ do putStrLn (dumpGlobal partitioned)
                             putStrLn (dumpGlobal refactored)
                             exitSuccess

  let gc = S.fromList [S.fromList $ map A.name [partitioned, refactored]]
      lrGlobals  = combineGlobals leftLl rightLl entryName
      lrGlobals' = replRpc $ M.insert entryName partitioned lrGlobals
      stateG = initialState { leftGlobals = rmDbgCalls lrGlobals'
                            , rightGlobals = rmDbgCalls $ findGlobals refLl
                            , congruence = gc
                            }

  -- Options to pass into the Z3 proof environment
  -- See https://hackage.haskell.org/package/z3-408.2/docs/Z3-Opts.html
  let environmentOptions = stdOpts +? opt "auto-config" False
  
  (_, _, proofLog) <-
    runProofEnvironment environmentOptions stateG initialEnv $ do
      liftIO $ putStrLn ";;; Encoding constraints..."
      pushMatching
      r <- proveEquiv partitioned refactored
      assert =<< mkNot (z3equiv r)
      logSMTLIB =<< solverToString
      liftIO $ putStrLn ";;; Solving..."
      z3Result <- check
      case z3Result of
        Unsat -> logString "Unsatisfiable"
        _     -> logString $ show z3Result
      return r
  mapM_ print proofLog
