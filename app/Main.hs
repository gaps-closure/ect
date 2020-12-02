{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TemplateHaskell #-}

-- LD_LIBRARY_PATH=z3-4.8.8-x64-ubuntu-16.04/bin stack ghci

{-

stack run -- examples/example1/example1-refactored-9.ll examples/example1/example1-orange-9.ll examples/example1/example1-purple-9.ll


-}


module Main where

import System.Environment (getArgs, getProgName)
import System.Console.GetOpt (getOpt, usageInfo, OptDescr(..),
                              ArgDescr(NoArg, ReqArg), ArgOrder(RequireOrder))
import System.IO ( hPutStrLn, hPutStr, stderr )
import System.Exit( exitSuccess, exitFailure )

import qualified Data.Traversable as T
import Data.Maybe
import Data.ByteString.UTF8 (fromString,toString)
import Data.ByteString.Short (ShortByteString, toShort,fromShort) -- ShortByteString
import qualified Data.ByteString.Char8 as C
--import Data.Maybe (mapMaybe)
import Data.List (intercalate)
import Data.Word ( Word32 )
import qualified Data.Map.Strict as M
import qualified Data.Set as S


import Control.Monad ( unless, liftM, when )
import Control.Monad.IO.Class ( MonadIO, liftIO )
import Control.Monad.Trans.Writer.CPS ( WriterT, runWriterT, tell )
import Control.Monad.Trans.State.Strict ( StateT(..), runStateT, evalStateT,
                                          get, put )
import Control.Monad.Trans.Reader ( ReaderT, runReaderT, withReaderT, asks )
import Control.Monad.Trans.Class ( lift )
import Control.Monad.Trans.Maybe


import LLVM.Context (withContext)

import qualified LLVM.Module as M
import qualified LLVM.AST as A hiding (callingConvention, alignment)
import qualified LLVM.AST.Global as A
import qualified LLVM.AST.Visibility as A
import qualified LLVM.AST.Linkage as A
--import qualified LLVM.AST.StorageClass as A
import qualified LLVM.AST.DLL as A
import qualified LLVM.AST.CallingConvention as A
--import qualified LLVM.AST.FunctionAttribute as A
--import qualified LLVM.AST.ParameterAttribute as A
--import qualified LLVM.AST.IntegerPredicate as A
--import qualified LLVM.AST.Constant as C
import qualified LLVM.AST.AddrSpace as A

import Z3.Monad

import Z3TypeGenerator

----------------------------------------------------------------------

{-
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
-}

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
data Equiv = Equiv { z3equiv :: !AST -- | asserts two variables are equivalent
                   , z3v1 :: !AST    -- | Variable representing the first object
                   , z3v2 :: !AST    -- |     "          "      second object
                   , equivID :: !PID -- | Name of this equivalence
                   }

data BBIso = BBIso { bbisoID :: !PID -- | Name of this equivalence
                   -- FIXME: More fields here
                   }

-- | A proposition: something that is held true
data Prop = PropEquiv !Equiv
          | PropBBISO !BBIso

instance Show Prop where
  show (PropEquiv e) = show $ equivID e
  show (PropBBISO i) = show $ bbisoID i

----------------------------------------------------------------------
--
-- Proof logging
--

type ProofLog = [LogEntry]

data LogEntry = LogString String
              | LogSMTLIB String
              | LogInference { infPremises :: [PID]
                             , infConclusion :: Prop
                             , infComment :: String
                             }

instance Show LogEntry where
  show (LogString ss) = intercalate "\n" $ map (\s -> ";;; " ++ s) $ lines ss
  show (LogSMTLIB s) = s
  show LogInference{..} = intercalate "\n" $ map (";; "++) $
        (map (indentCenter width) (premises' ++ [separator, conclusion'])) ++
         ["", "Proof. " ++ infComment ++ " QED"]
    where
      premises' = map show infPremises
      width = maximum $ map length (conclusion' : premises')
      separator = replicate width '-' ++ " [" ++ show infConclusion ++ "]"
      conclusion' = show infConclusion
      indentCenter w s = replicate ((w - length s) `div` 2) ' ' ++ s


----------------------------------------------------------------------

-- | A mapping from local names in one function, etc. to local names in another
type NameMap = M.Map A.Name A.Name


data ProofState = ProofState
  { currentPID :: !PID         -- | ID for the next proposition
  , matching :: !NameMap       -- | For name isomorphisms
  , inverse :: !NameMap        -- | Inverse of matching
  , visiting :: !(S.Set A.Name)  -- | For DFS algorithms
  }

initialState :: ProofState
initialState = ProofState { currentPID = PID 1
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

-- | Information about an LLVM type implemented in Z3-land
data Z3Type = Z3Type { sort :: !Sort
                     , equivFunc :: !FuncDecl }

-- | A constructor function and more information about the type in Z3-land
type Z3Constructor = (FuncDecl, String, Z3Type)


data ProofEnv = ProofEnv
  { s_Int    :: !Sort -- Z3 sort for Int
  , s_Bv32   :: !Sort -- Z3 sort for 32-bit vector
  , s_Bool   :: !Sort -- Z3 sort for Bool
  , s_String :: !Sort -- Z3 sort for strings

  -- Constructors, sorts for Name
  , c_N_Name   :: !Z3Constructor
  , c_N_UnName :: !Z3Constructor

  -- AddrSpace, part of pointer types, usually 0
  , c_T_AddrSpace          :: !Z3Constructor

  -- Constructors, types for Type
  , c_T_VoidType           :: !Z3Constructor
  , c_T_IntegerType        :: !Z3Constructor
  , c_T_PointerType        :: !Z3Constructor
--  , c_T_FloatingPointType  :: !Z3Constructor
--  , c_T_FunctionType       :: !Z3Constructor
--  , c_T_StructureType      :: !Z3Constructor
--  , c_T_ArrayType          :: !Z3Constructor

  -- Constructors, types for Visibility
  , c_V_Default   :: !Z3Constructor
  , c_V_Hidden    :: !Z3Constructor
  , c_V_Protected :: !Z3Constructor

  -- Constructors, types for StorageClass
  , c_S_Import :: !Z3Constructor
  , c_S_Export :: !Z3Constructor

  -- Maybe StorageClass
  , c_MS_Just    :: !Z3Constructor
  , c_MS_Nothing :: !Z3Constructor

  -- Maybe ShortByteString
  , c_MbSbs_Just    :: !Z3Constructor
  , c_MbSbs_Nothing :: !Z3Constructor

  -- Constructors, types for Linkage
  , c_L_Private             :: !Z3Constructor
  , c_L_Internal            :: !Z3Constructor
  , c_L_AvailableExternally :: !Z3Constructor
  , c_L_LinkOnce            :: !Z3Constructor
  , c_L_Weak                :: !Z3Constructor
  , c_L_Common              :: !Z3Constructor
  , c_L_Appending           :: !Z3Constructor
  , c_L_ExternWeak          :: !Z3Constructor
  , c_L_LinkOnceODR         :: !Z3Constructor
  , c_L_WeakODR             :: !Z3Constructor
  , c_L_External            :: !Z3Constructor

  -- Constructors, types for CallingConvention
  , c_CC_C              :: !Z3Constructor
  , c_CC_Fast           :: !Z3Constructor
  , c_CC_Cold           :: !Z3Constructor
  , c_CC_GHC            :: !Z3Constructor
  , c_CC_HiPE           :: !Z3Constructor
  , c_CC_WebKit_JS      :: !Z3Constructor
  , c_CC_AnyReg         :: !Z3Constructor
  , c_CC_PreserveMost   :: !Z3Constructor
  , c_CC_PreserveAll    :: !Z3Constructor
  , c_CC_Swift          :: !Z3Constructor
  , c_CC_CXX_FastTLS    :: !Z3Constructor
  , c_CC_X86_StdCall    :: !Z3Constructor
  , c_CC_X86_FastCall   :: !Z3Constructor
  , c_CC_ARM_APCS       :: !Z3Constructor
  , c_CC_ARM_AAPCS      :: !Z3Constructor
  , c_CC_ARM_AAPCS_VFP  :: !Z3Constructor
  , c_CC_MSP430_INTR    :: !Z3Constructor
  , c_CC_X86_ThisCall   :: !Z3Constructor
  , c_CC_PTX_Kernel     :: !Z3Constructor
  , c_CC_PTX_Device     :: !Z3Constructor
  , c_CC_SPIR_FUNC      :: !Z3Constructor
  , c_CC_SPIR_KERNEL    :: !Z3Constructor
  , c_CC_Intel_OCL_BI   :: !Z3Constructor
  , c_CC_X86_64_SysV    :: !Z3Constructor
  , c_CC_Win64          :: !Z3Constructor
  , c_CC_X86_VectorCall :: !Z3Constructor
  , c_CC_HHVM           :: !Z3Constructor
  , c_CC_HHVM_C         :: !Z3Constructor
  , c_CC_X86_Intr       :: !Z3Constructor
  , c_CC_AVR_Intr       :: !Z3Constructor
  , c_CC_AVR_Signal     :: !Z3Constructor
  , c_CC_AVR_Builtin    :: !Z3Constructor
  , c_CC_AMDGPU_VS      :: !Z3Constructor
  , c_CC_AMDGPU_HS      :: !Z3Constructor
  , c_CC_AMDGPU_GS      :: !Z3Constructor
  , c_CC_AMDGPU_PS      :: !Z3Constructor
  , c_CC_AMDGPU_CS      :: !Z3Constructor
  , c_CC_AMDGPU_Kernel  :: !Z3Constructor
  , c_CC_X86_RegCall    :: !Z3Constructor
  , c_CC_MSP430_Builtin :: !Z3Constructor
  , c_CC_Numbered       :: !Z3Constructor

  -- Globals
  , c_G_Function :: !Z3Constructor
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


mkZ3Constructors :: Sort -> String -> [(String, [(String, Maybe Sort)])]
         -> ProofM (Sort, [Z3Constructor])
mkZ3Constructors bool name fields = do
  sort <- mkSort name fields
  equivFunc <- mkEquivFunc bool sort name
  let z3Type = Z3Type{..}
  constructors <- getDatatypeSortConstructors sort
  return $ (sort, zipWith3 (,,) constructors (map fst fields) (repeat z3Type))

-- | Initialize Z3 types, etc. that will be made available during
--   execution of the proof monad
initialEnv :: ProofM ProofEnv
initialEnv = do
  s_Int <- mkIntSort
  s_Bv32 <- mkBvSort 32
  s_Bool <- mkBoolSort
  s_String <- mkStringSort

  (s_Name, [ c_N_Name, c_N_UnName ]) <-
    mkZ3Constructors s_Bool
      "Name" [ ("N_Name", [("nm", Just s_String)])
             , ("N_UnName", [("unm", Just s_Bv32)])
             ]

  (s_AddrSpace, [ c_T_AddrSpace ]) <-
    mkZ3Constructors s_Bool "AddrSpace" [ ("T_AddrSpace",
                                            [("addrSpace", Just s_Bv32)])]

  (s_Type, [ c_T_VoidType, c_T_IntegerType, c_T_PointerType ]) <-
    mkZ3Constructors s_Bool
      "Type" [ ("T_VoidType", [])
             , ("T_IntegerType", [("nBits", Just s_Bv32)])
             , ("T_PointerType", [("pointerReferent", Nothing) -- s_Type
                                 ,("pointerAddrSpace", Just s_AddrSpace)])
             ]

  (s_Visibility, [ c_V_Default, c_V_Hidden, c_V_Protected ]) <-
    mkZ3Constructors s_Bool
      "Visibility" [ ("V_Default", [])
                   , ("V_Hidden", [])
                   , ("V_Protected", [])
                   ]

  (s_StorageClass, [ c_S_Import, c_S_Export ]) <-
    mkZ3Constructors s_Bool
      "StorageClass" [ ("S_Import", [])
                     , ("S_Export", [])
                     ]

  (s_Maybe_StorageClass, [ c_MS_Just, c_MS_Nothing ]) <-
    mkZ3Constructors s_Bool
      "Maybe-StorageClass" [ ("MS_Just", [("mscj", Just s_StorageClass)])
                           , ("MS_Nothing", []) ]

  (s_Maybe_ShortByteString, [ c_MbSbs_Just, c_MbSbs_Nothing ]) <-
    mkZ3Constructors s_Bool
      "Maybe-ShortByteString" [ ("MbSbs_Just", [("msbsj", Just s_String)])
                              , ("MbSbs_Nothing", [])]

  (s_Linkage, [ c_L_Private, c_L_Internal, c_L_AvailableExternally
              , c_L_LinkOnce, c_L_Weak, c_L_Common, c_L_Appending
              , c_L_ExternWeak, c_L_LinkOnceODR, c_L_WeakODR
              , c_L_External ]) <-
    mkZ3Constructors s_Bool
      "Linkage" [ ("L_Private", [])
                , ("L_Internal", [])
                , ("L_AvailableExternally", [])
                , ("L_LinkOnce", [])
                , ("L_Weak", [])
                , ("L_Common", [])
                , ("L_Appending", [])
                , ("L_ExternWeak", [])
                , ("L_LinkOnceODR", [])
                , ("L_WeakODR", [])
                , ("L_External", [])
                ]

  (s_CallingConvention, [ c_CC_C, c_CC_Fast, c_CC_Cold, c_CC_GHC, c_CC_HiPE
                        , c_CC_WebKit_JS, c_CC_AnyReg, c_CC_PreserveMost
                        , c_CC_PreserveAll, c_CC_Swift, c_CC_CXX_FastTLS
                        , c_CC_X86_StdCall, c_CC_X86_FastCall, c_CC_ARM_APCS
                        , c_CC_ARM_AAPCS, c_CC_ARM_AAPCS_VFP, c_CC_MSP430_INTR
                        , c_CC_X86_ThisCall, c_CC_PTX_Kernel, c_CC_PTX_Device
                        , c_CC_SPIR_FUNC, c_CC_SPIR_KERNEL, c_CC_Intel_OCL_BI
                        , c_CC_X86_64_SysV, c_CC_Win64, c_CC_X86_VectorCall
                        , c_CC_HHVM, c_CC_HHVM_C, c_CC_X86_Intr, c_CC_AVR_Intr
                        , c_CC_AVR_Signal, c_CC_AVR_Builtin, c_CC_AMDGPU_VS
                        , c_CC_AMDGPU_HS, c_CC_AMDGPU_GS, c_CC_AMDGPU_PS
                        , c_CC_AMDGPU_CS, c_CC_AMDGPU_Kernel, c_CC_X86_RegCall
                        , c_CC_MSP430_Builtin, c_CC_Numbered]) <-
    mkZ3Constructors s_Bool
      "CallingConvention" [ ("CC_C", [])
                          , ("CC_Fast", [])
                          , ("CC_Cold", [])
                          , ("CC_GHC", [])
                          , ("CC_HiPE", [])
                          , ("CC_WebKit_JS", [])
                          , ("CC_AnyReg", [])
                          , ("CC_PreserveMost", [])
                          , ("CC_PreserveAll", [])
                          , ("CC_Swift", [])
                          , ("CC_CXX_FastTLS", [])
                          , ("CC_X86_StdCall", [])
                          , ("CC_X86_FastCall", [])
                          , ("CC_ARM_APCS", [])
                          , ("CC_ARM_AAPCS", [])
                          , ("CC_ARM_AAPCS_VFP", [])
                          , ("CC_MSP430_INTR", [])
                          , ("CC_X86_ThisCall", [])
                          , ("CC_PTX_Kernel", [])
                          , ("CC_PTX_Device", [])
                          , ("CC_SPIR_FUNC", [])
                          , ("CC_SPIR_KERNEL", [])
                          , ("CC_Intel_OCL_BI", [])
                          , ("CC_X86_64_SysV", [])
                          , ("CC_Win64", [])
                          , ("CC_X86_VectorCall", [])
                          , ("CC_HHVM", [])
                          , ("CC_HHVM_C", [])
                          , ("CC_X86_Intr", [])
                          , ("CC_AVR_Intr", [])
                          , ("CC_AVR_Signal", [])
                          , ("CC_AVR_Builtin", [])
                          , ("CC_AMDGPU_VS", [])
                          , ("CC_AMDGPU_HS", [])
                          , ("CC_AMDGPU_GS", [])
                          , ("CC_AMDGPU_PS", [])
                          , ("CC_AMDGPU_CS", [])
                          , ("CC_AMDGPU_Kernel", [])
                          , ("CC_X86_RegCall", [])
                          , ("CC_MSP430_Builtin", [])
                          , ("CC_Numbered", [("num", Just s_Bv32)])
                          ]

  (_, [ c_G_Function ]) <-
    mkZ3Constructors s_Bool
    "Function" [ ("G_Function", [("linkage", Just s_Linkage)
                                ,("visibility", Just s_Visibility)
                                ,("dllStorageClass", Just s_Maybe_StorageClass)
                                ,("callingConvention", Just s_CallingConvention)
                                ,("returnType", Just s_Type)
                                ,("name", Just s_Name)
                                ,("section", Just s_Maybe_ShortByteString)
                                ,("comdat", Just s_Maybe_ShortByteString)
                                ,("alignment", Just s_Bv32)
                                ,("garbageCollectorName", Just s_Maybe_ShortByteString)
                                ])
               ]

  $(initProofEnv [] [| ProofEnv{..} |] )
--  return ProofEnv{..}

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
                  (ReaderT ProofEnv
                    (WriterT ProofLog Z3))) a }
  deriving (Functor, Applicative, Monad, MonadIO, MonadFail)

instance MonadZ3 ProofM where
  getSolver = ProofM $ lift $ lift $ lift $ lift getSolver
  getContext = ProofM $ lift $ lift $ lift $ lift getContext

-- | Extract the result from a WriterT, discarding any log
evalWriterT :: (Monad m, Monoid w) => WriterT w m a -> m a
evalWriterT m = liftM fst $ runWriterT m

-- | Run initialization code to get a new ProofEnv, then run
--   the actions with that environment.  Any log generated during
--   initialization is discarded
initializeRun :: ProofM ProofEnv -> ProofM a -> ProofM (Maybe a, ProofLog)
initializeRun initialization actions = do
  env' <- initialization
  state <- ProofM $ lift get
  ProofM $ lift $ lift $ lift $ tell $ [LogString "initialization complete"]
  ProofM $ lift $ lift $
            runWriterT $ lift $
            withReaderT (\_ -> env') $
            evalStateT (runMaybeT $ runProofM actions) state


-- | In the proof environment, run the intitialization code to set
-- up a ProofEnv, then run the given actions with that environment
runProofEnvironment :: ProofState -> ProofM ProofEnv -> ProofM a
                    -> IO (Maybe a, ProofState, ProofLog)
runProofEnvironment initialSt initializeEnv actions = do
  ((Just (result, _), st), l) <-
      evalZ3 $ runWriterT $ runReaderT (
      runStateT (runMaybeT $ runProofM $
                  initializeRun initializeEnv actions) initialSt)
      undefined
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
  s <- ProofM $ lift $ get
  let pid = currentPID s
  ProofM $ lift $ put $ s {currentPID = nextPID pid }
  return pid




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

----------------------------------------------------------------------
--
-- The ProveEquiv class, for proving the equivalence of pairs of LLVM objects
--

class ProveEquiv a where
  proveEquiv :: a -> a -> ProofM Equiv

-- | Run Z3 to check the current assertions and return an equivance it was
--   successful
proveZ3Equiv :: [PID] -> Equiv -> String -> ProofM Equiv
proveZ3Equiv premiseIDs equiv comment = do
    smtlib <- solverToString  -- Capture the Z3 state
    z3Result <- check         -- Run Z3 to verify this equivalence
    pop 1

    case z3Result of
      Unsat -> do logSMTLIB smtlib
                  logInference premiseIDs (PropEquiv equiv) comment
                  return equiv
      _ -> do liftIO $ putStrLn $ unlines [smtlib, show z3Result]
              proofFail "Z3 returned Satisfiable"

-- | Verify that if the fields of the given data constructor are equivalent
--   then the objects are equivalent
proveEquivGeneral :: (ProofEnv -> Z3Constructor) -- | Get constructor info
                  -> [Equiv]                     -- | Proven-equivalent fields
                  -> String                      -- | Comment for inference
                  -> ProofM Equiv
proveEquivGeneral getCons fields comment = do
  let v1fields = map z3v1 fields
      v2fields = map z3v2 fields
      premises = map z3equiv fields
      premiseIDs = map equivID fields

  (consf, cname, Z3Type{..}) <- fromEnv getCons

  logString $
    "Verifying " ++ cname ++ " " ++ intercalate " " (map show premiseIDs)

  -- Assemble the fields for the Equiv
  equivID <- getNextPID
  z3v1 <- mkPropConst equivID "x" sort
  z3v2 <- mkPropConst equivID "y" sort
  z3equiv <- mkApp equivFunc [z3v1, z3v2] -- the conclusion


  push
  assert =<< mkEq z3v1 =<< mkApp consf v1fields -- Build v1 from fields
  assert =<< mkEq z3v2 =<< mkApp consf v2fields -- Build v2 from fields

  assumePremises <- mkAnd premises -- Assume the premises are true
  assert =<< mkNot =<< mkImplies assumePremises z3equiv

  proveZ3Equiv premiseIDs Equiv{..} comment

proveEquivPrimitive :: (ProveEquiv a, Eq a, Show a)
                    => (ProofEnv -> Sort)          -- | Get z3 sort
                    -> (a -> ProofM AST)           -- | build value in z3
                    -> String                      -- | LLVM name of the datatype
                    -> a                           -- primitive object 1
                    -> a                           -- primitive object 2
                    -> ProofM Equiv
proveEquivPrimitive getEnvSort toSort name x y = do
  unless (x == y) $ proofFail $
    "Primitives " ++ show x ++ " and " ++ show y ++ " not equivalent"

  logString $ "Verifying " ++ name ++ " " ++ show x ++ " == " ++ show y

  sort <- fromEnv getEnvSort

  equivID <- getNextPID
  z3v1 <- mkPropConst equivID "x" sort
  z3v2 <- mkPropConst equivID "y" sort
  z3equiv <- mkEq z3v1 z3v2 -- the conclusion

  push
  assert =<< mkEq z3v1 =<< toSort x
  assert =<< mkEq z3v2 =<< toSort y
  assert =<< mkNot z3equiv

  proveZ3Equiv [] Equiv{..} (name ++ " equivalent")

proveEquivMaybe :: (ProveEquiv a)
                => (ProofEnv -> Z3Constructor)
                -> (ProofEnv -> Z3Constructor)
                -> String
                -> Maybe a
                -> Maybe a
                -> ProofM Equiv
proveEquivMaybe c_Just _ n (Just a) (Just b) = do
  e <- proveEquiv a b
  proveEquivGeneral c_Just [e] $ "Just " ++ n ++ " equivalent"
proveEquivMaybe _ c_Nothing n Nothing Nothing =
  proveEquivGeneral c_Nothing [] $ "Nothing (" ++ n ++ ") equivalent"
proveEquivMaybe _ _ n _ _ = proofFail $ "Maybe " ++ n ++ " not equivalent"

proveEquivList :: (ProveEquiv a)
               => (ProofEnv -> Z3Constructor)
               -> (ProofEnv -> Z3Constructor)
               -> String
               -> [a]
               -> [a]
               -> ProofM Equiv
proveEquivList c_Cons c_Nil n (a:as) (b:bs) = do
  tail_equiv <- proveEquivList c_Cons c_Nil n as bs
  head_equiv <- proveEquiv a b
  proveEquivGeneral c_Cons [head_equiv, tail_equiv] $ "Cons " ++ n ++ " equivalent"
proveEquivList _ c_Nil n [] [] =
  proveEquivGeneral c_Nil [] $ "[] (" ++ n ++ ") equivalent"
proveEquivList _ _ n _ _ = proofFail $ "[" ++ n ++ "] not equivalent"

instance ProveEquiv Bool where
  proveEquiv = proveEquivPrimitive s_Bool mkBool "Bool"

instance ProveEquiv Word32 where
  proveEquiv = proveEquivPrimitive s_Bv32 (\x -> mkBitvector 32 (toInteger x)) "Word32"

instance ProveEquiv ShortByteString where
  proveEquiv = proveEquivPrimitive s_String (\x -> mkString $ C.unpack $ fromShort x) "ShortByteString"

instance ProveEquiv (Maybe ShortByteString) where
  proveEquiv = proveEquivMaybe c_MbSbs_Just c_MbSbs_Nothing "ShortByteString"

instance ProveEquiv A.Visibility where
  proveEquiv a b
    | a == b    = proveEquivGeneral c [] (show a ++ " visibility equivalent")
    | otherwise = proofFail "Visibility"
    where c = case a of
                A.Default   -> c_V_Default
                A.Hidden    -> c_V_Hidden
                A.Protected -> c_V_Protected

instance ProveEquiv A.StorageClass where
  proveEquiv a b
    | a == b    = proveEquivGeneral c [] (show a ++ " storage class equivalent")
    | otherwise = proofFail "StorageClass"
    where c = case a of
                A.Import -> c_S_Import
                A.Export -> c_S_Export

instance ProveEquiv (Maybe A.StorageClass) where
  proveEquiv = proveEquivMaybe c_MS_Just c_MS_Nothing "StorageClass"

instance ProveEquiv A.Linkage where
  proveEquiv a b
    | a == b    = proveEquivGeneral c [] (show a ++ " linkage equivalent")
    | otherwise = proofFail "Linkage"
    where c = case a of
                A.Private     -> c_L_Private
                A.Internal    -> c_L_Internal
                A.LinkOnce    -> c_L_LinkOnce
                A.Weak        -> c_L_Weak
                A.Common      -> c_L_Common
                A.Appending   -> c_L_Appending
                A.ExternWeak  -> c_L_ExternWeak
                A.LinkOnceODR -> c_L_LinkOnceODR
                A.WeakODR     -> c_L_WeakODR
                A.External    -> c_L_External
                A.AvailableExternally -> c_L_AvailableExternally

instance ProveEquiv A.CallingConvention where
  proveEquiv (A.Numbered w1) (A.Numbered w2) = do
    e <- proveEquiv w1 w2
    proveEquivGeneral c_CC_Numbered [e] "Numbered calling convention equivalent"
  proveEquiv a b
    | a == b    = proveEquivGeneral c [] (show a ++ " calling convention equivalent")
    | otherwise = proofFail "CallingConvention"
    where c = case a of
                A.C              -> c_CC_C
                A.Fast           -> c_CC_Fast
                A.Cold           -> c_CC_Cold
                A.GHC            -> c_CC_GHC
                A.HiPE           -> c_CC_HiPE
                A.WebKit_JS      -> c_CC_WebKit_JS
                A.AnyReg         -> c_CC_AnyReg
                A.PreserveMost   -> c_CC_PreserveMost
                A.PreserveAll    -> c_CC_PreserveAll
                A.Swift          -> c_CC_Swift
                A.CXX_FastTLS    -> c_CC_CXX_FastTLS
                A.X86_StdCall    -> c_CC_X86_StdCall
                A.X86_FastCall   -> c_CC_X86_FastCall
                A.ARM_APCS       -> c_CC_ARM_APCS
                A.ARM_AAPCS      -> c_CC_ARM_AAPCS
                A.ARM_AAPCS_VFP  -> c_CC_ARM_AAPCS_VFP
                A.MSP430_INTR    -> c_CC_MSP430_INTR
                A.X86_ThisCall   -> c_CC_X86_ThisCall
                A.PTX_Kernel     -> c_CC_PTX_Kernel
                A.PTX_Device     -> c_CC_PTX_Device
                A.SPIR_FUNC      -> c_CC_SPIR_FUNC
                A.SPIR_KERNEL    -> c_CC_SPIR_KERNEL
                A.Intel_OCL_BI   -> c_CC_Intel_OCL_BI
                A.X86_64_SysV    -> c_CC_X86_64_SysV
                A.Win64          -> c_CC_Win64
                A.X86_VectorCall -> c_CC_X86_VectorCall
                A.HHVM           -> c_CC_HHVM
                A.HHVM_C         -> c_CC_HHVM_C
                A.X86_Intr       -> c_CC_X86_Intr
                A.AVR_Intr       -> c_CC_AVR_Intr
                A.AVR_Signal     -> c_CC_AVR_Signal
                A.AVR_Builtin    -> c_CC_AVR_Builtin
                A.AMDGPU_VS      -> c_CC_AMDGPU_VS
                A.AMDGPU_HS      -> c_CC_AMDGPU_HS
                A.AMDGPU_GS      -> c_CC_AMDGPU_GS
                A.AMDGPU_PS      -> c_CC_AMDGPU_PS
                A.AMDGPU_CS      -> c_CC_AMDGPU_CS
                A.AMDGPU_Kernel  -> c_CC_AMDGPU_Kernel
                A.X86_RegCall    -> c_CC_X86_RegCall
                A.MSP430_Builtin -> c_CC_MSP430_Builtin
                A.Numbered _     -> error "unreachable pattern match"


instance ProveEquiv A.AddrSpace where
  proveEquiv (A.AddrSpace a1) (A.AddrSpace a2) = do
    e <- proveEquiv a1 a2
    proveEquivGeneral c_T_AddrSpace [e] "AddrSpace equivalent"

instance ProveEquiv A.Type where
  proveEquiv A.VoidType A.VoidType = do
    proveEquivGeneral c_T_VoidType [] "VoidType equivalent"

  proveEquiv (A.IntegerType w1) (A.IntegerType w2) = do
    w1w2equiv <- proveEquiv w1 w2
    proveEquivGeneral c_T_IntegerType [w1w2equiv] $
      "IntegerType " ++ show w1 ++ " equivalent"

  proveEquiv (A.PointerType t1 s1) (A.PointerType t2 s2) = do
    tequiv <- proveEquiv t1 t2
    sequiv <- proveEquiv s1 s2
    proveEquivGeneral c_T_PointerType [tequiv, sequiv] "PointerType equivalent"

  proveEquiv _ _ = proofFail "Type equivalence failed"

instance ProveEquiv A.Name where
  proveEquiv (A.Name s1) (A.Name s2) = do
    e <- proveEquiv s1 s2
    proveEquivGeneral c_N_Name [e] "Name equivalent"
  proveEquiv (A.UnName w1) (A.UnName w2) = do
    e <- proveEquiv ((fromIntegral w1) :: Word32) ((fromIntegral w2) :: Word32)
    proveEquivGeneral c_N_UnName [e] "UnName equivalent"
  proveEquiv _ _ = proofFail "Name != UnName"

instance ProveEquiv A.Global where
  proveEquiv f1@A.Function{} f2@A.Function{} = do
    fields <- T.sequence
      [ proveField A.linkage
      , proveField A.visibility
      , proveField A.dllStorageClass
      , proveField A.callingConvention
      , proveField A.returnType
      , proveField A.name
      , proveField A.section
      , proveField A.comdat
      , proveField A.alignment
      , proveField A.garbageCollectorName
      ]
    proveEquivGeneral c_G_Function fields $
      "functions " ++ (showName $ A.name f1) ++ " and " ++
      (showName $ A.name f2) ++ " equivalent"
    where proveField record = proveEquiv (record f1) (record f2)


  proveEquiv _ _ = proofFail "Function"
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

  (_, _, proofLog) <-
    runProofEnvironment initialState initialEnv $ do
      r <- proveEquiv leftEntry rightEntry

      s <- solverToString
      liftIO $ putStrLn s
      return r

  -- print rule
  mapM_ print proofLog
