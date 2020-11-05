{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE RecordWildCards #-}

module Main where

import System.Environment (getArgs, getProgName)
import System.Console.GetOpt (getOpt, usageInfo, OptDescr(..),
                              ArgDescr(NoArg, ReqArg), ArgOrder(RequireOrder))
import System.IO ( hPutStrLn, hPutStr, stderr )
import System.Exit( exitSuccess, exitFailure )

import qualified Data.Traversable as T
import Data.Maybe
import Data.ByteString.UTF8 (fromString,toString)
import Data.ByteString.Short (ShortByteString, toShort,fromShort)
import Data.Maybe (mapMaybe)
import Data.List (intercalate)
import Data.Word ( Word32 )
import qualified Data.Map.Strict as M
import qualified Data.Set as S


import Control.Monad ( join, when, unless )
import Control.Monad.IO.Class ( MonadIO )
import Control.Monad.Trans.Writer.CPS ( WriterT, runWriterT )
import Control.Monad.Trans.State.Strict ( StateT(..), runStateT )
import Control.Monad.Trans.Class ( lift )


import LLVM.Context (withContext)

import qualified LLVM.Module as M
import qualified LLVM.AST as A
import qualified LLVM.AST.Linkage as A
import qualified LLVM.AST.DLL as A
import qualified LLVM.AST.CallingConvention as A
import qualified LLVM.AST.FunctionAttribute as A
import qualified LLVM.AST.ParameterAttribute as A
import qualified LLVM.AST.IntegerPredicate as A
import qualified LLVM.AST.Constant as C
import qualified LLVM.AST.Global as G



import Z3.Monad

----------------------------------------------------------------------

type ProofLog = [String] -- FIXME

data ProofState = ProofState {
    nextRuleId :: Int
  }

newtype ProofM a = ProofM {
    _unProof2 :: StateT ProofState (WriterT ProofLog Z3) a }
  deriving (Functor, Applicative, Monad, MonadIO)

runProofM :: ProofState -> ProofM a -> IO (a, ProofState, ProofLog)
runProofM initial (ProofM m) = do
  ((x, st), l) <- evalZ3 (runWriterT (runStateT m initial))
  return (x, st, l)

instance MonadZ3 ProofM where
  getSolver = ProofM $ lift $ lift getSolver
  getContext = ProofM $ lift $ lift getContext



----------------------------------------------------------------------




buildModel :: ProofM (AST, AST, AST, AST)
buildModel = do
  q1 <- mkFreshIntVar "q1"
  q2 <- mkFreshIntVar "q2"
  q3 <- mkFreshIntVar "q3"
  q4 <- mkFreshIntVar "q4"
  _1 <- mkInteger 1
  _4 <- mkInteger 4
  -- the ith-queen is in the ith-row.
  -- qi is the column of the ith-queen
  assert =<< mkAnd =<< T.sequence
    [ mkLe _1 q1, mkLe q1 _4  -- 1 <= q1 <= 4
    , mkLe _1 q2, mkLe q2 _4
    , mkLe _1 q3, mkLe q3 _4
    , mkLe _1 q4, mkLe q4 _4
    ]
  -- different columns
  assert =<< mkDistinct [q1,q2,q3,q4]
  -- avoid diagonal attacks
  assert =<< mkNot =<< mkOr =<< T.sequence
    [ diagonal 1 q1 q2  -- diagonal line of attack between q1 and q2
    , diagonal 2 q1 q3
    , diagonal 3 q1 q4
    , diagonal 1 q2 q3
    , diagonal 2 q2 q4
    , diagonal 1 q3 q4
    ]

  return (q1, q2, q3, q4)
    
  where mkAbs x = do
          _0 <- mkInteger 0
          join $ mkIte <$> mkLe _0 x <*> pure x <*> mkUnaryMinus x
        diagonal :: Integer -> AST -> AST -> ProofM AST
        diagonal d c c' =
          join $ mkEq <$> (mkAbs =<< mkSub [c',c]) <*> (mkInteger d)

----------------------------------------------------------------------

-- | Locate a function by name in the given module
findFunction :: A.Module -> A.Name -> Maybe A.Global
findFunction A.Module{..} funcName = case mapMaybe ffh moduleDefinitions of
  f:_ -> Just f
  []  -> Nothing
  where
    ffh (A.GlobalDefinition g@(A.Function {..})) | name == funcName = Just g
    ffh _ = Nothing

-- | Convert a string into a name used by the LLVM AST
llvmName :: String -> A.Name
llvmName = A.Name . toShort . fromString

showName :: A.Name -> String
showName (A.UnName x) = show x
showName (A.Name s) = toString $ fromShort s

showNamed :: (a -> String) -> A.Named a -> String
showNamed s (nm A.:= x) = "%" ++ showName nm ++ " = " ++ s x
showNamed s (A.Do x) = s x

-- | Return the object that may be named
unName :: A.Named a -> a
unName (A.Do x) = x
unName (_ A.:= x) = x

showIN :: A.Instruction -> String
showIN _ = "instruction"

showTERM :: A.Terminator -> String
showTERM t = show t

showBB :: G.BasicBlock -> String
showBB (G.BasicBlock name instructions terminator) =
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

----------------------------------------------------------------------

-- | Read a .ll file to produce an LLVM.AST.Module
readLL :: String -> IO A.Module
readLL filename = do
  str <- readFile filename
  withContext $ \ctx ->
    M.withModuleFromLLVMAssembly ctx str $ \llvmMod ->
      M.moduleAST llvmMod

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
  let leftEntry = findFunction leftLl (llvmName entryFunction)
      rightEntry = findFunction rightLl (llvmName entryFunction)

  leftEntry' <- case leftEntry of
    Nothing -> do hPutStrLn stderr $
                     "Error: no function " ++ entryFunction ++
                     " found in left"
                  usageMessage
                  exitFailure
    Just fn -> return fn

  rightEntry' <- case rightEntry of
    Nothing -> do hPutStrLn stderr $
                     "Error: no function " ++ entryFunction ++
                     " found in right"
                  usageMessage
                  exitFailure
    Just fn -> return fn

  when displayFunctions $ do putStrLn (dumpGlobal leftEntry')
                             putStrLn (dumpGlobal rightEntry')
                             exitSuccess

  putStrLn "FIXME"
--  putStrLn $ showProofM $
--    runEitherState (proveEquivMaybe leftEntry rightEntry) emptyEnv


{-
main :: IO ()
main = do
         [filename] <- getArgs
         llfile <- readLL filename
         print llfile
         (s, _, _) <- runProofM (ProofState 0) $ do _ <- buildModel
                                                    solverToString
         putStrLn "; Put the following in a file queens.smt2"
         putStrLn "; And run with z3 queens.smt2"
         putStrLn s
         putStrLn "(check-sat)\n(get-model)\n; Cut here"
         (solution, _, _) <- runProofM (ProofState 0) $
           do (q1, q2, q3, q4) <- buildModel
              fmap snd $ withModel $ \m ->
                catMaybes <$> mapM (evalInt m) [q1,q2,q3,q4]
         case solution of
             Nothing  -> error "No solution found."
             Just sol -> putStr "Solution: " >> print sol
-}



