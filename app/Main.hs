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
import Data.ByteString.Short (toShort)
import Data.List (intercalate)
import qualified Data.Map.Strict as M
import qualified Data.Set as S


import Control.Monad ( unless, when )
import Control.Monad.IO.Class ( liftIO )

import LLVM.Context (withContext)

import qualified LLVM.Module as M
import qualified LLVM.AST as A hiding ( metadata, callingConvention, alignment, returnAttributes, functionAttributes )
import qualified LLVM.AST.Global as A

import Z3.Monad

import ProofM
import InitialEnv

import ProveEquiv
----------------------------------------------------------------------

-- | Locate a function by name in the given module
findFunction :: A.Module -> A.Name -> Maybe A.Global
findFunction A.Module{..} funcName = case mapMaybe ffh moduleDefinitions of
  f:_ -> Just f
  []  -> Nothing
  where
    ffh (A.GlobalDefinition g@(A.Function {name = n})) | n == funcName = Just g
    ffh _ = Nothing

findGlobals :: A.Module -> NameReferenceMap
findGlobals A.Module{..} = M.fromList $ concatMap nameGlobals moduleDefinitions
  where
    nameGlobals (A.GlobalDefinition g) = [(A.name g, g)]
    nameGlobals _ = []

-- | Convert a string into a name used by the LLVM AST
llvmName :: String -> A.Name
llvmName = A.Name . toShort . fromString

showIN :: A.Instruction -> String
showIN _ = "instruction"

showTERM :: A.Terminator -> String
showTERM t = show t

showBB :: A.BasicBlock -> String
showBB (A.BasicBlock name instructions terminator) =
  showName name ++ "\n    " ++
  (intercalate "\n    "  $ map (showNamed showIN) instructions) ++ "\n    " ++
  showNamed showTERM terminator

shortGlobal :: A.Global -> String
shortGlobal (A.GlobalVariable {..}) = "var " ++ show name
shortGlobal (A.GlobalAlias {..}) = "alias " ++ show name
shortGlobal (A.Function {..}) = showName name ++ "()"


dumpGlobal :: A.Global -> String
dumpGlobal (A.GlobalVariable {..}) = "Global Variable " ++ show name
dumpGlobal (A.GlobalAlias {..}) = "Global Alias " ++ show name
dumpGlobal (A.Function {..}) = unlines $ (showName name ++ "()") :
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
showBBIso m = intercalate " " $
  map (\(k,v) -> showName k ++ "-" ++ showName v) (M.assocs m)

----------------------------------------------------------------------

-- | Read a .ll file to produce an LLVM.AST.Module
readLL :: String -> IO A.Module
readLL filename = do
  str <- readFile filename
  withContext $ \ctx ->
    M.withModuleFromLLVMAssembly ctx str $ \llvmMod ->
      M.moduleAST llvmMod

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
  putStrLn "Encoding constraints..."
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

  [leftLl, rightLl, _] <- mapM readLL filenames -- FIXME: do something with third
  leftEntry <- unlessJustFail
                 (findFunction leftLl (llvmName entryFunction)) $
                   "Error: no function " ++ entryFunction ++ " found in left"

  rightEntry <- unlessJustFail
                 (findFunction rightLl (llvmName entryFunction)) $
                   "Error: no function " ++ entryFunction ++ " found in right"

  when displayFunctions $ do putStrLn (dumpGlobal leftEntry)
                             putStrLn (dumpGlobal rightEntry)
                             exitSuccess

  let gc = S.fromList [S.fromList $ map A.name [leftEntry, rightEntry]]
      stateWithNameRefs = initialState { leftGlobals = findGlobals leftLl
                                       , rightGlobals = findGlobals rightLl
                                       , congruence = gc
                                       }
  (_, _, proofLog) <-
    runProofEnvironment stateWithNameRefs initialEnv $ do
      r <- proveEquiv leftEntry rightEntry
      assert =<< mkNot (z3equiv r)
      -- assert (z3equiv r)
      logSMTLIB =<< solverToString
      liftIO $ putStrLn "Solving..."
      z3Result <- check
      case z3Result of
        Unsat -> logString "Unsatisfiable"
        _ -> logString $ show z3Result

      return r

  -- print rule
  mapM_ print proofLog



{-
  (rule', _, proofLog') <- runProofEnvironment initialState initialEnv $ do
                              e <- proveEquiv A.VoidType A.VoidType
                              _ <- proveEquiv (A.IntegerType 32) (A.IntegerType 32)
                              _ <- proveEquiv (A.Default) (A.Default)
                              _ <- proveEquiv (A.LinkOnce) (A.LinkOnce)
                              _ <- proveEquiv (Just A.Import) (Just A.Import)
                              _ <- proveEquiv True True
                              logString "Complete"
                              return e

  --  print rule'
  --  print proofLog'
  mapM_ print proofLog'
  exitSuccess

-}
