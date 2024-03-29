{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TemplateHaskell #-}

{-|

The ProveEquiv typeclass class, for proving the equivalence of pairs
of LLVM objects with the Z3 Theorem Prover

-}

{- All monomorphic ProveEquiv instances

  -- primitive types: don't template, unique behavior --

  Bool
  Word32
  Word64
  Word
  Integer -- TODO
  ByteString -- TODO
  ShortByteString

  -- special cases: don't template, unique behavior --

  Name
  (NonEmpty Name) -- TODO
  BasicBlock
  Global
  InstructionMetadata -- TODO: assertEquiv
  Metadata -- TODO: assertEquiv

  -- LLVM types: use template-haskell (example: see instance for Constant) --

  IntegerPredicate
  FloatingPointPredicate
  Linkage
  Visibility
  StorageClass
  CallingConvention
  ParameterAttribute
  AddrSpace
  Type
  Parameter
  GroupID
  FunctionAttribute
  FastMathFlags
  InlineAssembly
  FloatingPointType
  RMWOperation
  MemoryOrdering
  Dialect
  SynchronizationScope
  TailCallKind
  LandingPadClause
  SomeFloat
  Operand
  Constant
  Instruction
  Terminator

  -- Maybe types: use template-haskell (example: see instance for Word32) --

  (Maybe Word32)
  (Maybe ShortByteString)
  (Maybe StorageClass)
  (Maybe Operand)
  (Maybe TailCallKind)
  (Maybe Atomicity)
  (Maybe Name)
  (Maybe Constant)

  -- List types: use template-haskell (example: see instance for Word32) --

  [Word32]
  [Parameter]
  [ParameterAttribute]
  [Constant]
  [Operand]
  [LandingPadClause]
  [Name]
  [Type]
  [Either GroupID FunctionAttribute]
  [(Constant, Name)]
  [(Operand, Name)]
  [(Operand, [ParameterAttribute])]

  -- Tuple types: use template-haskell (example: see instance for ([Parameter], Bool)) --

  (Constant, Name)
  (Operand, Name)
  ([Parameter], Bool)
  (Operand, [ParameterAttribute])
  (SynchronizationScope, MemoryOrdering)

  -- Either types: could template, not many LOC (see Either GroupID FunctionAttribute) --

  (Either GroupID FunctionAttribute)
  (Either InlineAssembly Operand)

  -- Named types: could template, not many LOC (see Named Instruction) --

  (Named Instruction)
  (Named Terminator)
-}

module ProveEquivLegacy where

-- import Data.Traversable (sequence)
import Data.ByteString.UTF8 (toString)
import Data.ByteString.Short (ShortByteString, fromShort, toShort)
import qualified Data.ByteString.Char8 as C
import Data.Word ( Word16, Word32, Word64 )
import qualified Data.Map.Strict as M
import qualified Data.Set as S
import Data.List (intercalate)
import Data.Foldable as F
import qualified GHC.Base as G

import Control.Monad ( unless, zipWithM )
import Control.Monad.IO.Class ( liftIO )
import Control.Monad.Trans.State.Strict ( get, gets, put, modify )
import Control.Monad.Trans.Class ( lift )

--import qualified LLVM.Module as M
import qualified LLVM.AST.Instruction as I
import qualified LLVM.AST as A hiding ( metadata, callingConvention, alignment, returnAttributes, functionAttributes )
import qualified LLVM.AST.Global as A
import qualified LLVM.AST.Visibility as A
import qualified LLVM.AST.Linkage as A
import qualified LLVM.AST.DLL as A
import qualified LLVM.AST.CallingConvention as A
import qualified LLVM.AST.ParameterAttribute as A
import qualified LLVM.AST.FunctionAttribute as FA
import qualified LLVM.AST.AddrSpace as A
import qualified LLVM.AST.InlineAssembly as A
import qualified LLVM.AST.Constant as A
import qualified LLVM.AST.IntegerPredicate as A
import qualified LLVM.AST.RMWOperation as A
import qualified LLVM.AST.FloatingPointPredicate as FPA
--import qualified LLVM.AST.ThreadLocalStorage as A
import qualified LLVM.AST.Float as A

import Z3TypeGenerator

import Z3.Monad

import ProofM
import ProofEnv


-- | Return the object that may be named
unName :: A.Named a -> a
unName (A.Do x) = x
unName (_ A.:= x) = x

-- | Turn a 'Name' into a reasonable string
showName :: A.Name -> String
showName (A.UnName x) = show x
showName (A.Name s) = toString $ fromShort s

-- | Print a named object with the given show-like function
showNamed :: (a -> String) -> A.Named a -> String
showNamed s (nm A.:= x) = "%" ++ showName nm ++ " = " ++ s x
showNamed s (A.Do x) = s x

-- | Typeclass for proving the equivalence of pairs of LLVM (Haskell)
-- objects.
class ProveEquiv a where
  -- | Prove the equivalence of two objects, first by checking in
  -- Haskell, then generating a proof in Z3
  proveEquiv :: a -> a -> ProofM Equiv

{-
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

{-|
Verify that if the fields of the given data constructor are equivalent
then the objects are equivalent.

Say you were comparing a two @PointerType@ objects of type @Type@:

@
data Type =
 ...
 |  PointerType Type AddrSpace
 ...
@

There are Z3 @equiv-Type@ and @equiv-AddrSpace@ functions defined as follows

@
(declare-fun equiv-Type!66 (Type Type) Bool)
(assert (forall ((x!67 Type) (y!68 Type))
  (! (= (= x!67 y!68) (equiv-Type!66 x!67 y!68)) :weight 0)))

(declare-fun equiv-AddrSpace!54 (AddrSpace AddrSpace) Bool)
(assert (forall ((x!55 AddrSpace) (y!56 AddrSpace))
  (! (= (= x!55 y!56) (equiv-AddrSpace!54 x!55 y!56)) :weight 0)))
@

Earlier, the two @Type@s and @AddrSpace@s were proved equivalent,
which produced uninterpreted variabes:

@
(declare-fun p12x () Type)
(declare-fun p12y () Type)
(declare-fun p14x () AddrSpace)
(declare-fun p14y () AddrSpace)
@

and the equivalence assertions that say they were found equivalent

@
(equiv-Type!66 p12x p12y)
(equiv-AddrSpace!54 p14x p14y)
@

@proveEquivGeneral@ generates two new constants that represent the
values of the two @Type@ objects being compared and asserts they
are built from the @Type@ and @AddrSpace@ objects found equivalent previously:

@
(declare-fun p15x () Type)
(declare-fun p15y () Type)
(assert (= p15x (T_PointerType p12x p14x)))
(assert (= p15y (T_PointerType p12y p14y)))
@

The main assertion, which is meant to be unsatisfiable, states that if
the two @Type@ fields are equivalent and the two @AddrSpace@ fields
are equivalent, then it's not the case that the @Type@s being compared
aren't equivalent.  This is built from the list of equivalences passed
into the function:

@
(assert (not (=> (and (equiv-Type!66 p12x p12y)
                      (equiv-AddrSpace!54 p14x p14y))
                 (equiv-Type!66 p15x p15y))))
@

Finally, this returns the  equivalence being established:

@
(equiv-Type!66 p15x p15y)
@

-}
proveEquivGeneral
  :: (ProofEnv -> Z3Constructor) -- ^ Function for getting constructor info from the proof environment
  -> [Equiv]                     -- ^ Proven-equivalent fields
  -> String                      -- ^ Comment for inference
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

{-|  Verify the equivalence of two primitive types (i.e., that can
be compared with Z3's equivalence function).

E.g., for comparing two @Word32@s with value @8@, this generates
something like the following:

Variables for the two literals being compared,
which are kept around globally:

@
(declare-fun p11x () (_ BitVec 32))
(declare-fun p11y () (_ BitVec 32))
@

Constraints on the values of the two literals (what is being compared):

@
(assert (= p11x #x00000008))
(assert (= p11y #x00000008))
@

The equivalence returned is @(= p11x p11y)@, indicating that these two
literals are equal.  Locally, the converse of this is checked and found
unsatisfiable (i.e., it is not possible for these two to not be equal):

@
(assert (not (= p11x p11y)))
@

-}
proveEquivPrimitive
  :: (ProveEquiv a, Eq a, Show a)
  => (ProofEnv -> Sort) -- ^ Function to get the Z3 sort from the proof environment
  -> (a -> ProofM AST) -- ^ Function to build the primitive's value in Z3
  -> String            -- ^ LLVM name of the datatype
  -> a                 -- ^ Primitive object 1
  -> a                 -- ^ Primitive object 2
  -> ProofM Equiv
proveEquivPrimitive getEnvSort toSort name x y = do
  unless (x == y) $ proofFail $
    "Primitives " ++ show x ++ " and " ++ show y ++ " not equivalent"

  logString $ "Verifying " ++ name ++ " " ++ show x ++ " == " ++ show y

  sort <- fromEnv getEnvSort

  equivID <- getNextPID
  z3v1 <- mkPropConst equivID "x" sort
  z3v2 <- mkPropConst equivID "y" sort
  z3equiv <- mkEq z3v1 z3v2 -- the conclusion: that these two things are equivalent

  push
  assert =<< mkEq z3v1 =<< toSort x
  assert =<< mkEq z3v2 =<< toSort y
  assert =<< mkNot z3equiv

  proveZ3Equiv [] Equiv{..} (name ++ " equivalent")

------------------------------------
-- CFG isomorphism proof machinery

-- | A map from basic block names to actual blocks
type BBMap = M.Map A.Name A.BasicBlock

-- | Convert a list of basic blocks to a map keyed to their names
makeBBMap :: [A.BasicBlock] -> BBMap
makeBBMap bbs = M.fromList $ map tokv bbs
  where tokv bb@(A.BasicBlock n _ _) = (n, bb)

-- | Return the list of named successor blocks for a block
bbSuccessors :: A.BasicBlock -> [A.Name]
bbSuccessors (A.BasicBlock _ _ term) = case unName term of
  A.Ret {..}        -> []
  A.CondBr {..}     -> [ trueDest, falseDest ]
  A.Br {..}         -> [ dest ]
  A.Switch {..}     -> defaultDest : map snd dests
  A.IndirectBr {..} -> possibleDests
  t                 -> error $ "unsupported terminator " ++ show t

testVisiting :: A.Name -> ProofM Bool
testVisiting n = ProofM $ lift $ gets $ (S.member n) . visiting
  --EitherState $ \e -> (Right $ S.member n (visiting e), e)

setVisiting :: A.Name -> ProofM ()
setVisiting n = do
  ProofState{..} <- ProofM $ lift get
  ProofM $ lift $ put $ ProofState { visiting = S.insert n visiting, .. }
  -- EitherState $ \e -> (Right (), e { visiting = S.insert n (visiting e) })

resetMatching :: ProofM ()
resetMatching = do
  ProofState{..} <- ProofM $ lift get
  ProofM $ lift $ put $ ProofState { matching = M.empty
                                   , inverse = M.empty
                                   , visiting = S.empty
                                   , .. }
  -- EitherState $ \e -> (Right (), e { matching = M.empty
    --                                             , inverse = M.empty
    --                                             , visiting = S.empty })

getMatching :: ProofM NameMap
getMatching = ProofM $ lift $ gets matching-- EitherState $ \e -> (Right (matching e), e)

addMatch :: A.Name -> A.Name -> ProofM ()
addMatch n1 n2 = do
  --Env{..} <- eitherStateGet
  ProofState{..} <- ProofM $ lift get
  case M.lookup n1 matching of
    Just n2' | n2' /= n2 -> proofFail $
      "tried to match " ++ showName n1 ++ "-" ++
      showName n2 ++ " but already have " ++ showName n1 ++ "-" ++ showName n2'
    _ -> return ()
  case M.lookup n2 inverse of
    Just n1' | n1' /= n1 -> proofFail $
      "tried to match " ++ showName n1 ++ "-" ++
      showName n2 ++ " but already have " ++ showName n1' ++ "-" ++ showName n2
    _ -> return ()
  -- eitherStatePut
  ProofM $ lift $ put $ ProofState { matching = M.insert n1 n2 matching
                                   , inverse = M.insert n2 n1 inverse
                                   , .. }

proveEquivCFG :: [A.BasicBlock] -> [A.BasicBlock] -> ProofM Equiv
proveEquivCFG cfg1@(A.BasicBlock n1 _ _:_) cfg2@(A.BasicBlock n2 _ _:_) = do

  -- Establish isomorphism among the basic blocks
   resetMatching
   visit n1 n2

   -- Compare pairs of matched basic blocks
   matchingNames <- M.assocs <$> getMatching
   cfg1' <- mapM (\(n, _) -> bblookup bbm1 n) $ matchingNames
   cfg2' <- mapM (\(_, n) -> bblookup bbm2 n) $ matchingNames
   proveEquivList c_Cons_BasicBlock c_Nil_BasicBlock "BasicBlock" cfg1' cfg2'
  where
    bbm1 = makeBBMap cfg1
    bbm2 = makeBBMap cfg2
    bblookup m n = case M.lookup n m of
      Just b -> return b
      Nothing -> error $ "lookup of bb " ++ showName n ++ " failed"

    visit nbb1 nbb2 = do
      addMatch nbb1 nbb2
      visited <- testVisiting nbb1
      unless visited $ do
        setVisiting nbb1
        bb1 <- bblookup bbm1 nbb1
        bb2 <- bblookup bbm2 nbb2
        let successors1 = bbSuccessors bb1
            successors2 = bbSuccessors bb2
        unless (length successors1 == length successors2) $
           proofFail $ "basic blocks " ++ show nbb1 ++ " and " ++
               show nbb2 ++ " have a different number of successors"
        zipWithM_ visit successors1 successors2

proveEquivCFG [] [] = proveEquivGeneral c_Nil_BasicBlock [] $ "[] (BasicBlock) equivalent"
proveEquivCFG _ _ = proofFail "[BasicBlock] not equivalent (different lengths)"

----------------------------------
-- Polymorphic typeclass helpers

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

proveEquivEither :: (ProveEquiv a, ProveEquiv b)
                 => (ProofEnv -> Z3Constructor)
                 -> (ProofEnv -> Z3Constructor)
                 -> String
                 -> Either a b
                 -> Either a b
                -> ProofM Equiv
proveEquivEither c_Left _ n (Left a) (Left b) = do
  e <- proveEquiv a b
  proveEquivGeneral c_Left [e] $ "Left (" ++ n ++ ") equivalent"
proveEquivEither _ c_Right n (Right a) (Right b) = do
  e <- proveEquiv a b
  proveEquivGeneral c_Right [e] $ "Right (" ++ n ++ ") equivalent"
proveEquivEither _ _ n _ _ = proofFail $ "Either " ++ n ++ " not equivalent"

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

proveEquivTuple :: (ProveEquiv a, ProveEquiv b)
                => (ProofEnv -> Z3Constructor)
                -> String
                -> (a, b)
                -> (a, b)
                -> ProofM Equiv
proveEquivTuple c_Tup n (a1, a2) (b1, b2) = do
  fst_eq <- proveEquiv a1 b1
  snd_eq <- proveEquiv a2 b2
  proveEquivGeneral c_Tup [fst_eq, snd_eq] $ "Tuple " ++ n ++ " equivalent"

-}

--------------------
-- Primitive types

instance ProveEquiv Bool where
  proveEquiv = proveEquivPrimitive t_Bool mkBool "Bool"

instance ProveEquiv Word16 where
  proveEquiv = proveEquivPrimitive t_Word16
                                   (\x -> mkBitvector 16 (toInteger x))
                                   "Word16"

instance ProveEquiv Word32 where
  proveEquiv = proveEquivPrimitive t_Word32
                                   (\x -> mkBitvector 32 (toInteger x))
                                   "Word32"

instance ProveEquiv (Maybe Word32) where
  proveEquiv = proveEquivMaybe
    c_MW_Just_Word32 c_MW_Nothing_Word32 "Word32"

instance ProveEquiv [Word32] where
  proveEquiv = proveEquivList c_Cons_Word32 c_Nil_Word32 "Word32"

instance ProveEquiv Integer where
  proveEquiv = proveEquivPrimitive t_Integer mkInteger "Integer"

instance ProveEquiv Word64 where
  proveEquiv = proveEquivPrimitive t_Word64 (\x -> mkBitvector 64 (toInteger x)) "Word64"

instance ProveEquiv Word where
  proveEquiv = proveEquivPrimitive t_Word (\x -> mkBitvector 32 (toInteger x)) "Word"

instance ProveEquiv C.ByteString where
  proveEquiv = proveEquivPrimitive t_ByteString (\x -> mkString $ C.unpack x) "ByteString"

instance ProveEquiv ShortByteString where
  proveEquiv = proveEquivPrimitive t_ShortByteString (\x -> mkString $ C.unpack $ fromShort x) "ShortByteString"

instance ProveEquiv (Maybe ShortByteString) where
  proveEquiv = proveEquivMaybe
    c_MSBS_Just_ShortByteString c_MSBS_Nothing_ShortByteString "ShortByteString"

instance ProveEquiv Float where
  proveEquiv _ _ = proofFail "FIXME: Float unsupported"

instance ProveEquiv Double where
  proveEquiv _ _ = proofFail "FIXME: Double unsupported"


------------------------------------
-- LLVM types making up a Function

{-
instance ProveEquiv A.IntegerPredicate where
  proveEquiv a b
    | a == b    = proveEquivGeneral c [] (show a ++ " IntegerPredicate equivalent")
    | otherwise = proofFail "IntegerPredicate"
    where c = case a of
                A.EQ  -> c_IP_EQ
                A.NE  -> c_IP_NE
                A.UGT -> c_IP_UGT
                A.UGE -> c_IP_UGE
                A.ULT -> c_IP_ULT
                A.ULE -> c_IP_ULE
                A.SGT -> c_IP_SGT
                A.SGE -> c_IP_SGE
                A.SLT -> c_IP_SLT
                A.SLE -> c_IP_SLE
-}

{-
instance ProveEquiv FPA.FloatingPointPredicate where
  proveEquiv a b
    | a == b    = proveEquivGeneral c [] (show a ++ " FloatingPointPredicate equivalent")
    | otherwise = proofFail "FloatingPointPredicate"
    where c = case a of
                FPA.False -> c_FPP_False
                FPA.OEQ   -> c_FPP_OEQ
                FPA.OGT   -> c_FPP_OGT
                FPA.OGE   -> c_FPP_OGE
                FPA.OLT   -> c_FPP_OLT
                FPA.OLE   -> c_FPP_OLE
                FPA.ONE   -> c_FPP_ONE
                FPA.ORD   -> c_FPP_ORD
                FPA.UNO   -> c_FPP_UNO
                FPA.UEQ   -> c_FPP_UEQ
                FPA.UGT   -> c_FPP_UGT
                FPA.UGE   -> c_FPP_UGE
                FPA.ULT   -> c_FPP_ULT
                FPA.ULE   -> c_FPP_ULE
                FPA.UNE   -> c_FPP_UNE
                FPA.True  -> c_FPP_True
-}

{-
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
                A.Import -> c_SC_Import
                A.Export -> c_SC_Export

-}

instance ProveEquiv (Maybe A.StorageClass) where
  proveEquiv = proveEquivMaybe
    c_MSC_Just_StorageClass c_MSC_Nothing_StorageClass "StorageClass"

instance ProveEquiv (Maybe A.TailCallKind) where
  proveEquiv = proveEquivMaybe
    c_MTCK_Just_TailCallKind c_MTCK_Nothing_TailCallKind "TailCallKind"

{-
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
                _ -> error "unreachable pattern match"

-}

{-
instance ProveEquiv A.ParameterAttribute where
  proveEquiv (A.StringAttribute k1 v1) (A.StringAttribute k2 v2) = do
    ek <- proveEquiv k1 k2
    ev <- proveEquiv v1 v2
    proveEquivGeneral c_PA_StringAttribute [ek, ev]
      "StringAttribute parameter attribute equivalent"
  proveEquiv (A.Alignment a1) (A.Alignment a2) = do
    e <- proveEquiv a1 a2
    proveEquivGeneral c_PA_Alignment [e]
      "Alignment parameter attribute equivalent"
  proveEquiv (A.Dereferenceable d1) (A.Dereferenceable d2) = do
    e <- proveEquiv d1 d2
    proveEquivGeneral c_PA_Dereferenceable [e]
      "Dereferenceable parameter attribute equivalent"
  proveEquiv (A.DereferenceableOrNull d1) (A.DereferenceableOrNull d2) = do
    e <- proveEquiv d1 d2
    proveEquivGeneral c_PA_DereferenceableOrNull [e]
      "DereferenceableOrNull parameter attribute equivalent"
  proveEquiv a b
    | a == b    = proveEquivGeneral c []
                        (show a ++ " parameter attribute equivalent")
    | otherwise = proofFail "ParameterAttribute"
    where c = case a of
                A.ZeroExt    -> c_PA_ZeroExt
                A.SignExt    -> c_PA_SignExt
                A.InReg      -> c_PA_InReg
                A.SRet       -> c_PA_SRet
                A.NoAlias    -> c_PA_NoAlias
                A.ByVal      -> c_PA_ByVal
                A.NoCapture  -> c_PA_NoCapture
                A.Nest       -> c_PA_Nest
                A.ReadNone   -> c_PA_ReadNone
                A.ReadOnly   -> c_PA_ReadOnly
                A.WriteOnly  -> c_PA_WriteOnly
                A.ImmArg     -> c_PA_ImmArg
                A.InAlloca   -> c_PA_InAlloca
                A.NonNull    -> c_PA_NonNull
                A.Returned   -> c_PA_Returned
                A.SwiftSelf  -> c_PA_SwiftSelf
                A.SwiftError -> c_PA_SwiftError
                _ -> error "unreachable pattern match"

-}

instance ProveEquiv [A.ParameterAttribute] where
  proveEquiv = proveEquivList
    c_Cons_ParameterAttribute c_Nil_ParameterAttribute "ParameterAttribute"

-- instance ProveEquiv A.AddrSpace where
--   proveEquiv (A.AddrSpace a1) (A.AddrSpace a2) = do
--     e <- proveEquiv a1 a2
--     proveEquivGeneral c_AS_AddrSpace [e] "AddrSpace equivalent"

{-
instance ProveEquiv A.FloatingPointType where
  proveEquiv ft1 ft2 | ft1 == ft2 = proveEquivGeneral c [] (show ft1)
                     | otherwise = proofFail $ show ft1 ++ " /= " ++ show ft2
    where c = case ft1 of A.HalfFP      -> c_FPT_HalfFP
                          A.FloatFP     -> c_FPT_FloatFP
                          A.DoubleFP    -> c_FPT_DoubleFP
                          A.FP128FP     -> c_FPT_FP128FP
                          A.X86_FP80FP  -> c_FPT_X86_FP80FP
                          A.PPC_FP128FP -> c_FPT_PPC_FP128FP
-}

{-
instance ProveEquiv A.Type where -- FIXME: partial definition
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

  proveEquiv (A.FloatingPointType t1) (A.FloatingPointType t2) = do
    typ <- proveEquiv t1 t2
    proveEquivGeneral c_T_FloatingPointType [typ] "FloatingPointType equivalent"

  proveEquiv t1 t2 = proofFail $
      "Type equivalence failed on " ++ show t1 ++ " and " ++ show t2

-}

-- Add to the proof state matching maps and add something in Z3 asserting
-- that these two names are equivalent under the forward/backward functions.
instance ProveEquiv A.Name where
  proveEquiv n1@(A.Name _) n2@(A.Name _) = do
    proveCongruence n1 n2
    e <- assertEquivDefault $ toShort (C.pack "a")
    proveEquivGeneral c_N_Name [e] "Name equivalent"
  proveEquiv n1@(A.UnName _) n2@(A.UnName _) = do
    assertMatch c_N_UnName n1 n2
    e <- assertEquivDefault $ (1 :: Word)
    proveEquivGeneral c_N_UnName [e] "UnName equivalent"
  proveEquiv _ _ = proofFail "Name != UnName"

instance ProveEquiv (Maybe A.Name) where
  proveEquiv = proveEquivMaybe
    c_MN_Just_Name c_MN_Nothing_Name "Name"

{-
instance ProveEquiv A.Parameter where
  proveEquiv (A.Parameter t1 n1 pa1) (A.Parameter t2 n2 pa2) = do
    t_eq <- proveEquiv t1 t2
    n_eq <- proveEquiv n1 n2
    pa_eq <- proveEquiv pa1 pa2
    proveEquivGeneral c_P_Parameter [t_eq, n_eq, pa_eq] "Parameter equivalent"
-}

instance ProveEquiv ([A.Parameter], Bool) where
  proveEquiv = proveEquivTuple2
    c_Tup2_List_Parameter_Bool "([A.Parameter], Bool)"

instance ProveEquiv (A.Constant, A.Name) where
  proveEquiv = proveEquivTuple2
    c_Tup2_Constant_Name "(Constant, Name)"

instance ProveEquiv [(A.Constant, A.Name)] where
  proveEquiv = proveEquivList
    c_Cons_Tup2_Constant_Name c_Nil_Tup2_Constant_Name "(Constant, Name)"

instance ProveEquiv (A.Operand, [A.ParameterAttribute]) where
  proveEquiv = proveEquivTuple2
    c_Tup2_Operand_List_ParameterAttribute "(Operand, [ParameterAttribute])"

instance ProveEquiv [(A.Operand, [A.ParameterAttribute])] where
  proveEquiv = proveEquivList
    c_Cons_Tup2_Operand_List_ParameterAttribute
    c_Nil_Tup2_Operand_List_ParameterAttribute
    "(Operand, [ParameterAttribute])"

instance ProveEquiv (A.Operand, A.Name) where
  proveEquiv = proveEquivTuple2 c_Tup2_Operand_Name "(Operand, Name)"

instance ProveEquiv [(A.Operand, A.Name)] where
  proveEquiv = proveEquivList
    c_Cons_Tup2_Operand_Name
    c_Nil_Tup2_Operand_Name
    "(Operand, Name)"

instance ProveEquiv [A.Name] where
  proveEquiv = proveEquivList c_Cons_Name c_Nil_Name "Name"

instance ProveEquiv [A.Operand] where
  proveEquiv = proveEquivList c_Cons_Operand c_Nil_Operand "Operand"

instance ProveEquiv [A.LandingPadClause] where
  proveEquiv = proveEquivList
    c_Cons_LandingPadClause
    c_Nil_LandingPadClause
    "LandingPadClause"

instance ProveEquiv (G.NonEmpty A.Name) where
  proveEquiv _ _ = proofFail ""

-- instance ProveEquiv FA.GroupID where
--   proveEquiv (FA.GroupID i1) (FA.GroupID i2) = do
--     e <- proveEquiv i1 i2
--     proveEquivGeneral c_GID_GroupID [e] $ "GroupID"

-- instance ProveEquiv FA.FunctionAttribute where
--   proveEquiv (FA.StringAttribute k1 v1) (FA.StringAttribute k2 v2) = do
--     ek <- proveEquiv k1 k2
--     ev <- proveEquiv v1 v2
--     proveEquivGeneral c_FA_StringAttribute [ek, ev]
--       "StringAttribute function attribute equivalent"
--   proveEquiv (FA.StackAlignment a1) (FA.StackAlignment a2) = do
--     e <- proveEquiv a1 a2
--     proveEquivGeneral c_FA_StackAlignment [e]
--       "StackAlignment function attribute equivalent"
--   proveEquiv (FA.AllocSize a1 b1) (FA.AllocSize a2 b2) = do
--     ea <- proveEquiv a1 a2
--     eb <- proveEquiv b1 b2
--     proveEquivGeneral c_FA_AllocSize [ea, eb]
--       "AllocSize function attribute equivalent"
--   proveEquiv a b
--     | a == b    = proveEquivGeneral c []
--                         (show a ++ " function attribute equivalent")
--     | otherwise = proofFail "FunctionAttribute"
--     where c = case a of
--                 FA.NoReturn            -> c_FA_NoReturn
--                 FA.NoUnwind            -> c_FA_NoUnwind
--                 FA.ReadNone            -> c_FA_ReadNone
--                 FA.ReadOnly            -> c_FA_ReadOnly
--                 FA.NoInline            -> c_FA_NoInline
--                 FA.NoRecurse           -> c_FA_NoRecurse
--                 FA.AlwaysInline        -> c_FA_AlwaysInline
--                 FA.MinimizeSize        -> c_FA_MinimizeSize
--                 FA.OptimizeForSize     -> c_FA_OptimizeForSize
--                 FA.OptimizeNone        -> c_FA_OptimizeNone
--                 FA.StackProtect        -> c_FA_StackProtect
--                 FA.StackProtectReq     -> c_FA_StackProtectReq
--                 FA.StackProtectStrong  -> c_FA_StackProtectStrong
--                 FA.StrictFP            -> c_FA_StrictFP
--                 FA.NoRedZone           -> c_FA_NoRedZone
--                 FA.NoImplicitFloat     -> c_FA_NoImplicitFloat
--                 FA.Naked               -> c_FA_Naked
--                 FA.InlineHint          -> c_FA_InlineHint
--                 FA.ReturnsTwice        -> c_FA_ReturnsTwice
--                 FA.UWTable             -> c_FA_UWTable
--                 FA.NonLazyBind         -> c_FA_NonLazyBind
--                 FA.Builtin             -> c_FA_Builtin
--                 FA.NoBuiltin           -> c_FA_NoBuiltin
--                 FA.Cold                -> c_FA_Cold
--                 FA.JumpTable           -> c_FA_JumpTable
--                 FA.NoDuplicate         -> c_FA_NoDuplicate
--                 FA.SanitizeAddress     -> c_FA_SanitizeAddress
--                 FA.SanitizeHWAddress   -> c_FA_SanitizeHWAddress
--                 FA.SanitizeThread      -> c_FA_SanitizeThread
--                 FA.SanitizeMemory      -> c_FA_SanitizeMemory
--                 FA.Speculatable        -> c_FA_Speculatable
--                 FA.WriteOnly           -> c_FA_WriteOnly
--                 FA.ArgMemOnly          -> c_FA_ArgMemOnly
--                 FA.Convergent          -> c_FA_Convergent
--                 FA.SafeStack           -> c_FA_SafeStack
--                 FA.InaccessibleMemOnly -> c_FA_InaccessibleMemOnly
--                 FA.InaccessibleMemOrArgMemOnly -> c_FA_InaccessibleMemOrArgMemOnly
--                 _ -> error "unreachable pattern match"

instance ProveEquiv (Either FA.GroupID FA.FunctionAttribute) where
  proveEquiv = proveEquivEither
    c_EGIDFA_Left_GroupID_FunctionAttribute
    c_EGIDFA_Right_GroupID_FunctionAttribute
    "GroupID FunctionAttribute"

instance ProveEquiv [Either FA.GroupID FA.FunctionAttribute] where
  proveEquiv = proveEquivList
    c_Cons_Either_GroupID_FunctionAttribute
    c_Nil_Either_GroupID_FunctionAttribute
    "FunctionAttribute"

instance ProveEquiv (Either A.InlineAssembly A.Operand) where
  proveEquiv = proveEquivEither
    c_EIAO_Left_InlineAssembly_Operand
    c_EIAO_Right_InlineAssembly_Operand
    "InlineAssembly Operand"

{-| proveEquivGeneral with arguments in a different order -}
proveEquivAlgebraic :: (ProofEnv -> Z3Constructor) -- ^ Function for getting constructor info from the proof environment
                    -> String                      -- ^ Comment for inference rule
                    -> [Equiv]                     -- ^ Proven-equivalent fields, e.g., from proveEquiv
                    -> ProofM Equiv
proveEquivAlgebraic ctor note equivs = proveEquivGeneral ctor equivs note


instance ProveEquiv (Maybe A.Constant) where
  proveEquiv = proveEquivMaybe
    c_MC_Just_Constant c_MC_Nothing_Constant "Constant"

instance ProveEquiv [A.Constant] where
  proveEquiv = proveEquivList c_Cons_Constant c_Nil_Constant "Constant"

-- instance ProveEquiv A.Instruction where
--   proveEquiv _ _ = assertEquiv t_Instruction
--
-- instance ProveEquiv (A.Named A.Instruction) where
--   proveEquiv = proveEquivNamed
--     c_NI_infix_Instruction c_NI_Do_Instruction "Instruction"
--
-- instance ProveEquiv [(A.Named A.Instruction)] where
--   proveEquiv = proveEquivList c_Cons_Named_Instruction c_Nil_Named_Instruction "Named Instruction"

-- -- FIXME
-- instance ProveEquiv A.Terminator where
--   proveEquiv t1@(I.Unreachable _) t2@(I.Unreachable _) = do
--     meta <- assertEquivDefault True
--     proveEquivGeneral c_T_Unreachable [meta] $ show t1 ++ " == " ++ show t2
--
--   proveEquiv _ _ = assertEquivDefault $ I.Unreachable []

instance ProveEquiv (A.Named A.Terminator) where
  proveEquiv = proveEquivNamed
    c_NT_infix_Terminator c_NT_Do_Terminator "Terminator"

instance ProveEquiv I.InstructionMetadata where
  proveEquiv _ _ = proofFail ""

{-
instance ProveEquiv (A.MDRef A.MDNode) where
  proveEquiv _ _ = proveEquiv True True -- FIXME: add s_MDRef_MDNode to env (currently bool)
-}

{-
instance ProveEquiv (ShortByteString, A.MDRef A.MDNode) where
  proveEquiv = proveEquivTuple2
    c_Tup2_ShortByteString_MDRef_MDNode "(ShortByteString, MDRef MDNode)"

instance ProveEquiv [(ShortByteString, A.MDRef A.MDNode)] where
  proveEquiv = proveEquivList
    c_Cons_Tup2_ShortByteString_MDRef_MDNode
    c_Nil_Tup2_ShortByteString_MDRef_MDNode
    "List (ShortByteString, MDRef MDNode)"
-}

{-
instance ProveEquiv A.Global where
  proveEquiv f1@A.Function{} f2@A.Function{} = do
    fields <- sequence
      [ proveField A.linkage
      , proveField A.visibility
      , proveField A.dllStorageClass
      , proveField A.callingConvention
      , proveField A.returnAttributes
      , proveField A.returnType
      , proveField A.name
      , proveField A.parameters
      , proveField A.functionAttributes
      , proveField A.section
      , proveField A.comdat
      , proveField A.alignment
      , proveField A.garbageCollectorName
      , proveField A.prefix
      , proveEquiv [] ([] :: [A.BasicBlock]) -- Disable basic block comparison
      , proveField A.personalityFunction
      , proveEquiv True True -- proveField A.metadata
      ]
    proveEquivGeneral c_G_Function fields $
      "functions " ++ (showName $ A.name f1) ++ " and " ++
      (showName $ A.name f2) ++ " equivalent"
    where proveField record = proveEquiv (record f1) (record f2)


  proveEquiv _ _ = proofFail "Function"

-}

proveEquivMaybe :: (ProveEquiv a)
                => (ProofEnv -> Z3Constructor) -- ^ Just constructor
                -> (ProofEnv -> Z3Constructor) -- ^ Nothing constructor
                -> String -- ^ Log message
                -> Maybe a
                -> Maybe a
                -> ProofM Equiv
proveEquivMaybe c_Just _ n (Just a) (Just b) = do
  e <- proveEquiv a b
  proveEquivGeneral c_Just [e] $ "Just " ++ n ++ " equivalent"
proveEquivMaybe _ c_Nothing n Nothing Nothing =
  proveEquivGeneral c_Nothing [] $ "Nothing (" ++ n ++ ") equivalent"
proveEquivMaybe _ _ n _ _ = proofFail $ "Maybe " ++ n ++ " not equivalent"

proveEquivNamed :: (ProveEquiv a)
                => (ProofEnv -> Z3Constructor)
                -> (ProofEnv -> Z3Constructor)
                -> String
                -> (A.Named a)
                -> (A.Named a)
                -> ProofM Equiv
proveEquivNamed _ c_Do n (A.Do a) (A.Do b) = do
  e <- proveEquiv a b
  proveEquivGeneral c_Do [e] $ "Nameless " ++ n ++ " equivalent"
proveEquivNamed c_Named _ n (n1 A.:= a) (n2 A.:= b) = do
  e1 <- proveEquiv n1 n2
  e2 <- proveEquiv a b
  proveEquivGeneral c_Named [e1, e2] $ "Named (" ++ n ++ ") equivalent"
proveEquivNamed _ _ n _ _ = proofFail $ "Named " ++ n ++ " not equivalent"

proveEquivEither :: (ProveEquiv a, ProveEquiv b)
                 => (ProofEnv -> Z3Constructor)
                 -> (ProofEnv -> Z3Constructor)
                 -> String
                 -> Either a b
                 -> Either a b
                -> ProofM Equiv
proveEquivEither c_Left _ n (Left a) (Left b) = do
  e <- proveEquiv a b
  proveEquivGeneral c_Left [e] $ "Left (" ++ n ++ ") equivalent"
proveEquivEither _ c_Right n (Right a) (Right b) = do
  e <- proveEquiv a b
  proveEquivGeneral c_Right [e] $ "Right (" ++ n ++ ") equivalent"
proveEquivEither _ _ n _ _ = proofFail $ "Either " ++ n ++ " not equivalent"

{-| Prove two generic lists are equivalent

  Arguments match up with @proveEquiv@ to allow the following usage:

@
proveEquiv = proveEquivList
    c_Cons_Tup2_ShortByteString_MDRef_MDNode
    c_Nil_Tup2_ShortByteString_MDRef_MDNode
    "List (ShortByteString, MDRef MDNode)"
@
-}
proveEquivList :: (ProveEquiv a)
               => (ProofEnv -> Z3Constructor) -- ^ List Cons constructor
               -> (ProofEnv -> Z3Constructor) -- ^ List Nil constructor
               -> String -- ^ Text string describing list type for logging
               -> [a]
               -> [a]
               -> ProofM Equiv
proveEquivList c_Cons c_Nil n (a:as) (b:bs) = do
  tail_equiv <- proveEquivList c_Cons c_Nil n as bs
  head_equiv <- proveEquiv a b
  proveEquivGeneral c_Cons [head_equiv, tail_equiv] $
    "Cons " ++ n ++ " equivalent"

proveEquivList _ c_Nil n [] [] =
  proveEquivGeneral c_Nil [] $ "[] (" ++ n ++ ") equivalent"

proveEquivList _ _ n _ _ = proofFail $ "[" ++ n ++ "] not equivalent"

proveEquivTuple2 :: (ProveEquiv a, ProveEquiv b)
                 => (ProofEnv -> Z3Constructor)
                 -> String
                 -> (a, b)
                 -> (a, b)
                 -> ProofM Equiv
proveEquivTuple2 c_Tup n (a1, a2) (b1, b2) = do
  fst_eq <- proveEquiv a1 b1
  snd_eq <- proveEquiv a2 b2
  proveEquivGeneral c_Tup [fst_eq, snd_eq] $ "Tuple " ++ n ++ " equivalent"

proveEquivPrimitive
  :: (ProveEquiv a, Eq a, Show a)
  => (ProofEnv -> Z3Type) -- ^ Function to get the Z3 sort from the proof environment
  -> (a -> ProofM AST) -- ^ Function to build the primitive's value in Z3
  -> String            -- ^ LLVM name of the datatype
  -> a                 -- ^ Primitive object 1
  -> a                 -- ^ Primitive object 2
  -> ProofM Equiv
proveEquivPrimitive getEnvType toSort name x y = do
  unless (x == y) $ proofFail $
    "Primitives " ++ show x ++ " and " ++ show y ++ " not equivalent"

  Z3Type{..} <- fromEnv getEnvType

  equivID <- getNextPID
  z3v1 <- mkPropConst equivID "x" sort
  z3v2 <- mkPropConst equivID "y" sort

  assert =<< mkEq z3v1 =<< toSort x
  assert =<< mkEq z3v2 =<< toSort y

  z3equiv <- mkApp equivFunc [z3v1, z3v2]

  logString $ show x ++ " == " ++ show y ++ " : " ++ name

  return Equiv{..}

proveEquivGeneral
  :: (ProofEnv -> Z3Constructor) -- ^ Function for getting constructor info from the proof environment
  -> [Equiv]                     -- ^ Proven-equivalent fields
  -> String                      -- ^ Comment for inference
  -> ProofM Equiv
proveEquivGeneral getCons fields comment = do
  let v1fields = map z3v1 fields
      v2fields = map z3v2 fields
      -- premises = map z3equiv fields
      premiseIDs = map equivID fields

  (consf, cname, Z3Type{..}) <- fromEnv getCons

  -- Assemble the fields for the Equiv
  equivID <- getNextPID
  z3v1 <- mkPropConst equivID "x" sort
  z3v2 <- mkPropConst equivID "y" sort
  z3equiv <- mkApp equivFunc [z3v1, z3v2]

  assert =<< mkEq z3v1 =<< mkApp consf v1fields -- Build v1 from fields
  assert =<< mkEq z3v2 =<< mkApp consf v2fields -- Build v2 from fields

  let equiv = Equiv{..}

  logString $
    "Verifying " ++ cname ++ " " ++ intercalate " " (map show premiseIDs)
  logInference premiseIDs (PropEquiv equiv) comment

  return equiv

{-|

Assert an equivalence rather than asking Z3 to establish it.  Generates
something like

@
(declare-fun p15y () List_BasicBlock)
(declare-fun p15x () List_BasicBlock)
(assert (equiv-List_BasicBlock!210 p15x p15y))
@

-}
assertEquiv
  :: (ProofEnv -> Z3Type) -- ^ The type of objects to set equivalent
  -> ProofM Equiv
assertEquiv getType = do
  Z3Type{..} <- fromEnv getType

  equivID <- getNextPID
  z3v1 <- mkPropConst equivID "x" sort
  z3v2 <- mkPropConst equivID "y" sort
  z3equiv <- mkApp equivFunc [z3v1, z3v2]

  assert z3equiv

  return Equiv{..}

-- Runtime-friendly "ignore" option for ProveEquiv instances
-- NOTE: avoid using on A.Name objects
-- NOTE: when used for the fallthrough case of an incomplete ProveEquiv
-- instance, assertEquivDefault must call proveEquiv on a constructor
-- which IS implemented by the instance, to avoid infinite recursion
assertEquivDefault :: (ProveEquiv a) => a -> ProofM Equiv
assertEquivDefault x = proveEquiv x x

{-
vacuousEquiv :: (ProofEnv -> Z3Type) -> ProofM Equiv
vacuousEquiv getType = do
  Z3Type{..} <- fromEnv getType
  equivID <- getNextPID
  z3v1 <- mkPropConst equivID "x" sort
  z3v2 <- mkPropConst equivID "y" sort

  t <- mkTrue
  z3equiv <- mkEq t t

  return Equiv{..}

-}


instance ProveEquiv A.Global where
  proveEquiv f1@A.Function{} f2@A.Function{} = do
    liftIO $ putStrLn $ "ProveEquiv " ++ showName (A.name f1) ++ " " ++ showName (A.name f2)
    resetMatching
    fields <- sequence [ proveField A.linkage
                       , proveField A.visibility
                       , proveField A.dllStorageClass
                       , proveField A.callingConvention
                       , proveField A.returnAttributes
                       , proveField A.returnType
                       , assertEquiv t_Name
                       , proveField A.parameters
                       , proveField A.functionAttributes
                       , proveField A.section
                       , proveField A.comdat
                       , proveField A.alignment
                       , proveField A.garbageCollectorName
                       , proveField A.prefix
                       , proveEquivCFG (A.basicBlocks f1) (A.basicBlocks f2)
                       , proveField A.personalityFunction
                       , assertEquivDefault True
                       ]
    proveEquivGeneral c_G_Function fields $
      "functions " ++ (showName $ A.name f1) ++ " and " ++
      (showName $ A.name f2) ++ " equivalent"
    where proveField record = proveEquiv (record f1) (record f2)

  proveEquiv _ _ = proofFail "Function"


------------------------------------
-- CFG isomorphism proof machinery

-- | A map from basic block names to actual blocks
type BBMap = M.Map A.Name A.BasicBlock

-- | Convert a list of basic blocks to a map keyed to their names
makeBBMap :: [A.BasicBlock] -> BBMap
makeBBMap bbs = M.fromList $ map tokv bbs
  where tokv bb@(A.BasicBlock n _ _) = (n, bb)

-- | Return the list of named successor blocks for a block
bbSuccessors :: A.BasicBlock -> [A.Name]
bbSuccessors (A.BasicBlock _ _ term) = case unName term of
  A.Ret {..}        -> []
  A.CondBr {..}     -> [ trueDest, falseDest ]
  A.Br {..}         -> [ dest ]
  A.Switch {..}     -> defaultDest : map snd dests -- FIXME: assumes equal consts
  A.IndirectBr {..} -> possibleDests
  t                 -> error $ "unsupported terminator " ++ show t

proveEquivCFG :: [A.BasicBlock] -> [A.BasicBlock] -> ProofM Equiv
proveEquivCFG cfg1@(A.BasicBlock n1 _ _:_) cfg2@(A.BasicBlock n2 _ _:_) = do

  -- Try to establish an isomorphism among the basic blocks
   -- resetMatching
   matchedPairs <- visit n1 n2

   -- Dump the matching information (both forward and back) into Z3-land
   -- and add assertions that say the back(forward n) = n for all n
   -- (enumerate them explicitly)

   logString $ "basic block matching " ++
     intercalate ", "
        (map (\(a,b) -> showName a ++ "-" ++ showName b) matchedPairs)

   -- A list of matched pairs of basic blocks
   bbs <- mapM (\(l, r) -> (,) <$> (bblookup bbm1 l) <*> (bblookup bbm2 r)) matchedPairs

   pairedEquivs <- mapM (uncurry proveEquiv) bbs
   blocksEquiv <- mkAnd (map z3equiv pairedEquivs)

   Z3Type{..} <- fromEnv t_List_BasicBlock

   equivID <- getNextPID
   z3v1 <- mkPropConst equivID "x" sort
   z3v2 <- mkPropConst equivID "y" sort
   bbEquiv <- mkApp equivFunc [z3v1, z3v2]

   z3equiv <- mkEq bbEquiv blocksEquiv

   assert z3equiv

  --   logSMTLIB =<< solverToString

   return Equiv{..}

   -- FIXME: turn the matched basic blocks into an equivalence that
   -- can be returned

   -- Compare pairs of matched basic blocks
{-   matchingNames <- M.assocs <$> getMatching
   cfg1' <- mapM (\(n, _) -> bblookup bbm1 n) $ matchingNames
   cfg2' <- mapM (\(_, n) -> bblookup bbm2 n) $ matchingNames
   proveEquivList c_Cons_BasicBlock c_Nil_BasicBlock "BasicBlock" cfg1' cfg2'
-}

  where
    bbm1 = makeBBMap cfg1
    bbm2 = makeBBMap cfg2
    bblookup m n = case M.lookup n m of
      Just b -> return b
      Nothing -> error $ "lookup of bb " ++ showName n ++ " failed"

    visit nbb1 nbb2 = do
      addMatch nbb1 nbb2
      visited <- testVisiting nbb1
      if visited
        then return []
        else do
          setVisiting nbb1
          bb1 <- bblookup bbm1 nbb1
          bb2 <- bblookup bbm2 nbb2
          let successors1 = bbSuccessors bb1
              successors2 = bbSuccessors bb2
          unless (length successors1 == length successors2) $
             proofFail $ "basic blocks " ++ show nbb1 ++ " and " ++
                 show nbb2 ++ " have a different number of successors"
          matches <- zipWithM visit successors1 successors2
          return $ (nbb1, nbb2):(concat matches)

proveEquivCFG _ _ = proofFail "[BasicBlock] not equivalent (different lengths)"

instance ProveEquiv A.BasicBlock where
  proveEquiv (A.BasicBlock n1 instr1 term1) (A.BasicBlock n2 instr2 term2) = do

    -- both check the matching function in the proof state
    -- and exhibit Z3 assertions that the names match up
    fields <- sequence [ proveEquiv n1 n2
                       , proveEquiv instr1 instr2
                       , proveEquiv term1 term2
                       ]
    proveEquivGeneral c_BB_BasicBlock fields $
      "BasicBlock " ++ showName n1 ++ " " ++ showName n2

instance ProveEquiv [A.Named I.Instruction] where
  proveEquiv = proveEquivList c_Cons_Named_Instruction
                              c_Nil_Named_Instruction
                              "Named Instruction"

instance ProveEquiv (A.Named I.Instruction) where
  proveEquiv = proveEquivNamed c_NI_infix_Instruction c_NI_Do_Instruction "Instruction"
  -- proveEquiv (n1 A.:= i1) (n2 A.:= i2) = do
  --   fields <- T.sequence [proveEquiv n1 n2, proveEquiv i1 i2]
  --   proveEquivGeneral c_NI_infix_Instruction fields $
  --      "Named instruction " ++ showName n1 ++ " " ++ showName n2
  --
  -- proveEquiv (A.Do i1) (A.Do i2) = do
  --   field <- proveEquiv i1 i2
  --   proveEquivGeneral c_NI_Do_Instruction [field] $ "Unnamed instruction "
  --
  -- proveEquiv _ _ = proofFail "named vs unnamed instruction"

-- instance ProveEquiv I.Instruction where
--
--   proveEquiv i1@I.Alloca{} i2@I.Alloca{} = do
--     fields <- sequence [ proveField I.allocatedType
--                        , proveField I.numElements
--                        , proveField I.alignment
--                        , assertEquivDefault True
--                        ]
--     proveEquivGeneral c_I_Alloca fields $ show i1 ++ " == " ++ show i2
--     where proveField record = proveEquiv (record i1) (record i2)
--
--   proveEquiv i1@I.Store{} i2@I.Store{} = do
--     fields <- sequence [ proveField I.volatile
--                        , proveField I.address
--                        , proveField I.value
--                        , proveField I.maybeAtomicity
--                        , proveField I.alignment
--                        , assertEquivDefault True
--                        ]
--     proveEquivGeneral c_I_Store fields $ show i1 ++ " == " ++ show i2
--     where proveField record = proveEquiv (record i1) (record i2)
--
--   proveEquiv i1@(I.BitCast o1 t1 _) i2@(I.BitCast o2 t2 _) = do
--     operands <- proveEquiv o1 o2
--     types <- proveEquiv t1 t2
--     meta <- assertEquivDefault True
--     proveEquivGeneral c_I_BitCast [operands, types, meta] $
--       show i1 ++ " == " ++ show i2
--
--   proveEquiv i1 i2 = do
--     logString $ "FIXME: Unsupported instructions; treated as equivalent"
--     logString $ "FIXME: Comparing " ++ show i1
--     logString $ "FIXME: to " ++ show i2
--     assertEquivDefault $ I.BitCast (A.ConstantOperand A.TokenNone) A.VoidType []

-- instance ProveEquiv A.Operand where
--   proveEquiv (A.ConstantOperand c1) (A.ConstantOperand c2) = do
--     field <- proveEquiv c1 c2
--     proveEquivGeneral c_O_ConstantOperand [field] $
--       "ConstantOperands " ++ show c1 ++ " == " ++ show c2
--
--   proveEquiv l1@(A.LocalReference t1 n1) l2@(A.LocalReference t2 n2) = do
--     types <- proveEquiv t1 t2
--     names <- proveEquiv n1 n2
--     proveEquivGeneral c_O_LocalReference [types, names] $
--       "LocalReferences " ++ show l1 ++ " == " ++ show l2
--
--   proveEquiv o1 o2 = do
--     logString $ "FIXME: ignoring operands " ++ show o1 ++ " and " ++ show o2
--     assertEquivDefault $ A.ConstantOperand A.TokenNone

instance ProveEquiv (Maybe A.Operand) where
  proveEquiv = proveEquivMaybe c_MO_Just_Operand c_MO_Nothing_Operand
     "Maybe Operand"

instance ProveEquiv (Maybe A.Atomicity) where
  proveEquiv = proveEquivMaybe c_MA_Just_Atomicity c_MA_Nothing_Atomicity
    "Maybe Atomicity"

instance ProveEquiv A.Atomicity where
  proveEquiv = proveEquivTuple2 c_Tup2_SynchronizationScope_MemoryOrdering
    "Atomicity"

instance ProveEquiv A.Metadata where
  proveEquiv _ _ = proofFail ""

-- instance ProveEquiv A.SynchronizationScope where
--   proveEquiv ss1 ss2
--       | ss1 == ss2 = proveEquivGeneral c [] (show ss1)
--       | otherwise = proofFail $ show ss1 ++ " /= " ++ show ss2
--       where c = case ss1 of A.SingleThread -> c_SS_SingleThread
--                             A.System       -> c_SS_System

{-
instance ProveEquiv A.MemoryOrdering where
  proveEquiv mo1 mo2 | mo1 == mo2 = proveEquivGeneral c [] (show mo1)
                     | otherwise = proofFail $ show mo1 ++ " /= " ++ show mo2
    where c = case mo1 of A.Unordered              -> c_MO_Unordered
                          A.Monotonic              -> c_MO_Monotonic
                          A.Acquire                -> c_MO_Acquire
                          A.Release                -> c_MO_Release
                          A.AcquireRelease         -> c_MO_AcquireRelease
                          A.SequentiallyConsistent -> c_MO_SequentiallyConsistent
-}

freshMatchFunctions :: ProofM (FuncDecl, FuncDecl)
freshMatchFunctions = do
  (_, _, Z3Type{..}) <- fromEnv c_N_Name
  fwd_sym <- mkStringSymbol "fwd-match"
  inv_sym <- mkStringSymbol "inv-match"
  fwd <- mkFuncDecl fwd_sym [sort] sort
  inv <- mkFuncDecl inv_sym [sort] sort
  return (fwd, inv)

-- | Reset the @matching@, @inverse@, and @visiting@ sets/maps
resetMatching :: ProofM ()
resetMatching = do
  ProofState{..} <- ProofM $ lift get
  (new_fwd, new_inv) <- freshMatchFunctions
  ProofM $ lift $ put $ ProofState { matching = M.empty
                                   , inverse = M.empty
                                   , visiting = S.empty
                                   , z3_match = Just (new_fwd, new_inv)
                                   , .. }

-- | Check whether the given name is in the @visiting@ set
testVisiting :: A.Name -> ProofM Bool
testVisiting n = ProofM $ lift $ gets $ (S.member n) . visiting
  --EitherState $ \e -> (Right $ S.member n (visiting e), e)

-- | Add a given name to the @visiting@ set
setVisiting :: A.Name -> ProofM ()
setVisiting n = do
  ProofState{..} <- ProofM $ lift get
  ProofM $ lift $ put $ ProofState { visiting = S.insert n visiting, .. }

-- | Return the @matching@ map
getMatching :: ProofM NameMap
getMatching = ProofM $ lift $ gets matching

-- | Add a match to the @matching@ and @inverse@ maps; fail if it contradicts
-- an existing one
addMatch :: A.Name -> A.Name -> ProofM ()
addMatch n1 n2 = do
  ProofState{..} <- ProofM $ lift get
  case M.lookup n1 matching of
    Just n2' | n2' /= n2 -> proofFail $
      "tried to match " ++ showName n1 ++ "-" ++
      showName n2 ++ " but already have " ++ showName n1 ++ "-" ++ showName n2'
    _ -> return ()
  case M.lookup n2 inverse of
    Just n1' | n1' /= n1 -> proofFail $
      "tried to match " ++ showName n1 ++ "-" ++
      showName n2 ++ " but already have " ++ showName n1' ++ "-" ++ showName n2
    _ -> return ()
  -- logString $ "addMatch " ++ showName n1 ++ " - " ++ showName n2
  ProofM $ lift $ put $ ProofState { matching = M.insert n1 n2 matching
                                   , inverse = M.insert n2 n1 inverse
                                   , .. }

assertMatch :: (ProofEnv -> Z3Constructor) -> A.Name -> A.Name -> ProofM ()
assertMatch nameCons n1 n2 = do
  addMatch n1 n2
  (mkName, _, Z3Type{..}) <- fromEnv nameCons
  ProofState{..} <- ProofM $ lift get
  case z3_match of
    Just (fwd, inv) -> do
      z3n1 <- mkApp mkName =<< field n1
      z3n2 <- mkApp mkName =<< field n2
      fn1 <- mkApp fwd [z3n1]
      fn2 <- mkApp inv [z3n2]
      assert =<< mkEq fn1 z3n2
      assert =<< mkEq fn2 z3n1
    _ -> error "assertMatch with no matching functions initialized"
  where
    field n = case n of
      (A.Name s)   -> sequence $ [mkString $ C.unpack $ fromShort s]
      (A.UnName w) -> sequence $ [mkBitvector 32 $ toInteger w]

addCongruence :: A.Name -> A.Name -> ProofM Bool
addCongruence lName rName = do
  lSet <- findMemberSet lName
  rSet <- findMemberSet rName
  case (lSet, rSet) of
    (Just ls, Nothing) -> update $ (S.insert $ S.insert rName ls) . (S.delete ls)
    (Nothing, Just rs) -> update $ (S.insert $ S.insert lName rs) . (S.delete rs)
    (Nothing, Nothing) -> update $ (S.insert $ S.fromList [lName, rName])
    (Just ls, Just rs)
      | ls /= rs -> update $ (S.insert $ S.union ls rs) . (S.delete ls) . (S.delete rs)
      | otherwise -> return True
  where
    update op = do
      ProofM $ lift $ modify $ \p -> p { congruence = op $ congruence p }
      return False
    findMemberSet n = do
      ProofState{..} <- ProofM $ lift get
      return $ F.find (S.member n) congruence

proveCongruence :: A.Name -> A.Name -> ProofM ()
proveCongruence lName rName = do
  exists <- addCongruence lName rName
  if exists then return ()
  else do
    ProofState{..} <- ProofM $ lift get
    case (M.lookup lName leftGlobals, M.lookup rName rightGlobals) of
      (Just lGlobal, Just rGlobal) -> do
        _ <- proveEquiv lGlobal rGlobal
        return ()
      _ -> error "global definition not found in NameReferenceMap"


$(genProveEquiv [t| A.IntegerPredicate |] )
$(genProveEquiv [t| FPA.FloatingPointPredicate |] )
$(genProveEquiv [t| A.AddrSpace |] )
$(genProveEquiv [t| FA.GroupID |] )
$(genProveEquiv [t| FA.FunctionAttribute |] )
$(genProveEquiv [t| A.SynchronizationScope |] )
$(genProveEquiv [t| A.FloatingPointType |] )
$(genProveEquiv [t| A.Linkage |] )
$(genProveEquiv [t| A.InlineAssembly |] )
$(genProveEquiv [t| A.Operand |] )
$(genProveEquiv [t| A.Visibility |] )
$(genProveEquiv [t| A.StorageClass |] )
$(genProveEquiv [t| A.CallingConvention |] )
$(genProveEquiv [t| A.ParameterAttribute |] )
$(genProveEquiv [t| A.SomeFloat |] )
$(genProveEquiv [t| A.Constant |] )
$(genProveEquiv [t| A.Terminator |] )
$(genProveEquiv [t| A.Dialect |] )
$(genProveEquiv [t| A.TailCallKind |] )
$(genProveEquiv [t| A.LandingPadClause |] )
$(genProveEquiv [t| A.FastMathFlags |] )
$(genProveEquiv [t| A.RMWOperation |] )
$(genProveEquiv [t| I.Instruction |] )

instance ProveEquiv [A.Type] where
  proveEquiv = proveEquivList c_Cons_Type c_Nil_Type "Type List"

$(genProveEquiv [t| A.Type |] )

instance ProveEquiv [A.Parameter] where
  proveEquiv = proveEquivList c_Cons_Parameter c_Nil_Parameter "Parameter List"

$(genProveEquiv [t| A.Parameter |] )

$(genProveEquiv [t| A.MemoryOrdering |] )


{-
-- FIXME
instance ProveEquiv A.Constant where


  proveEquiv (A.Int a1 a2) (A.Int b1 b2) =
    T.sequence [proveEquiv a1 b1, proveEquiv a2 b2] >>=
    proveEquivAlgebraic c_C_Int "Constant Int"

--  proveEquiv (A.Float a1) (A.Float b1) =
--    T.sequence [ proveEquiv a1 b1] >>= proveEquivAlgebraic c_C_Float "Constant Float"

  proveEquiv (A.Null a1) (A.Null b1) =
    T.sequence [proveEquiv a1 b1] >>=
    proveEquivAlgebraic c_C_Null "Constant Null"

  proveEquiv _ _ = assertEquiv t_Constant
  -- proveEquiv a b = case (a, b) of
  --   ((A.Int a1 a2), (A.Int b1 b2)) -> pg c_C_Int =<< p [(a1, b1), (a2, b2)]
  --   ((A.Float a1), (A.Float b1)) -> pg c_C_Float =<< p [(a1, b1)]
  --   ((A.Null a1), (A.Null b1)) -> pg c_C_Null =<< p [(a1, b1)]
  --   ((A.AggregateZero a1), (A.AggregateZero b1)) -> pg c_C_AggregateZero =<< p [(a1, b1)]
  --   ((A.Struct a1 a2 a3), (A.Struct b1 b2 b3)) -> pg c_C_Struct =<< p [(a1, b1), (a2, b2), (a3, b3)]
  --   ((A.Array a1 a2), (A.Array b1 b2)) -> pg c_C_Array =<< p [(a1, b1), (a2, b2)]
  --   ((A.Vector a1), (A.Vector b1)) -> pg c_C_Vector =<< p [(a1, b1)]
  --   ((A.Undef a1), (A.Undef b1)) -> pg c_C_Undef =<< p [(a1, b1)]
  --   ((A.BlockAddress a1 a2), (A.BlockAddress b1 b2)) -> pg c_C_BlockAddress =<< p [(a1, b1), (a2, b2)]
  --   ((A.GlobalReference a1 a2), (A.GlobalReference b1 b2)) -> pg c_C_GlobalReference =<< p [(a1, b1), (a2, b2)]
  --   ((A.TokenNone), (A.TokenNone)) -> pg c_C_TokenNone []
  --   ((A.Add a1 a2 a3 a4), (A.Add b1 b2 b3 b4)) -> pg c_C_Add =<< p [(a1, b1), (a2, b2), (a3, b3), (a4, b4)]
  --   ((A.FAdd a1 a2), (A.FAdd b1 b2)) -> pg c_C_FAdd =<< p [(a1, b1), (a2, b2)]
  --   ((A.Sub a1 a2 a3 a4), (A.Sub b1 b2 b3 b4)) -> pg c_C_Sub =<< p [(a1, b1), (a2, b2), (a3, b3), (a4, b4)]
  --   ((A.FSub a1 a2), (A.FSub b1 b2)) -> pg c_C_FSub =<< p [(a1, b1), (a2, b2)]
  --   ((A.Mul a1 a2 a3 a4), (A.Mul b1 b2 b3 b4)) -> pg c_C_Mul =<< p [(a1, b1), (a2, b2), (a3, b3), (a4, b4)]
  --   ((A.FMul a1 a2), (A.FMul b1 b2)) -> pg c_C_FMul =<< p [(a1, b1), (a2, b2)]
  --   ((A.UDiv a1 a2 a3), (A.UDiv b1 b2 b3)) -> pg c_C_UDiv =<< p [(a1, b1), (a2, b2), (a3, b3)]
  --   ((A.SDiv a1 a2 a3), (A.SDiv b1 b2 b3)) -> pg c_C_SDiv =<< p [(a1, b1), (a2, b2), (a3, b3)]
  --   ((A.FDiv a1 a2), (A.FDiv b1 b2)) -> pg c_C_FDiv =<< p [(a1, b1), (a2, b2)]
  --   ((A.URem a1 a2), (A.URem b1 b2)) -> pg c_C_URem =<< p [(a1, b1), (a2, b2)]
  --   ((A.SRem a1 a2), (A.SRem b1 b2)) -> pg c_C_SRem =<< p [(a1, b1), (a2, b2)]
  --   ((A.FRem a1 a2), (A.FRem b1 b2)) -> pg c_C_FRem =<< p [(a1, b1), (a2, b2)]
  --   ((A.Shl a1 a2 a3 a4), (A.Shl b1 b2 b3 b4)) -> pg c_C_Shl =<< p [(a1, b1), (a2, b2), (a3, b3), (a4, b4)]
  --   ((A.LShr a1 a2 a3), (A.LShr b1 b2 b3)) -> pg c_C_LShr =<< p [(a1, b1), (a2, b2), (a3, b3)]
  --   ((A.AShr a1 a2 a3), (A.AShr b1 b2 b3)) -> pg c_C_AShr =<< p [(a1, b1), (a2, b2), (a3, b3)]
  --   ((A.And a1 a2), (A.And b1 b2)) -> pg c_C_And =<< p [(a1, b1), (a2, b2)]
  --   ((A.Or a1 a2), (A.Or b1 b2)) -> pg c_C_Xor =<< p [(a1, b1), (a2, b2)]
  --   ((A.Xor a1 a2), (A.Xor b1 b2)) -> pg c_C_Xor =<< p [(a1, b1), (a2, b2)]
  --   ((A.GetElementPtr a1 a2 a3), (A.GetElementPtr b1 b2 b3)) -> pg c_C_GetElementPtr =<< p [(a1, b1), (a2, b2), (a3, b3)]
  --   ((A.Trunc a1 a2), (A.Trunc b1 b2)) -> pg c_C_Trunc =<< p [(a1, b1), (a2, b2)]
  --   ((A.ZExt a1 a2), (A.ZExt b1 b2)) -> pg c_C_ZExt =<< p [(a1, b1), (a2, b2)]
  --   ((A.SExt a1 a2), (A.SExt b1 b2)) -> pg c_C_SExt =<< p [(a1, b1), (a2, b2)]
  --   ((A.FPToUI a1 a2), (A.FPToUI b1 b2)) -> pg c_C_FPToUI =<< p [(a1, b1), (a2, b2)]
  --   ((A.FPToSI a1 a2), (A.FPToSI b1 b2)) -> pg c_C_FPToSI =<< p [(a1, b1), (a2, b2)]
  --   ((A.UIToFP a1 a2), (A.UIToFP b1 b2)) -> pg c_C_UIToFP =<< p [(a1, b1), (a2, b2)]
  --   ((A.SIToFP a1 a2), (A.SIToFP b1 b2)) -> pg c_C_SIToFP =<< p [(a1, b1), (a2, b2)]
  --   ((A.FPTrunc a1 a2), (A.FPTrunc b1 b2)) -> pg c_C_FPTrunc =<< p [(a1, b1), (a2, b2)]
  --   ((A.FPExt a1 a2), (A.FPExt b1 b2)) -> pg c_C_FPExt =<< p [(a1, b1), (a2, b2)]
  --   ((A.PtrToInt a1 a2), (A.PtrToInt b1 b2)) -> pg c_C_PtrToInt =<< p [(a1, b1), (a2, b2)]
  --   ((A.IntToPtr a1 a2), (A.IntToPtr b1 b2)) -> pg c_C_IntToPtr =<< p [(a1, b1), (a2, b2)]
  --   ((A.BitCast a1 a2), (A.BitCast b1 b2)) -> pg c_C_BitCast =<< p [(a1, b1), (a2, b2)]
  --   ((A.AddrSpaceCast a1 a2), (A.AddrSpaceCast b1 b2)) -> pg c_C_AddrSpaceCast =<< p [(a1, b1), (a2, b2)]
  --   ((A.ICmp a1 a2 a3), (A.ICmp b1 b2 b3)) -> pg c_C_ICmp =<< p [(a1, b1), (a2, b2), (a3, b3)]
  --   ((A.FCmp a1 a2 a3), (A.FCmp b1 b2 b3)) -> pg c_C_FCmp =<< p [(a1, b1), (a2, b2), (a3, b3)]
  --   ((A.Select a1 a2 a3), (A.Select b1 b2 b3)) -> pg c_C_Select =<< p [(a1, b1), (a2, b2), (a3, b3)]
  --   ((A.ExtractElement a1 a2), (A.ExtractElement b1 b2)) -> pg c_C_ExtractElement =<< p [(a1, b1), (a2, b2)]
  --   ((A.InsertElement a1 a2 a3), (A.InsertElement b1 b2 b3)) -> pg c_C_InsertElement =<< p [(a1, b1), (a2, b2), (a3, b3)]
  --   ((A.ShuffleVector a1 a2 a3), (A.ShuffleVector b1 b2 b3)) -> pg c_C_ShuffleVector =<< p [(a1, b1), (a2, b2), (a3, b3)]
  --   ((A.ExtractValue a1 a2), (A.ExtractValue b1 b2)) -> pg c_C_ExtractValue =<< p [(a1, b1), (a2, b2)]
  --   ((A.InsertValue a1 a2 a3), (A.InsertValue b1 b2 b3)) -> pg c_C_InsertValue =<< p [(a1, b1), (a2, b2), (a3, b3)]
  --   (_, _) -> proofFail "Constant"
  --   where
  --     p = mapM (uncurry proveEquiv)
  --     pg c f = proveEquivGeneral c f $ (head . words . show) a ++ " Constant equivalent"

-}
