{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TemplateHaskell #-}

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

import qualified Data.Traversable as T
import Data.Maybe
import Data.ByteString.UTF8 (fromString,toString)
import Data.ByteString.Short (ShortByteString, toShort,fromShort) -- ShortByteString
import qualified Data.ByteString.Char8 as C
import Data.List (intercalate)
import Data.Word ( Word32, Word64 )
import qualified Data.Map.Strict as M
import qualified Data.Set as S


import Control.Monad ( unless, when, zipWithM_ )
import Control.Monad.IO.Class ( liftIO )
import Control.Monad.Trans.State.Strict ( get, gets, put )
import Control.Monad.Trans.Class ( lift )

import LLVM.Context (withContext)

import qualified LLVM.Module as M
import qualified LLVM.AST as A hiding ( metadata, callingConvention, alignment, returnAttributes, functionAttributes )
import qualified LLVM.AST.Global as A
import qualified LLVM.AST.Visibility as A
import qualified LLVM.AST.Linkage as A
import qualified LLVM.AST.DLL as A
import qualified LLVM.AST.CallingConvention as A
import qualified LLVM.AST.ParameterAttribute as A
import qualified LLVM.AST.FunctionAttribute as FA
import qualified LLVM.AST.AddrSpace as A
import qualified LLVM.AST.Constant as A

import Z3.Monad

import ProofM
import ProofEnv
import InitialEnv

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

--------------------
-- Primitive types

instance ProveEquiv Bool where
  proveEquiv = proveEquivPrimitive s_Bool mkBool "Bool"

instance ProveEquiv Word32 where
  proveEquiv = proveEquivPrimitive s_Word32 (\x -> mkBitvector 32 (toInteger x)) "Word32"

instance ProveEquiv (Maybe Word32) where
  proveEquiv = proveEquivMaybe
    c_MW_Just_Word32 c_MW_Nothing_Word32 "Word32"

instance ProveEquiv Word64 where
  proveEquiv = proveEquivPrimitive s_Word64 (\x -> mkBitvector 64 (toInteger x)) "Word64"

instance ProveEquiv Word where
  proveEquiv = proveEquivPrimitive s_Word (\x -> mkBitvector 32 (toInteger x)) "Word"

instance ProveEquiv ShortByteString where
  proveEquiv = proveEquivPrimitive s_ShortByteString (\x -> mkString $ C.unpack $ fromShort x) "ShortByteString"

instance ProveEquiv (Maybe ShortByteString) where
  proveEquiv = proveEquivMaybe
    c_MSBS_Just_ShortByteString c_MSBS_Nothing_ShortByteString "ShortByteString"

------------------------------------
-- LLVM types making up a Function

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

instance ProveEquiv (Maybe A.StorageClass) where
  proveEquiv = proveEquivMaybe
    c_MSC_Just_StorageClass c_MSC_Nothing_StorageClass "Maybe StorageClass"

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

instance ProveEquiv [A.ParameterAttribute] where
  proveEquiv = proveEquivList
    c_Cons_ParameterAttribute c_Nil_ParameterAttribute "List ParameterAttribute"

instance ProveEquiv A.AddrSpace where
  proveEquiv (A.AddrSpace a1) (A.AddrSpace a2) = do
    e <- proveEquiv a1 a2
    proveEquivGeneral c_AS_AddrSpace [e] "AddrSpace equivalent"

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

  proveEquiv _ _ = proofFail "Type equivalence failed"

instance ProveEquiv A.Name where
  proveEquiv (A.Name s1) (A.Name s2) = do
    e <- proveEquiv s1 s2
    proveEquivGeneral c_N_Name [e] "Name equivalent"
  proveEquiv (A.UnName w1) (A.UnName w2) = do
    e <- proveEquiv w1 w2
    proveEquivGeneral c_N_UnName [e] "UnName equivalent"
  proveEquiv _ _ = proofFail "Name != UnName"

instance ProveEquiv A.Parameter where
  proveEquiv (A.Parameter t1 n1 pa1) (A.Parameter t2 n2 pa2) = do
    t_eq <- proveEquiv t1 t2
    n_eq <- proveEquiv n1 n2
    pa_eq <- proveEquiv pa1 pa2
    proveEquivGeneral c_P_Parameter [t_eq, n_eq, pa_eq] "Parameter equivalent"

instance ProveEquiv [A.Parameter] where
  proveEquiv = proveEquivList
    c_Cons_Parameter c_Nil_Parameter "List Parameter"

instance ProveEquiv ([A.Parameter], Bool) where
  proveEquiv = proveEquivTuple
    c_Tup2_List_Parameter_Bool "([A.Parameter], Bool)"

instance ProveEquiv FA.GroupID where
  proveEquiv (FA.GroupID i1) (FA.GroupID i2) = do
    e <- proveEquiv i1 i2
    proveEquivGeneral c_GID_GroupID [e] $ "GroupID"

instance ProveEquiv FA.FunctionAttribute where
  proveEquiv (FA.StringAttribute k1 v1) (FA.StringAttribute k2 v2) = do
    ek <- proveEquiv k1 k2
    ev <- proveEquiv v1 v2
    proveEquivGeneral c_FA_StringAttribute [ek, ev]
      "StringAttribute function attribute equivalent"
  proveEquiv (FA.StackAlignment a1) (FA.StackAlignment a2) = do
    e <- proveEquiv a1 a2
    proveEquivGeneral c_FA_StackAlignment [e]
      "StackAlignment function attribute equivalent"
  proveEquiv (FA.AllocSize a1 b1) (FA.AllocSize a2 b2) = do
    ea <- proveEquiv a1 a2
    eb <- proveEquiv b1 b2
    proveEquivGeneral c_FA_AllocSize [ea, eb]
      "AllocSize function attribute equivalent"
  proveEquiv a b
    | a == b    = proveEquivGeneral c []
                        (show a ++ " function attribute equivalent")
    | otherwise = proofFail "FunctionAttribute"
    where c = case a of
                FA.NoReturn            -> c_FA_NoReturn
                FA.NoUnwind            -> c_FA_NoUnwind
                FA.ReadNone            -> c_FA_ReadNone
                FA.ReadOnly            -> c_FA_ReadOnly
                FA.NoInline            -> c_FA_NoInline
                FA.NoRecurse           -> c_FA_NoRecurse
                FA.AlwaysInline        -> c_FA_AlwaysInline
                FA.MinimizeSize        -> c_FA_MinimizeSize
                FA.OptimizeForSize     -> c_FA_OptimizeForSize
                FA.OptimizeNone        -> c_FA_OptimizeNone
                FA.StackProtect        -> c_FA_StackProtect
                FA.StackProtectReq     -> c_FA_StackProtectReq
                FA.StackProtectStrong  -> c_FA_StackProtectStrong
                FA.StrictFP            -> c_FA_StrictFP
                FA.NoRedZone           -> c_FA_NoRedZone
                FA.NoImplicitFloat     -> c_FA_NoImplicitFloat
                FA.Naked               -> c_FA_Naked
                FA.InlineHint          -> c_FA_InlineHint
                FA.ReturnsTwice        -> c_FA_ReturnsTwice
                FA.UWTable             -> c_FA_UWTable
                FA.NonLazyBind         -> c_FA_NonLazyBind
                FA.Builtin             -> c_FA_Builtin
                FA.NoBuiltin           -> c_FA_NoBuiltin
                FA.Cold                -> c_FA_Cold
                FA.JumpTable           -> c_FA_JumpTable
                FA.NoDuplicate         -> c_FA_NoDuplicate
                FA.SanitizeAddress     -> c_FA_SanitizeAddress
                FA.SanitizeHWAddress   -> c_FA_SanitizeHWAddress
                FA.SanitizeThread      -> c_FA_SanitizeThread
                FA.SanitizeMemory      -> c_FA_SanitizeMemory
                FA.Speculatable        -> c_FA_Speculatable
                FA.WriteOnly           -> c_FA_WriteOnly
                FA.ArgMemOnly          -> c_FA_ArgMemOnly
                FA.Convergent          -> c_FA_Convergent
                FA.SafeStack           -> c_FA_SafeStack
                FA.InaccessibleMemOnly -> c_FA_InaccessibleMemOnly
                FA.InaccessibleMemOrArgMemOnly -> c_FA_InaccessibleMemOrArgMemOnly
                _ -> error "unreachable pattern match"

instance ProveEquiv (Either FA.GroupID FA.FunctionAttribute) where
  proveEquiv = proveEquivEither
    c_EGIDFA_Left_GroupID_FunctionAttribute
    c_EGIDFA_Right_GroupID_FunctionAttribute
    "GroupID FunctionAttribute"

instance ProveEquiv [Either FA.GroupID FA.FunctionAttribute] where
  proveEquiv = proveEquivList
    c_Cons_Either_GroupID_FunctionAttribute
    c_Nil_Either_GroupID_FunctionAttribute
    "List FunctionAttribute"

instance ProveEquiv A.Constant where
  proveEquiv _ _ = proveEquiv True True -- FIXME: add s_Constant to env (currently bool)

instance ProveEquiv (Maybe A.Constant) where
  proveEquiv = proveEquivMaybe
    c_MC_Just_Constant c_MC_Nothing_Constant "Maybe Constant"

-- FIXME: Handle basic blocks.  This is causing things to fail now
instance ProveEquiv A.BasicBlock where
  proveEquiv _ _ =
    proveEquivGeneral c_BB_BasicBlock [] "basic block matched trivially"

instance ProveEquiv [A.BasicBlock] where
  proveEquiv = proveEquivCFG

{-
instance ProveEquiv (A.MDRef A.MDNode) where
  proveEquiv _ _ = proveEquiv True True -- FIXME: add s_MDRef_MDNode to env (currently bool)
-}

{-
instance ProveEquiv (ShortByteString, A.MDRef A.MDNode) where
  proveEquiv = proveEquivTuple
    c_Tup2_ShortByteString_MDRef_MDNode "(ShortByteString, MDRef MDNode)"

instance ProveEquiv [(ShortByteString, A.MDRef A.MDNode)] where
  proveEquiv = proveEquivList
    c_Cons_Tup2_ShortByteString_MDRef_MDNode
    c_Nil_Tup2_ShortByteString_MDRef_MDNode
    "List (ShortByteString, MDRef MDNode)"
-}

instance ProveEquiv A.Global where
  proveEquiv f1@A.Function{} f2@A.Function{} = do
    fields <- T.sequence
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
