{-# LANGUAGE TemplateHaskell #-}

module ProofEnv where

--import Z3TypeGenerator

import Z3.Monad

--import qualified LLVM.AST as A
--import qualified LLVM.AST.DLL as A (StorageClass(..))
--import qualified LLVM.AST.AddrSpace as A
--import qualified LLVM.AST.Visibility as A
--import qualified LLVM.AST.Linkage as A
--import qualified LLVM.AST.AddrSpace as A
-- import qualified LLVM.AST.CallingConvention as A
--import qualified LLVM.AST.Global as A


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

-- | Run the Template Haskell code to generate
-- data ProofEnv = ProofEnv { s_Bool :: !Sort
--                          , s_StorageClass :: !Sort
--                          , c_Import :: !Z3Constructor
--                          , c_Export :: !Z3Constructor ... }

{-

declareProofEnvType
  ["Bool"
  ,"Int"
  ,"String"
  ,"Word32"
  ]
  [(''A.Type, ["VoidType"
              ,"IntegerType"
              ,"PointerType"])]
  [''A.AddrSpace
  ,''A.Visibility
  ,''A.StorageClass
  ,''A.Linkage
  ,''A.CallingConvention]

-}

data ProofEnv = ProofEnv
  { s_Int    :: !Sort -- Z3 sort for Int
  , s_Bv32   :: !Sort -- Z3 sort for 32-bit vector
  , s_Bv64   :: !Sort -- Z3 sort for 64-bit vector
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

  -- Constructors, sorts for ParameterAttribute
  , c_PA_ZeroExt               :: !Z3Constructor
  , c_PA_SignExt               :: !Z3Constructor
  , c_PA_InReg                 :: !Z3Constructor
  , c_PA_SRet                  :: !Z3Constructor
  , c_PA_Alignment             :: !Z3Constructor
  , c_PA_NoAlias               :: !Z3Constructor
  , c_PA_ByVal                 :: !Z3Constructor
  , c_PA_NoCapture             :: !Z3Constructor
  , c_PA_Nest                  :: !Z3Constructor
  , c_PA_ReadNone              :: !Z3Constructor
  , c_PA_ReadOnly              :: !Z3Constructor
  , c_PA_WriteOnly             :: !Z3Constructor
  , c_PA_ImmArg                :: !Z3Constructor
  , c_PA_InAlloca              :: !Z3Constructor
  , c_PA_NonNull               :: !Z3Constructor
  , c_PA_Dereferenceable       :: !Z3Constructor
  , c_PA_DereferenceableOrNull :: !Z3Constructor
  , c_PA_Returned              :: !Z3Constructor
  , c_PA_SwiftSelf             :: !Z3Constructor
  , c_PA_SwiftError            :: !Z3Constructor
  , c_PA_StringAttribute       :: !Z3Constructor

  -- Constructors, sorts for [ParameterAttribute]
  , c_LstPA_Nil  :: !Z3Constructor
  , c_LstPA_Cons :: !Z3Constructor

  -- Constructors, sorts for Parameter
  , c_P_Parameter :: !Z3Constructor

  -- Constructors, sorts for [Parameter]
  , c_LstP_Nil  :: !Z3Constructor
  , c_LstP_Cons :: !Z3Constructor

  -- Constructors, sorts for ([Parameter], Bool)
  , c_Argv :: !Z3Constructor

  -- Globals
  , c_G_Function :: !Z3Constructor
  }
