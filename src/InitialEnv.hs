{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TemplateHaskell #-}

module InitialEnv where

import qualified Data.Traversable as T

import ProofM

import ProofEnv

import Z3TypeGenerator

import Z3.Monad

import qualified LLVM.AST as A
import qualified LLVM.AST.DLL as A (StorageClass(..))
import qualified LLVM.AST.AddrSpace as A
import qualified LLVM.AST.Visibility as A
import qualified LLVM.AST.Linkage as A
import qualified LLVM.AST.CallingConvention as A
import qualified LLVM.AST.ParameterAttribute as A
import Data.ByteString.Short (ShortByteString)

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

initialEnv' :: ProofM ProofEnv'
initialEnv' = do
  s1_Bool <- mkBoolSort
  s1_Int <- mkIntSort
  s1_String <- mkStringSort
  s1_Word32 <- mkBvSort 32
  let s1_Word = s1_Word32
  s1_Word64 <- mkBvSort 64
  s1_ShortByteString <- mkStringSort
  $(initEnv "ProofEnv'" $
        [z3Constructors [| s1_Bool |] [t| A.AddrSpace |]
        ,z3ConstructorsOnly [| s1_Bool |] [t| A.Type |] ["VoidType"
                                                        ,"IntegerType"
                                                        ,"PointerType"]] ++
        map (z3Constructors [| s1_Bool |])
            [[t| A.Name |]
            ,[t| A.Visibility |]
            ,[t| A.StorageClass |]
            ,[t| Maybe ShortByteString |]
            ,[t| A.Linkage |]
            ,[t| A.CallingConvention |]
            ,[t| A.ParameterAttribute |]
            ,[t| [A.ParameterAttribute] |]
            ,[t| A.Parameter |]
            ,[t| [A.Parameter] |]
            ]
   )

{-       
        ,z3Constructors [| s1_Bool |] [t| A.Visibility |]
        ,z3Constructors [| s1_Bool |] [t| A.StorageClass |]
        ,z3Constructors [| s1_Bool |] [t| Maybe ShortByteString |]
        ,z3Constructors [| s1_Bool |] [t| A.Linkage |]
        ,z3Constructors [| s1_Bool |] [t| Maybe A.StorageClass |]
--        ,z3Constructors [| s1_Bool |] [t| Eith (Eith Int Bool) (Eith Bool Int) |]
        ,z3Constructors [| s1_Bool |] [t| A.CallingConvention |]
        ])
-}




-- | Initialize Z3 types, etc. that will be made available during
--   execution of the proof monad
initialEnv :: ProofM ProofEnv
initialEnv = do
  s_Int <- mkIntSort
  s_Bv32 <- mkBvSort 32
  s_Bv64 <- mkBvSort 64
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
             , ("T_PointerType", [("pointerReferent", Nothing)
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
                          , ("CC_Numbered", [("ccnum", Just s_Bv32)])
                          ]

  (s_ParameterAttribute, [ c_PA_ZeroExt, c_PA_SignExt, c_PA_InReg, c_PA_SRet
                         , c_PA_Alignment, c_PA_NoAlias, c_PA_ByVal
                         , c_PA_NoCapture, c_PA_Nest, c_PA_ReadNone
                         , c_PA_ReadOnly, c_PA_WriteOnly, c_PA_ImmArg
                         , c_PA_InAlloca, c_PA_NonNull, c_PA_Dereferenceable
                         , c_PA_DereferenceableOrNull, c_PA_Returned
                         , c_PA_SwiftSelf, c_PA_SwiftError
                         , c_PA_StringAttribute]) <-
    mkZ3Constructors s_Bool
      "ParameterAttribute" [ ("PA_ZeroExt", [])
                           , ("PA_SignExt", [])
                           , ("PA_InReg", [])
                           , ("PA_SRet", [])
                           , ("PA_Alignment", [("paalign", Just s_Bv64)])
                           , ("PA_NoAlias", [])
                           , ("PA_ByVal", [])
                           , ("PA_NoCapture", [])
                           , ("PA_Nest", [])
                           , ("PA_ReadNone", [])
                           , ("PA_ReadOnly", [])
                           , ("PA_WriteOnly", [])
                           , ("PA_ImmArg", [])
                           , ("PA_InAlloca", [])
                           , ("PA_NonNull", [])
                           , ("PA_Dereferenceable", [("paderef", Just s_Bv64)])
                           , ("PA_DereferenceableOrNull", [("paderefnull", Just s_Bv64)])
                           , ("PA_Returned", [])
                           , ("PA_SwiftSelf", [])
                           , ("PA_SwiftError", [])
                           , ("PA_StringAttribute", [ ("sakind", Just s_String)
                                                    , ("saval", Just s_String)
                                                    ]
                             )
                           ]

  (s_List_ParameterAttribute, [ c_LstPA_Nil, c_LstPA_Cons ]) <-
    mkZ3Constructors s_Bool
      "List-ParameterAttribute" [ ("LstPA_Nil", [])
                                , ("LstPA_Cons", [("pacar", Just s_ParameterAttribute), ("pacdr", Nothing)])
                                ]

  (s_Parameter, [ c_P_Parameter ]) <-
    mkZ3Constructors s_Bool "Parameter"
      [ ("P_Parameter", [ ("ptype", Just s_Type)
                        , ("pname", Just s_Name)
                        , ("pattrs", Just s_List_ParameterAttribute)
                        ])
      ]

  (s_List_Parameter, [ c_LstP_Nil, c_LstP_Cons ]) <-
    mkZ3Constructors s_Bool
      "List-Parameter" [ ("LstP_Nil", [])
                       , ("LstP_Cons", [("pcar", Just s_Parameter), ("pcdr", Nothing)])
                       ]

  (s_Arguments, [ c_Argv ]) <-
    mkZ3Constructors s_Bool
      "Arguments" [ ("Argv", [ ("aparams", Just s_List_Parameter)
                             , ("abool", Just s_Bool)
                             ])
                  ]

  (_, [ c_G_Function ]) <-
    mkZ3Constructors s_Bool
    "Function" [ ("G_Function", [("linkage", Just s_Linkage)
                                ,("visibility", Just s_Visibility)
                                ,("dllStorageClass", Just s_Maybe_StorageClass)
                                ,("callingConvention", Just s_CallingConvention)
                                ,("returnAttributes", Just s_List_ParameterAttribute)
                                ,("returnType", Just s_Type)
                                ,("name", Just s_Name)
                                ,("parameters", Just s_Arguments)
                                ,("section", Just s_Maybe_ShortByteString)
                                ,("comdat", Just s_Maybe_ShortByteString)
                                ,("alignment", Just s_Bv32)
                                ,("garbageCollectorName", Just s_Maybe_ShortByteString)
                                ])
               ]
  return ProofEnv{..}

