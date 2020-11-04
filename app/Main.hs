

{-# LANGUAGE GeneralizedNewtypeDeriving #-}

import System.Environment (getArgs)

import qualified LLVM.Module as M
import LLVM.Context (withContext)
import qualified LLVM.AST as A



--import Control.Applicative
import Control.Monad ( join )
import Data.Maybe
import qualified Data.Traversable as T

import Z3.Monad

import Control.Monad.IO.Class ( MonadIO )
import Control.Monad.Trans.Writer.CPS ( WriterT, runWriterT )
import Control.Monad.Trans.State.Strict ( StateT(..), runStateT )
import Control.Monad.Trans.Class ( lift )

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



-- Read a .ll file to produce an LLVM.AST.Module
readLL :: String -> IO A.Module
readLL filename = do
  str <- readFile filename
  withContext $ \ctx ->
    M.withModuleFromLLVMAssembly ctx str $ \llvmMod ->
      M.moduleAST llvmMod

{-
data ProofEnv = ProofEnv {
    envRandom :: Int
  }
-}

type ProofLog = [String] -- FIXME

data ProofState = ProofState {
    nextRuleId :: Int
  }

{-
--type ProofM a = StateT ProofState (WriterT ProofLog (ReaderT ProofEnv IO)) a

newtype ProofM0 a = ProofM0 { _unProof0 :: ReaderT ProofEnv Z3 a }
  deriving (Functor, Applicative, Monad, MonadIO)

runProofM0 :: ProofEnv -> ProofM0 a -> IO a
runProofM0 env (ProofM0 m) = evalZ3 (runReaderT m env)

newtype ProofM1 a = ProofM1 { _unProof1 :: WriterT ProofLog Z3 a }
  deriving (Functor, Applicative, Monad, MonadIO)

runProofM1 :: ProofM1 a -> IO (a, ProofLog)
runProofM1 (ProofM1 m) = evalZ3 (runWriterT m)

-}

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
