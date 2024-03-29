{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

{-|

The Proof Monad.  This combines a Writer for logging, a Reader that
records all the types, etc. for Z3, a State for capturing dynamic information
needed within a proof, and returns it all as a "Maybe" to indicate when
a proof has failed.

-}

module ProofM where

import Control.Monad.IO.Class ( MonadIO )
import Control.Monad.Trans.Writer.CPS ( WriterT, runWriterT, tell )
import Control.Monad.Trans.State.Strict ( StateT(..), runStateT, evalStateT,
                                          get, put )
import Control.Monad.Trans.Reader ( ReaderT, runReaderT, withReaderT, asks )
import Control.Monad.Trans.Class ( lift )
import Control.Monad.Trans.Maybe

import Data.List (intercalate)

import qualified Data.Map.Strict as M
import qualified Data.Set as S

import qualified LLVM.AST as A
--import qualified LLVM.AST.CallingConvention as A

import Z3.Monad

import ProofEnv

----------------------------------------------------------------------
--
-- Proof logging
--

type ProofLog = [LogEntry]

data LogEntry = LogString String -- ^ A arbitrary log string
              | LogSMTLIB String -- ^ A string representing SMTLIB source
              | LogInference { infPremises :: [PID]
                             , infConclusion :: Prop
                             , infComment :: String
                             }

-- Log can be printed
instance Show LogEntry where
  show (LogString ss) = intercalate "\n" $ map (";;; " ++) $ lines ss
  show (LogSMTLIB s) = s
  show LogInference{..} = intercalate "\n" $ map (";; "++) $
        map (indentCenter width) (premises' ++ [separator, conclusion']) ++
         ["", "Proof. " ++ infComment ++ " QED"]
    where
      premises' = map show infPremises
      width = maximum $ map length (conclusion' : premises')
      separator = replicate width '-' ++ " [" ++ show infConclusion ++ "]"
      conclusion' = show infConclusion
      indentCenter w s = replicate ((w - length s) `div` 2) ' ' ++ s

----------------------------------------------------------------------
--
-- Propositions
--

newtype PID = PID Int

nextPID :: PID -> PID
nextPID (PID i) = PID $ succ i

instance Show PID where
   show (PID i) = "p" ++ show i

mkPropConst :: PID -> String -> Sort -> ProofM AST
mkPropConst (PID n) str sort = do
  sym <- mkStringSymbol $ 'p' : show n ++ str
  mkConst sym sort

-- | An equivalence proposition: a verification of the equivalence of
--   two LLVM AST objects that has been checked by Z3
data Equiv = Equiv { z3equiv :: !AST -- ^ the conclusion: that the two variables are equivalent.  This is passed up to the next level, and is typically used as part of the assumptions above this
                   , z3v1 :: !AST    -- ^ Variable representing the first object
                   , z3v2 :: !AST    -- ^     "          "      second object
                   , equivID :: !PID -- ^ Name of this equivalence
                   }

data BBIso = BBIso { bbisoID :: !PID -- ^ Name of this equivalence
                   -- FIXME: More fields here
                   }

-- | A proposition: something that is held true
data Prop = PropEquiv !Equiv
          | PropBBISO !BBIso

instance Show Prop where
  show (PropEquiv e) = show $ equivID e
  show (PropBBISO i) = show $ bbisoID i


----------------------------------------------------------------------

-- | A mapping from local names in one function, etc. to local names in another
type NameMap = M.Map A.Name A.Name
type Z3NameMap = (NameMap, FuncDecl)
type VisitSet = S.Set A.Name
type MatchState = (Z3NameMap, Z3NameMap, VisitSet)

-- | A mapping from names to the top level definitions they refer to
type NameReferenceMap = M.Map A.Name A.Global
type NameCongruence = S.Set (S.Set A.Name)

-- | A mapping from Z3 sorts to equivalence functions
type EquivFunctionMap = M.Map Sort FuncDecl

data ProofState = ProofState
  { currentPID :: !PID                  -- ^ ID for the next proposition
  , matching :: ![MatchState]           -- ^ Forward and inverse name matching stack with z3 functions
  , leftGlobals :: !NameReferenceMap    -- ^ top level definitions in left file
  , rightGlobals :: !NameReferenceMap   -- ^ top level definitions in right file
  , congruence :: !NameCongruence       -- ^ disjoint-set of equiv names
  , equivFunctions :: !EquivFunctionMap -- ^ For each Z3 sort, the equivalence function
  }

-- | Initial proof state: PID is 1; empty maps and sets
initialState :: ProofState
initialState = ProofState { currentPID = PID 1
                          , matching = []
                          , leftGlobals = M.empty
                          , rightGlobals = M.empty
                          , congruence = S.empty
                          , equivFunctions = M.empty
                          }

{-|

The Proof Monad:

Combines Z3, a reader for the environment, a writer for the log,
a state for state such as the next proposition number, and
a Maybe to handle unsuccessful proofs.

-}

newtype ProofM a = ProofM {
  runProofM :: MaybeT
                (StateT ProofState
                  (ReaderT ProofEnv
                    (WriterT ProofLog Z3))) a }
  deriving (Functor, Applicative, Monad, MonadIO, MonadFail)

instance MonadZ3 ProofM where
  getSolver = ProofM $ lift $ lift $ lift $ lift getSolver
  getContext = ProofM $ lift $ lift $ lift $ lift getContext

-- | Extract the result from a WriterT, discarding any log
evalWriterT :: (Monad m, Monoid w) => WriterT w m a -> m a
evalWriterT m = fst <$> runWriterT m

-- | Run initialization code to get a new ProofEnv, then run
--   the actions with that environment.  Any log generated during
--   initialization is discarded
initializeRun :: ProofM ProofEnv -> ProofM a -> ProofM (Maybe a, ProofLog)
initializeRun initialization actions = do
  env' <- initialization
  state <- ProofM $ lift get
--  logSMTLIB =<< solverToString
--  logString "initialization complete"
  ProofM $ lift $ lift $
            runWriterT $ lift $
            withReaderT (const env') $
            evalStateT (runMaybeT $ runProofM actions) state

-- | In the proof environment, run the intitialization code to set
-- up a ProofEnv, then run the given actions with that environment
runProofEnvironment :: Opts -> ProofState -> ProofM ProofEnv -> ProofM a
                    -> IO (Maybe a, ProofState, ProofLog)
runProofEnvironment options initialSt initializeEnv actions = do
  ((jr, st), l) <-
      evalZ3With Nothing options $ runWriterT $ runReaderT (
      runStateT (runMaybeT $ runProofM $
                  initializeRun initializeEnv actions) initialSt)
      undefined
  let result = case jr of Just (r, _) -> r
                          Nothing -> Nothing
  return (result, st, l)

-- | Indicate a proof has failed; return Nothing in the Maybe monad
proofFail :: String -> ProofM a
proofFail s = do
  logString $ " **** proofFail: " ++ s
  ProofM $ MaybeT $ return Nothing

-- | Return a field from the proof environment (ProofEnv)
--
-- e.g., bool <- fromEnv s_Bool
fromEnv :: (ProofEnv -> a) -> ProofM a
fromEnv selector = ProofM $ lift $ lift $ asks selector


-- | Get the next PID in sequence and update the state
getNextPID :: ProofM PID
getNextPID = do
  s <- ProofM $ lift get
  let pid = currentPID s
  ProofM $ lift $ put $ s {currentPID = nextPID pid }
  return pid

-- | Save the equivalence function for a Z3 sort
saveEquivFunction :: Sort -- ^ Sort to be saved
                  -> FuncDecl -- ^ Equivalence function for the sort
                  -> ProofM ()
saveEquivFunction sort equivFunction = do
  s <- ProofM $ lift get
  let cm = equivFunctions s
  ProofM $ lift $ put $ s { equivFunctions = M.insert sort equivFunction cm }

-- | Get constructor information for a Z3 sort saved earlier
-- by @saveSortConstructors@
getEquivFunction :: Sort -> ProofM (Maybe FuncDecl)
getEquivFunction sort = do
  ProofState{..} <- ProofM $ lift get
  return $ M.lookup sort equivFunctions

-- | Log a string message
logString :: String -> ProofM ()
logString s = ProofM $ lift $ lift $ lift $ tell [LogString s]

-- | Log an SMTLIB message
logSMTLIB :: String -> ProofM ()
logSMTLIB s = ProofM $ lift $ lift $ lift $ tell [LogSMTLIB s]

-- | Log an inference
logInference :: [PID] -> Prop -> String -> ProofM ()
logInference infPremises infConclusion infComment =
  ProofM $ lift $ lift $ lift $ tell [LogInference{..}]
