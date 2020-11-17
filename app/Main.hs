{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE RecordWildCards #-}

-- LD_LIBRARY_PATH=z3-4.8.8-x64-ubuntu-16.04/bin stack ghci


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
--import Data.Maybe (mapMaybe)
import Data.List (intercalate)
import Data.Word ( Word32 )
import qualified Data.Map.Strict as M
import qualified Data.Set as S


import Control.Monad ( when, unless, liftM )
import Control.Monad.IO.Class ( MonadIO, liftIO )
import Control.Monad.Trans.Writer.CPS ( WriterT, runWriterT )
import Control.Monad.Trans.State.Strict ( StateT(..), runStateT, evalStateT, get )
import Control.Monad.Trans.Reader ( ReaderT, runReaderT, withReaderT, asks )
import Control.Monad.Trans.Class ( lift )
import Control.Monad.Trans.Maybe


import LLVM.Context (withContext)

import qualified LLVM.Module as M
import qualified LLVM.AST as A
import qualified LLVM.AST.Global as A
import qualified LLVM.AST.Linkage as A
import qualified LLVM.AST.DLL as A
import qualified LLVM.AST.CallingConvention as A
import qualified LLVM.AST.FunctionAttribute as A
import qualified LLVM.AST.ParameterAttribute as A
import qualified LLVM.AST.IntegerPredicate as A
import qualified LLVM.AST.Constant as C



import Z3.Monad

----------------------------------------------------------------------

-- | All the LLVMobject types we will consider
data LLVMObj = Global A.Global
             | Linkage A.Linkage
             | StorageClass A.StorageClass
             | CallingConvention A.CallingConvention
             | ParameterAttribute A.ParameterAttribute
             | Type A.Type
             | Parameter A.Parameter
             | FunctionAttribute A.FunctionAttribute
             | GroupID A.GroupID
             | EitherFuncAttr (Either A.GroupID A.FunctionAttribute)
             | Constant C.Constant
             | BasicBlock A.BasicBlock
             | BasicBlocks [A.BasicBlock]
             | Instruction A.Instruction
             | Terminator A.Terminator
             | Operand A.Operand
             | Atomicity (A.SynchronizationScope, A.MemoryOrdering)
             | SynchronizationScope A.SynchronizationScope
             | MemoryOrdering A.MemoryOrdering
             | IntegerPredicate A.IntegerPredicate
             | FastMathFlags A.FastMathFlags
             | LNothing
             | LBool Bool
             | LWord32 Word32
             | LSBS ShortByteString
             | LList [LLVMObj]
             | Named A.Name LLVMObj
             deriving Eq

instance Show LLVMObj where
  show (Global g) = shortGlobal g
  show (Linkage _) = "Linkage"
  show (StorageClass _) = "StorageClass"
  show (CallingConvention _) = "CallingConvention"
  show (ParameterAttribute _) = "ParameterAttribute"
  show (Type _) = "Type"
  show (Parameter _) = "Parameter"
  show (FunctionAttribute _) = "FunctionAttribute"
  show (GroupID _) = "GroupID"
  show (EitherFuncAttr _) = "EitherFuncAttr"
  show (Constant _) = "Constant"
  show (BasicBlock (A.BasicBlock n _ _)) = "BasicBlock " ++ showName n
  show (BasicBlocks _) = "BasicBlocks"
  show (Instruction _) = "Instruction"
  show (Terminator _) = "Terminator"
  show (Operand _) = "Operand"
  show (Atomicity (_,_)) = "Atomicity"
  show (SynchronizationScope _) = "SynchronizationScope"
  show (MemoryOrdering _) = "MemoryOrdering"
  show (IntegerPredicate _) = "IntegerPredicate"
  show (FastMathFlags _) = "FastMathFlags"
  show (Named _ o) = "Named " ++ show o
  show LNothing = "Nothing"
  show (LBool b) = show b
  show (LWord32 w) = show w
  show (LSBS s) = show s
  show (LList _) = "List"



-- | A proposition: something that's either true or false
data Proposition = Equiv LLVMObj LLVMObj
                 | BBIso [A.BasicBlock] [A.BasicBlock] NameMap
  deriving Eq

-- Critial thing: for the conclusion, need to know the Z3 constants that
-- the proposition is constraining.  Add fields to Equiv?

-- Also need a Z3 AST that represents the assertion of the proposition
--
-- develop-prop33 branch

-- See his checkIRule function: check a particular proposition by running
-- Z3
-- Assume all the propositions are true
-- assert that not (premises => conclusion) is unsatisfiable

-- WriterT should be accumulating the individual steps (i.e., without
-- push/pop)

instance Show Proposition where
  show (Equiv a b) = show a ++ "=" ++ show b
  show (BBIso _ _ i) = "isomorphism " ++ showBBIso i




newtype RuleID = RuleID Int

instance Show RuleID where
  show (RuleID i) = "r" ++ show i


-- | An inference rule: a step in a proof tree
data IRule = IRule { premises :: [IRule]
                   , conclusion :: Proposition
                   , ruleId :: RuleID
                   , comment :: String
                   }


instance Show IRule where
  show IRule{ premises = p, conclusion = c, ruleId = rid, comment = cmt} =
      unlines $
        (map (indentCenter width) (premises' ++ [separator, conclusion'])) ++
         ["", "Proof. " ++ cmt ++ " QED"]
    where
      premises' =
        map (\IRule{..} -> show conclusion ++ " [" ++ show ruleId ++ "]") p
      width = maximum $ map length (conclusion' : premises')
      separator = replicate width '-' ++ " [" ++ show rid ++ "]"
      conclusion' = show c
      indentCenter w s = replicate ((w - length s) `div` 2) ' ' ++ s


-- | A mapping from local names in one function, etc. to local names in another
type NameMap = M.Map A.Name A.Name





type ProofLog = [IRule]

showLog :: ProofLog -> String
showLog rules = unlines $ map show rules


data ProofState = ProofState
  { nextRuleId :: RuleID      -- | Next inference rule
  , matching :: NameMap       -- | For name isomorphisms
  , inverse :: NameMap        -- | Inverse of matching
  , visiting :: S.Set A.Name  -- | For DFS algorithms    
  }

initialState :: ProofState
initialState = ProofState { nextRuleId = RuleID 1
                          , matching = M.empty
                          , inverse = M.empty
                          , visiting = S.empty
                          }


----------------------------------------------------------------------
--
-- The Proof Environment: Z3 definitions that can be used in proof steps
-- These are collected here and threaded through the Proof Monad via a ReaderT
--
-- Access these with "fromEnv"

data ProofEnv = ProofEnv
  { s_Int :: Sort -- Z3 sort for Int
  , s_Bool :: Sort -- Z3 sort for Bool

  , s_Type :: Sort               -- Z3 sort for Type
  , e_Type :: FuncDecl           -- Z3 equivalence function for Type
  , c_VoidType :: FuncDecl       -- Z3 constructor for VoidType
  , c_IntegerType :: FuncDecl    -- Z3 constructor for IntegerType
  }

-- | Build an equivalence checking function for a given Z3 type
--   Needs the bool sort
mkEquivFunc :: Sort -> Sort -> String -> ProofM FuncDecl
mkEquivFunc bool typ name = do
  equivType <- mkFreshFuncDecl ("equiv-" ++ name) [typ, typ] bool

  x  <- mkFreshConst "x" typ
  y  <- mkFreshConst "y" typ
  qx <- toApp x
  qy <- toApp y
  builtinEq <- mkEq x y
  eqType <- mkApp equivType [x, y]
  assert =<< mkForallConst [] [qx, qy] =<< mkEq builtinEq eqType

  return equivType

mkSort :: String -> [(String, [(String, Maybe Sort)])] -> ProofM Sort
mkSort sortName constrs = do
  constructors <- T.sequence $ map (uncurry mkConstr) constrs
  name         <- mkStringSymbol sortName
  mkDatatype name constructors

mkAccessor :: String -> Maybe Sort -> ProofM (Symbol, Maybe Sort, Int)
mkAccessor name dt = do
  accessorName <- mkStringSymbol name
  return (accessorName, dt, 0)

mkConstr :: String -> [(String, Maybe Sort)] -> ProofM Constructor
mkConstr name fields = do
  constName  <- mkStringSymbol name
  recognizer <- mkStringSymbol $ "is_" ++ name
  accessors  <- T.sequence $ map (uncurry mkAccessor) fields
  mkConstructor constName recognizer accessors



-- | Initialize Z3 types, etc. that will be made available during
--   execution of the proof monad
initialEnv :: ProofM ProofEnv
initialEnv = do
  s_Int <- mkIntSort
  s_Bool <- mkBoolSort

  s_Type <- mkSort "Type" [("voidType", [])
                          ,("integerType", [("nBits", Just s_Int)])]
  e_Type <- mkEquivFunc s_Bool s_Type "type"
  [c_VoidType, c_IntegerType] <- getDatatypeSortConstructors s_Type

  return ProofEnv{..}






----------------------------------------------------------------------
--
-- The Proof Monad:
--
-- Combines Z3, a reader for the environment, a writer for the log,
-- a state for state such as the next proposition number, and
-- a Maybe to handle unsuccessful proofs.


newtype ProofM a = ProofM {
  runProofM :: MaybeT
                (StateT ProofState
                  (WriterT ProofLog
                    (ReaderT ProofEnv Z3))) a }
  deriving (Functor, Applicative, Monad, MonadIO, MonadFail)

instance MonadZ3 ProofM where
  getSolver = ProofM $ lift $ lift $ lift getSolver
  getContext = ProofM $ lift $ lift $ lift getContext

-- | Extract the result from a WriterT, discarding any log
evalWriterT :: (Monad m, Monoid w) => WriterT w m a -> m a
evalWriterT m = liftM fst $ runWriterT m

-- | Run initialization code to get a new ProofEnv, then run
--   the actions with that environment.  Any log generated during
--   initialization is discarded
initializeRun :: ProofM ProofEnv -> ProofM a -> ProofM (Maybe a)
initializeRun initialization actions = do
  env' <- initialization
  state <- ProofM $ lift get
  ProofM $ lift $ lift $ lift $
            withReaderT (\_ -> env') $
            evalWriterT $
            evalStateT (runMaybeT $ runProofM actions) state


-- | In the proof environment, run the intitialization code to set
-- up a ProofEnv, then run the given actions with that environment
runProofEnvironment :: ProofState -> ProofM ProofEnv -> ProofM a -> IO (Maybe a, ProofState, ProofLog)
runProofEnvironment initialSt initializeEnv actions = do
  ((Just result, st), l) <- evalZ3 $
            runReaderT (runWriterT $ runStateT (runMaybeT $ runProofM $
                         initializeRun initializeEnv actions) initialSt)
              undefined
  return (result, st, l)
  --  return result

-- | Return a field from the proof environment (ProofEnv)
--
-- e.g., bool <- fromEnv z3Bool
fromEnv :: (ProofEnv -> a) -> ProofM a
fromEnv selector = ProofM $ lift $ lift $ lift $ asks selector


-- | Indicate a proof has failed; return Nothing in the Maybe monad
proofFail :: ProofM a
proofFail = ProofM $ MaybeT $ return Nothing



----------------------------------------------------------------------
--
-- The ProveEquiv class, for proving the equivalence of various LLVM objects
--

class ProveEquiv a where
  proveEquiv :: a -> a -> ProofM IRule

-- FIXME

instance ProveEquiv A.Global where
  proveEquiv f1@(A.Function{}) f2@(A.Function{}) = do
    return $ IRule [] (Equiv (Global f1) (Global f2)) (RuleID 1) "functions"

  proveEquiv _ _ = proofFail


instance ProveEquiv A.Type where
  proveEquiv t1@A.VoidType t2@A.VoidType = do

    -- Create two fresh Type variables
    sort <- fromEnv s_Type
    x <- mkFreshConst "x" sort
    y <- mkFreshConst "y" sort

    push
    -- Set the two variable equal to the constructor functions
    -- for these types
    cons <- fromEnv c_VoidType
    assert =<< mkEq x =<< mkApp cons []
    assert =<< mkEq y =<< mkApp cons []

    -- Apply the equivalence function for "Type" to these variables
    equiv <- fromEnv e_Type
    conclusion <- mkApp equiv [x, y]

    -- Assert the equivalence function is always false
    assert =<< mkNot conclusion

    s <- solverToString
    res <- check
    liftIO $ putStrLn $ unlines ["", s, show res]
    pop 1

    
    return $ IRule [] (Equiv (Type t1) (Type t2)) (RuleID 42) "void equal"

  proveEquiv _ _ = proofFail

----------------------------------------------------------------------

-- | Locate a function by name in the given module
findFunction :: A.Module -> A.Name -> Maybe A.Global
findFunction A.Module{..} funcName = case mapMaybe ffh moduleDefinitions of
  f:_ -> Just f
  []  -> Nothing
  where
    ffh (A.GlobalDefinition g@(A.Function {name = n})) | n == funcName = Just g
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
  (rule', _, proofLog') <- runProofEnvironment initialState initialEnv
                              (proveEquiv A.VoidType A.VoidType)
  print rule'
  print proofLog'
  _ <- exitSuccess


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

  (rule, _, proofLog) <-
    runProofEnvironment initialState initialEnv $ do
      r <- proveEquiv leftEntry rightEntry

      s <- solverToString
      liftIO $ putStrLn s
      return r
      
  print rule
  putStrLn $ showLog proofLog

-- Make all the "generate types" stuff dynamic so that each proof step
-- only brings in what it needs

