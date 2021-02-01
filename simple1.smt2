;; The declare-datatypes was reworked from the raw
;; output from solverToString, which somehow screwed up the
;; order of types and didn't handle the mutually recursive ones properly


(declare-datatypes ((UnnamedAddr 0)) (((UA_LocalAddr) (UA_GlobalAddr))))
(declare-datatypes ((IntegerPredicate 0)) (((IP_EQ) (IP_NE) (IP_UGT) (IP_UGE) (IP_ULT) (IP_ULE) (IP_SGT) (IP_SGE) (IP_SLT) (IP_SLE))))
(declare-datatypes ((FloatingPointPredicate 0)) (((FPP_False) (FPP_OEQ) (FPP_OGT) (FPP_OGE) (FPP_OLT) (FPP_OLE) (FPP_ONE) (FPP_ORD) (FPP_UNO) (FPP_UEQ) (FPP_UGT) (FPP_UGE) (FPP_ULT) (FPP_ULE) (FPP_UNE) (FPP_True))))
(declare-datatypes ((Maybe_UnnamedAddr 0)) (((MUA_Nothing_UnnamedAddr) (MUA_Just_UnnamedAddr (f_Just_1 UnnamedAddr)))))
(declare-datatypes ((FastMathFlags 0)) (((FMF_FastMathFlags (FastMathFlags_allowReassoc Bool) (FastMathFlags_noNaNs Bool) (FastMathFlags_noInfs Bool) (FastMathFlags_noSignedZeros Bool) (FastMathFlags_allowReciprocal Bool) (FastMathFlags_allowContract Bool) (FastMathFlags_approxFunc Bool)))))
(declare-datatypes ((StorageClass 0)) (((SC_Import) (SC_Export))))
(declare-datatypes ((Name 0)) (((N_Name (f_Name_1 String)) (N_UnName (f_UnName_1 (_ BitVec 32))))))
(declare-datatypes ((Maybe_Name 0)) (((MN_Nothing_Name) (MN_Just_Name (f_Just_1 Name)))))
(declare-datatypes ((FloatingPointType 0)) (((FPT_HalfFP) (FPT_FloatFP) (FPT_DoubleFP) (FPT_FP128FP) (FPT_X86_FP80FP) (FPT_PPC_FP128FP))))
(declare-datatypes ((AddrSpace 0)) (((AS_AddrSpace (f_AddrSpace_1 (_ BitVec 32))))))
(declare-datatypes ((SomeFloat 0)) (((SF_Half (f_Half_1 (_ BitVec 16))) (SF_Single (f_Single_1 Bool)) (SF_Double (f_Double_1 Bool)) (SF_Quadruple (f_Quadruple_1 (_ BitVec 64)) (f_Quadruple_2 (_ BitVec 64))) (SF_X86_FP80 (f_X86_FP80_1 (_ BitVec 16)) (f_X86_FP80_2 (_ BitVec 64))) (SF_PPC_FP128 (f_PPC_FP128_1 (_ BitVec 64)) (f_PPC_FP128_2 (_ BitVec 64))))))
;;(declare-datatypes ((List_Type 0)
;;    (Type 0)) (((Nil_Type) (Cons_Type (head Type) (tail List_Type)))
;;   ((T_VoidType) (T_IntegerType (IntegerType_typeBits (_ BitVec 32))) (T_PointerType (PointerType_pointerReferent Type) (PointerType_pointerAddrSpace AddrSpace)) (T_FloatingPointType (FloatingPointType_floatingPointType FloatingPointType)) (T_FunctionType (FunctionType_resultType Type) (FunctionType_argumentTypes List_Type) (FunctionType_isVarArg Bool)) (T_VectorType (VectorType_nVectorElements (_ BitVec 32)) (VectorType_elementType Type)) (T_StructureType (StructureType_isPacked Bool) (StructureType_elementTypes List_Type)) (T_ArrayType (ArrayType_nArrayElements (_ BitVec 64)) (ArrayType_elementType Type)) (T_NamedTypeReference (f_NamedTypeReference_1 Name)) (T_MetadataType) (T_LabelType) (T_TokenType))))
(declare-datatypes ((Type 0)
    (List_Type 0)) (((T_VoidType) (T_IntegerType (IntegerType_typeBits (_ BitVec 32))) (T_PointerType (PointerType_pointerReferent Type) (PointerType_pointerAddrSpace AddrSpace)) (T_FloatingPointType (FloatingPointType_floatingPointType FloatingPointType)) (T_FunctionType (FunctionType_resultType Type) (FunctionType_argumentTypes List_Type) (FunctionType_isVarArg Bool)) (T_VectorType (VectorType_nVectorElements (_ BitVec 32)) (VectorType_elementType Type)) (T_StructureType (StructureType_isPacked Bool) (StructureType_elementTypes List_Type)) (T_ArrayType (ArrayType_nArrayElements (_ BitVec 64)) (ArrayType_elementType Type)) (T_NamedTypeReference (f_NamedTypeReference_1 Name)) (T_MetadataType) (T_LabelType) (T_TokenType))
   ((Nil_Type) (Cons_Type (head Type) (tail List_Type)))))
(declare-datatypes ((List_Word32 0)) (((Nil_Word32) (Cons_Word32 (head (_ BitVec 32)) (tail List_Word32)))))
;;(declare-datatypes ((List_Constant 0)
;;    (Constant 0)) (((Nil_Constant) (Cons_Constant (head Constant) (tail List_Constant)))
;;   ((C_Int (Int_integerBits (_ BitVec 32)) (Int_integerValue Int)) (C_Float (Float_floatValue SomeFloat)) (C_Null (Null_constantType Type)) (C_AggregateZero (AggregateZero_constantType Type)) (C_Struct (Struct_structName Maybe_Name) (Struct_isPacked Bool) (Struct_memberValues List_Constant)) (C_Array (Array_memberType Type) (Array_memberValues List_Constant)) (C_Vector (Vector_memberValues List_Constant)) (C_Undef (Undef_constantType Type)) (C_BlockAddress (BlockAddress_blockAddressFunction Name) (BlockAddress_blockAddressBlock Name)) (C_GlobalReference (f_GlobalReference_1 Type) (f_GlobalReference_2 Name)) (C_TokenNone) (C_Add (Add_nsw Bool) (Add_nuw Bool) (Add_operand0 Constant) (Add_operand1 Constant)) (C_FAdd (FAdd_operand0 Constant) (FAdd_operand1 Constant)) (C_Sub (Sub_nsw Bool) (Sub_nuw Bool) (Sub_operand0 Constant) (Sub_operand1 Constant)) (C_FSub (FSub_operand0 Constant) (FSub_operand1 Constant)) (C_Mul (Mul_nsw Bool) (Mul_nuw Bool) (Mul_operand0 Constant) (Mul_operand1 Constant)) (C_FMul (FMul_operand0 Constant) (FMul_operand1 Constant)) (C_UDiv (UDiv_exact Bool) (UDiv_operand0 Constant) (UDiv_operand1 Constant)) (C_SDiv (SDiv_exact Bool) (SDiv_operand0 Constant) (SDiv_operand1 Constant)) (C_FDiv (FDiv_operand0 Constant) (FDiv_operand1 Constant)) (C_URem (URem_operand0 Constant) (URem_operand1 Constant)) (C_SRem (SRem_operand0 Constant) (SRem_operand1 Constant)) (C_FRem (FRem_operand0 Constant) (FRem_operand1 Constant)) (C_Shl (Shl_nsw Bool) (Shl_nuw Bool) (Shl_operand0 Constant) (Shl_operand1 Constant)) (C_LShr (LShr_exact Bool) (LShr_operand0 Constant) (LShr_operand1 Constant)) (C_AShr (AShr_exact Bool) (AShr_operand0 Constant) (AShr_operand1 Constant)) (C_And (And_operand0 Constant) (And_operand1 Constant)) (C_Or (Or_operand0 Constant) (Or_operand1 Constant)) (C_Xor (Xor_operand0 Constant) (Xor_operand1 Constant)) (C_GetElementPtr (GetElementPtr_inBounds Bool) (GetElementPtr_address Constant) (GetElementPtr_indices List_Constant)) (C_Trunc (Trunc_operand0 Constant) (Trunc_type_ Type)) (C_ZExt (ZExt_operand0 Constant) (ZExt_type_ Type)) (C_SExt (SExt_operand0 Constant) (SExt_type_ Type)) (C_FPToUI (FPToUI_operand0 Constant) (FPToUI_type_ Type)) (C_FPToSI (FPToSI_operand0 Constant) (FPToSI_type_ Type)) (C_UIToFP (UIToFP_operand0 Constant) (UIToFP_type_ Type)) (C_SIToFP (SIToFP_operand0 Constant) (SIToFP_type_ Type)) (C_FPTrunc (FPTrunc_operand0 Constant) (FPTrunc_type_ Type)) (C_FPExt (FPExt_operand0 Constant) (FPExt_type_ Type)) (C_PtrToInt (PtrToInt_operand0 Constant) (PtrToInt_type_ Type)) (C_IntToPtr (IntToPtr_operand0 Constant) (IntToPtr_type_ Type)) (C_BitCast (BitCast_operand0 Constant) (BitCast_type_ Type)) (C_AddrSpaceCast (AddrSpaceCast_operand0 Constant) (AddrSpaceCast_type_ Type)) (C_ICmp (ICmp_iPredicate IntegerPredicate) (ICmp_operand0 Constant) (ICmp_operand1 Constant)) (C_FCmp (FCmp_fpPredicate FloatingPointPredicate) (FCmp_operand0 Constant) (FCmp_operand1 Constant)) (C_Select (Select_condition_ Constant) (Select_trueValue Constant) (Select_falseValue Constant)) (C_ExtractElement (ExtractElement_vector Constant) (ExtractElement_index Constant)) (C_InsertElement (InsertElement_vector Constant) (InsertElement_element Constant) (InsertElement_index Constant)) (C_ShuffleVector (ShuffleVector_operand0 Constant) (ShuffleVector_operand1 Constant) (ShuffleVector_mask Constant)) (C_ExtractValue (ExtractValue_aggregate Constant) (ExtractValue_indices_ List_Word32)) (C_InsertValue (InsertValue_aggregate Constant) (InsertValue_element Constant) (InsertValue_indices_ List_Word32)))))
(declare-datatypes ((Constant 0)
    (List_Constant 0)) (((C_Int (Int_integerBits (_ BitVec 32)) (Int_integerValue Int)) (C_Float (Float_floatValue SomeFloat)) (C_Null (Null_constantType Type)) (C_AggregateZero (AggregateZero_constantType Type)) (C_Struct (Struct_structName Maybe_Name) (Struct_isPacked Bool) (Struct_memberValues List_Constant)) (C_Array (Array_memberType Type) (Array_memberValues List_Constant)) (C_Vector (Vector_memberValues List_Constant)) (C_Undef (Undef_constantType Type)) (C_BlockAddress (BlockAddress_blockAddressFunction Name) (BlockAddress_blockAddressBlock Name)) (C_GlobalReference (f_GlobalReference_1 Type) (f_GlobalReference_2 Name)) (C_TokenNone) (C_Add (Add_nsw Bool) (Add_nuw Bool) (Add_operand0 Constant) (Add_operand1 Constant)) (C_FAdd (FAdd_operand0 Constant) (FAdd_operand1 Constant)) (C_Sub (Sub_nsw Bool) (Sub_nuw Bool) (Sub_operand0 Constant) (Sub_operand1 Constant)) (C_FSub (FSub_operand0 Constant) (FSub_operand1 Constant)) (C_Mul (Mul_nsw Bool) (Mul_nuw Bool) (Mul_operand0 Constant) (Mul_operand1 Constant)) (C_FMul (FMul_operand0 Constant) (FMul_operand1 Constant)) (C_UDiv (UDiv_exact Bool) (UDiv_operand0 Constant) (UDiv_operand1 Constant)) (C_SDiv (SDiv_exact Bool) (SDiv_operand0 Constant) (SDiv_operand1 Constant)) (C_FDiv (FDiv_operand0 Constant) (FDiv_operand1 Constant)) (C_URem (URem_operand0 Constant) (URem_operand1 Constant)) (C_SRem (SRem_operand0 Constant) (SRem_operand1 Constant)) (C_FRem (FRem_operand0 Constant) (FRem_operand1 Constant)) (C_Shl (Shl_nsw Bool) (Shl_nuw Bool) (Shl_operand0 Constant) (Shl_operand1 Constant)) (C_LShr (LShr_exact Bool) (LShr_operand0 Constant) (LShr_operand1 Constant)) (C_AShr (AShr_exact Bool) (AShr_operand0 Constant) (AShr_operand1 Constant)) (C_And (And_operand0 Constant) (And_operand1 Constant)) (C_Or (Or_operand0 Constant) (Or_operand1 Constant)) (C_Xor (Xor_operand0 Constant) (Xor_operand1 Constant)) (C_GetElementPtr (GetElementPtr_inBounds Bool) (GetElementPtr_address Constant) (GetElementPtr_indices List_Constant)) (C_Trunc (Trunc_operand0 Constant) (Trunc_type_ Type)) (C_ZExt (ZExt_operand0 Constant) (ZExt_type_ Type)) (C_SExt (SExt_operand0 Constant) (SExt_type_ Type)) (C_FPToUI (FPToUI_operand0 Constant) (FPToUI_type_ Type)) (C_FPToSI (FPToSI_operand0 Constant) (FPToSI_type_ Type)) (C_UIToFP (UIToFP_operand0 Constant) (UIToFP_type_ Type)) (C_SIToFP (SIToFP_operand0 Constant) (SIToFP_type_ Type)) (C_FPTrunc (FPTrunc_operand0 Constant) (FPTrunc_type_ Type)) (C_FPExt (FPExt_operand0 Constant) (FPExt_type_ Type)) (C_PtrToInt (PtrToInt_operand0 Constant) (PtrToInt_type_ Type)) (C_IntToPtr (IntToPtr_operand0 Constant) (IntToPtr_type_ Type)) (C_BitCast (BitCast_operand0 Constant) (BitCast_type_ Type)) (C_AddrSpaceCast (AddrSpaceCast_operand0 Constant) (AddrSpaceCast_type_ Type)) (C_ICmp (ICmp_iPredicate IntegerPredicate) (ICmp_operand0 Constant) (ICmp_operand1 Constant)) (C_FCmp (FCmp_fpPredicate FloatingPointPredicate) (FCmp_operand0 Constant) (FCmp_operand1 Constant)) (C_Select (Select_condition_ Constant) (Select_trueValue Constant) (Select_falseValue Constant)) (C_ExtractElement (ExtractElement_vector Constant) (ExtractElement_index Constant)) (C_InsertElement (InsertElement_vector Constant) (InsertElement_element Constant) (InsertElement_index Constant)) (C_ShuffleVector (ShuffleVector_operand0 Constant) (ShuffleVector_operand1 Constant) (ShuffleVector_mask Constant)) (C_ExtractValue (ExtractValue_aggregate Constant) (ExtractValue_indices_ List_Word32)) (C_InsertValue (InsertValue_aggregate Constant) (InsertValue_element Constant) (InsertValue_indices_ List_Word32)))
   ((Nil_Constant) (Cons_Constant (head Constant) (tail List_Constant)))))
(declare-datatypes ((Operand 0)) (((O_LocalReference (f_LocalReference_1 Type) (f_LocalReference_2 Name)) (O_ConstantOperand (f_ConstantOperand_1 Constant)) (O_MetadataOperand (f_MetadataOperand_1 Bool)))))
(declare-datatypes ((List_Operand 0)) (((Nil_Operand) (Cons_Operand (head Operand) (tail List_Operand)))))
(declare-datatypes ((ParameterAttribute 0)) (((PA_ZeroExt) (PA_SignExt) (PA_InReg) (PA_SRet) (PA_Alignment (f_Alignment_1 (_ BitVec 64))) (PA_NoAlias) (PA_ByVal) (PA_NoCapture) (PA_Nest) (PA_ReadNone) (PA_ReadOnly) (PA_WriteOnly) (PA_ImmArg) (PA_InAlloca) (PA_NonNull) (PA_Dereferenceable (f_Dereferenceable_1 (_ BitVec 64))) (PA_DereferenceableOrNull (f_DereferenceableOrNull_1 (_ BitVec 64))) (PA_Returned) (PA_SwiftSelf) (PA_SwiftError) (PA_StringAttribute (StringAttribute_stringAttributeKind String) (StringAttribute_stringAttributeValue String)))))
(declare-datatypes ((List_ParameterAttribute 0)) (((Nil_ParameterAttribute) (Cons_ParameterAttribute (head ParameterAttribute) (tail List_ParameterAttribute)))))
(declare-datatypes ((Tup2_Operand_List_ParameterAttribute 0)) (((Tup2_Operand_List_ParameterAttribute (field1 Operand) (field2 List_ParameterAttribute)))))
(declare-datatypes ((Dialect 0)) (((D_ATTDialect) (D_IntelDialect))))
(declare-datatypes ((InlineAssembly 0)) (((IA_InlineAssembly (InlineAssembly_type_ Type) (InlineAssembly_assembly String) (InlineAssembly_constraints String) (InlineAssembly_hasSideEffects Bool) (InlineAssembly_alignStack Bool) (InlineAssembly_dialect Dialect)))))
(declare-datatypes ((Parameter 0)) (((P_Parameter (f_Parameter_1 Type) (f_Parameter_2 Name) (f_Parameter_3 List_ParameterAttribute)))))
(declare-datatypes ((List_Parameter 0)) (((Nil_Parameter) (Cons_Parameter (head Parameter) (tail List_Parameter)))))
(declare-datatypes ((Tup2_List_Parameter_Bool 0)) (((Tup2_List_Parameter_Bool (field1 List_Parameter) (field2 Bool)))))
(declare-datatypes ((Tup2_Constant_Name 0)) (((Tup2_Constant_Name (field1 Constant) (field2 Name)))))
(declare-datatypes ((List_Tup2_Constant_Name 0)) (((Nil_Tup2_Constant_Name) (Cons_Tup2_Constant_Name (head Tup2_Constant_Name) (tail List_Tup2_Constant_Name)))))
(declare-datatypes ((CallableOperand 0)) (((EIAO_Left_InlineAssembly_Operand (f_Left_1 InlineAssembly)) (EIAO_Right_InlineAssembly_Operand (f_Right_1 Operand)))))
(declare-datatypes ((RMWOperation 0)) (((RMWO_Xchg) (RMWO_Add) (RMWO_Sub) (RMWO_And) (RMWO_Nand) (RMWO_Or) (RMWO_Xor) (RMWO_Max) (RMWO_Min) (RMWO_UMax) (RMWO_UMin))))
(declare-datatypes ((List_Tup2_Operand_List_ParameterAttribute 0)) (((Nil_Tup2_Operand_List_ParameterAttribute) (Cons_Tup2_Operand_List_ParameterAttribute (head Tup2_Operand_List_ParameterAttribute) (tail List_Tup2_Operand_List_ParameterAttribute)))))
(declare-datatypes ((MemoryOrdering 0)) (((MO_Unordered) (MO_Monotonic) (MO_Acquire) (MO_Release) (MO_AcquireRelease) (MO_SequentiallyConsistent))))
(declare-datatypes ((SynchronizationScope 0)) (((SS_SingleThread) (SS_System))))
(declare-datatypes ((Atomicity 0)) (((Tup2_SynchronizationScope_MemoryOrdering (field1 SynchronizationScope) (field2 MemoryOrdering)))))
(declare-datatypes ((CallingConvention 0)) (((CC_C) (CC_Fast) (CC_Cold) (CC_GHC) (CC_HiPE) (CC_WebKit_JS) (CC_AnyReg) (CC_PreserveMost) (CC_PreserveAll) (CC_Swift) (CC_CXX_FastTLS) (CC_X86_StdCall) (CC_X86_FastCall) (CC_ARM_APCS) (CC_ARM_AAPCS) (CC_ARM_AAPCS_VFP) (CC_MSP430_INTR) (CC_X86_ThisCall) (CC_PTX_Kernel) (CC_PTX_Device) (CC_SPIR_FUNC) (CC_SPIR_KERNEL) (CC_Intel_OCL_BI) (CC_X86_64_SysV) (CC_Win64) (CC_X86_VectorCall) (CC_HHVM) (CC_HHVM_C) (CC_X86_Intr) (CC_AVR_Intr) (CC_AVR_Signal) (CC_AVR_Builtin) (CC_AMDGPU_VS) (CC_AMDGPU_HS) (CC_AMDGPU_GS) (CC_AMDGPU_PS) (CC_AMDGPU_CS) (CC_AMDGPU_Kernel) (CC_X86_RegCall) (CC_MSP430_Builtin) (CC_Numbered (f_Numbered_1 (_ BitVec 32))))))
(declare-datatypes ((Maybe_Atomicity 0)) (((MA_Nothing_Atomicity) (MA_Just_Atomicity (f_Just_1 Atomicity)))))
(declare-datatypes ((TailCallKind 0)) (((TCK_Tail) (TCK_MustTail) (TCK_NoTail))))
(declare-datatypes ((Maybe_TailCallKind 0)) (((MTCK_Nothing_TailCallKind) (MTCK_Just_TailCallKind (f_Just_1 TailCallKind)))))
(declare-datatypes ((Tup2_Operand_Name 0)) (((Tup2_Operand_Name (field1 Operand) (field2 Name)))))
(declare-datatypes ((List_Tup2_Operand_Name 0)) (((Nil_Tup2_Operand_Name) (Cons_Tup2_Operand_Name (head Tup2_Operand_Name) (tail List_Tup2_Operand_Name)))))
(declare-datatypes ((GroupID 0)) (((GID_GroupID (f_GroupID_1 (_ BitVec 32))))))
(declare-datatypes ((Maybe_Word32 0)) (((MW_Nothing_Word32) (MW_Just_Word32 (f_Just_1 (_ BitVec 32))))))
(declare-datatypes ((FunctionAttribute 0)) (((FA_NoReturn) (FA_NoUnwind) (FA_ReadNone) (FA_ReadOnly) (FA_NoInline) (FA_NoRecurse) (FA_AlwaysInline) (FA_MinimizeSize) (FA_OptimizeForSize) (FA_OptimizeNone) (FA_StackProtect) (FA_StackProtectReq) (FA_StackProtectStrong) (FA_StrictFP) (FA_NoRedZone) (FA_NoImplicitFloat) (FA_Naked) (FA_InlineHint) (FA_StackAlignment (f_StackAlignment_1 (_ BitVec 64))) (FA_ReturnsTwice) (FA_UWTable) (FA_NonLazyBind) (FA_Builtin) (FA_NoBuiltin) (FA_Cold) (FA_JumpTable) (FA_NoDuplicate) (FA_SanitizeAddress) (FA_SanitizeHWAddress) (FA_SanitizeThread) (FA_SanitizeMemory) (FA_Speculatable) (FA_StringAttribute (StringAttribute_stringAttributeKind String) (StringAttribute_stringAttributeValue String)) (FA_AllocSize (f_AllocSize_1 (_ BitVec 32)) (f_AllocSize_2 Maybe_Word32)) (FA_WriteOnly) (FA_ArgMemOnly) (FA_Convergent) (FA_InaccessibleMemOnly) (FA_InaccessibleMemOrArgMemOnly) (FA_SafeStack))))
(declare-datatypes ((Either_GroupID_FunctionAttribute 0)) (((EGIDFA_Left_GroupID_FunctionAttribute (f_Left_1 GroupID)) (EGIDFA_Right_GroupID_FunctionAttribute (f_Right_1 FunctionAttribute)))))
(declare-datatypes ((List_Either_GroupID_FunctionAttribute 0)) (((Nil_Either_GroupID_FunctionAttribute) (Cons_Either_GroupID_FunctionAttribute (head Either_GroupID_FunctionAttribute) (tail List_Either_GroupID_FunctionAttribute)))))
(declare-datatypes ((Maybe_Operand 0)) (((MO_Nothing_Operand) (MO_Just_Operand (f_Just_1 Operand)))))
(declare-datatypes ((LandingPadClause 0)) (((LPC_Catch (f_Catch_1 Constant)) (LPC_Filter (f_Filter_1 Constant)))))
(declare-datatypes ((List_LandingPadClause 0)) (((Nil_LandingPadClause) (Cons_LandingPadClause (head LandingPadClause) (tail List_LandingPadClause)))))
(declare-datatypes ((Instruction 0)) (((I_Add (Add_nsw Bool) (Add_nuw Bool) (Add_operand0 Operand) (Add_operand1 Operand) (Add_metadata Bool)) (I_FAdd (FAdd_fastMathFlags FastMathFlags) (FAdd_operand0 Operand) (FAdd_operand1 Operand) (FAdd_metadata Bool)) (I_Sub (Sub_nsw Bool) (Sub_nuw Bool) (Sub_operand0 Operand) (Sub_operand1 Operand) (Sub_metadata Bool)) (I_FSub (FSub_fastMathFlags FastMathFlags) (FSub_operand0 Operand) (FSub_operand1 Operand) (FSub_metadata Bool)) (I_Mul (Mul_nsw Bool) (Mul_nuw Bool) (Mul_operand0 Operand) (Mul_operand1 Operand) (Mul_metadata Bool)) (I_FMul (FMul_fastMathFlags FastMathFlags) (FMul_operand0 Operand) (FMul_operand1 Operand) (FMul_metadata Bool)) (I_UDiv (UDiv_exact Bool) (UDiv_operand0 Operand) (UDiv_operand1 Operand) (UDiv_metadata Bool)) (I_SDiv (SDiv_exact Bool) (SDiv_operand0 Operand) (SDiv_operand1 Operand) (SDiv_metadata Bool)) (I_FDiv (FDiv_fastMathFlags FastMathFlags) (FDiv_operand0 Operand) (FDiv_operand1 Operand) (FDiv_metadata Bool)) (I_URem (URem_operand0 Operand) (URem_operand1 Operand) (URem_metadata Bool)) (I_SRem (SRem_operand0 Operand) (SRem_operand1 Operand) (SRem_metadata Bool)) (I_FRem (FRem_fastMathFlags FastMathFlags) (FRem_operand0 Operand) (FRem_operand1 Operand) (FRem_metadata Bool)) (I_Shl (Shl_nsw Bool) (Shl_nuw Bool) (Shl_operand0 Operand) (Shl_operand1 Operand) (Shl_metadata Bool)) (I_LShr (LShr_exact Bool) (LShr_operand0 Operand) (LShr_operand1 Operand) (LShr_metadata Bool)) (I_AShr (AShr_exact Bool) (AShr_operand0 Operand) (AShr_operand1 Operand) (AShr_metadata Bool)) (I_And (And_operand0 Operand) (And_operand1 Operand) (And_metadata Bool)) (I_Or (Or_operand0 Operand) (Or_operand1 Operand) (Or_metadata Bool)) (I_Xor (Xor_operand0 Operand) (Xor_operand1 Operand) (Xor_metadata Bool)) (I_Alloca (Alloca_allocatedType Type) (Alloca_numElements Maybe_Operand) (Alloca_alignment (_ BitVec 32)) (Alloca_metadata Bool)) (I_Load (Load_volatile Bool) (Load_address Operand) (Load_maybeAtomicity Maybe_Atomicity) (Load_alignment (_ BitVec 32)) (Load_metadata Bool)) (I_Store (Store_volatile Bool) (Store_address Operand) (Store_value Operand) (Store_maybeAtomicity Maybe_Atomicity) (Store_alignment (_ BitVec 32)) (Store_metadata Bool)) (I_GetElementPtr (GetElementPtr_inBounds Bool) (GetElementPtr_address Operand) (GetElementPtr_indices List_Operand) (GetElementPtr_metadata Bool)) (I_Fence (Fence_atomicity Atomicity) (Fence_metadata Bool)) (I_CmpXchg (CmpXchg_volatile Bool) (CmpXchg_address Operand) (CmpXchg_expected Operand) (CmpXchg_replacement Operand) (CmpXchg_atomicity Atomicity) (CmpXchg_failureMemoryOrdering MemoryOrdering) (CmpXchg_metadata Bool)) (I_AtomicRMW (AtomicRMW_volatile Bool) (AtomicRMW_rmwOperation RMWOperation) (AtomicRMW_address Operand) (AtomicRMW_value Operand) (AtomicRMW_atomicity Atomicity) (AtomicRMW_metadata Bool)) (I_Trunc (Trunc_operand0 Operand) (Trunc_type_ Type) (Trunc_metadata Bool)) (I_ZExt (ZExt_operand0 Operand) (ZExt_type_ Type) (ZExt_metadata Bool)) (I_SExt (SExt_operand0 Operand) (SExt_type_ Type) (SExt_metadata Bool)) (I_FPToUI (FPToUI_operand0 Operand) (FPToUI_type_ Type) (FPToUI_metadata Bool)) (I_FPToSI (FPToSI_operand0 Operand) (FPToSI_type_ Type) (FPToSI_metadata Bool)) (I_UIToFP (UIToFP_operand0 Operand) (UIToFP_type_ Type) (UIToFP_metadata Bool)) (I_SIToFP (SIToFP_operand0 Operand) (SIToFP_type_ Type) (SIToFP_metadata Bool)) (I_FPTrunc (FPTrunc_operand0 Operand) (FPTrunc_type_ Type) (FPTrunc_metadata Bool)) (I_FPExt (FPExt_operand0 Operand) (FPExt_type_ Type) (FPExt_metadata Bool)) (I_PtrToInt (PtrToInt_operand0 Operand) (PtrToInt_type_ Type) (PtrToInt_metadata Bool)) (I_IntToPtr (IntToPtr_operand0 Operand) (IntToPtr_type_ Type) (IntToPtr_metadata Bool)) (I_BitCast (BitCast_operand0 Operand) (BitCast_type_ Type) (BitCast_metadata Bool)) (I_AddrSpaceCast (AddrSpaceCast_operand0 Operand) (AddrSpaceCast_type_ Type) (AddrSpaceCast_metadata Bool)) (I_ICmp (ICmp_iPredicate IntegerPredicate) (ICmp_operand0 Operand) (ICmp_operand1 Operand) (ICmp_metadata Bool)) (I_FCmp (FCmp_fpPredicate FloatingPointPredicate) (FCmp_operand0 Operand) (FCmp_operand1 Operand) (FCmp_metadata Bool)) (I_Phi (Phi_type_ Type) (Phi_incomingValues List_Tup2_Operand_Name) (Phi_metadata Bool)) (I_Call (Call_tailCallKind Maybe_TailCallKind) (Call_callingConvention CallingConvention) (Call_returnAttributes List_ParameterAttribute) (Call_function CallableOperand) (Call_arguments List_Tup2_Operand_List_ParameterAttribute) (Call_functionAttributes List_Either_GroupID_FunctionAttribute) (Call_metadata Bool)) (I_Select (Select_condition_ Operand) (Select_trueValue Operand) (Select_falseValue Operand) (Select_metadata Bool)) (I_VAArg (VAArg_argList Operand) (VAArg_type_ Type) (VAArg_metadata Bool)) (I_ExtractElement (ExtractElement_vector Operand) (ExtractElement_index Operand) (ExtractElement_metadata Bool)) (I_InsertElement (InsertElement_vector Operand) (InsertElement_element Operand) (InsertElement_index Operand) (InsertElement_metadata Bool)) (I_ShuffleVector (ShuffleVector_operand0 Operand) (ShuffleVector_operand1 Operand) (ShuffleVector_mask Constant) (ShuffleVector_metadata Bool)) (I_ExtractValue (ExtractValue_aggregate Operand) (ExtractValue_indices_ List_Word32) (ExtractValue_metadata Bool)) (I_InsertValue (InsertValue_aggregate Operand) (InsertValue_element Operand) (InsertValue_indices_ List_Word32) (InsertValue_metadata Bool)) (I_LandingPad (LandingPad_type_ Type) (LandingPad_cleanup Bool) (LandingPad_clauses List_LandingPadClause) (LandingPad_metadata Bool)) (I_CatchPad (CatchPad_catchSwitch Operand) (CatchPad_args List_Operand) (CatchPad_metadata Bool)) (I_CleanupPad (CleanupPad_parentPad Operand) (CleanupPad_args List_Operand) (CleanupPad_metadata Bool)))))
(declare-datatypes ((List_Name 0)) (((Nil_Name) (Cons_Name (head Name) (tail List_Name)))))
(declare-datatypes ((NonEmpty_Name 0)) (((NEN_Colon_Name (f_Colon_1 Name) (f_Colon_2 List_Name)))))
(declare-datatypes ((Terminator 0)) (((T_Ret (Ret_returnOperand Maybe_Operand) (Ret_metadata_ Bool)) (T_CondBr (CondBr_condition Operand) (CondBr_trueDest Name) (CondBr_falseDest Name) (CondBr_metadata_ Bool)) (T_Br (Br_dest Name) (Br_metadata_ Bool)) (T_Switch (Switch_operand0_ Operand) (Switch_defaultDest Name) (Switch_dests List_Tup2_Constant_Name) (Switch_metadata_ Bool)) (T_IndirectBr (IndirectBr_operand0_ Operand) (IndirectBr_possibleDests List_Name) (IndirectBr_metadata_ Bool)) (T_Invoke (Invoke_callingConvention_ CallingConvention) (Invoke_returnAttributes_ List_ParameterAttribute) (Invoke_function_ CallableOperand) (Invoke_arguments_ List_Tup2_Operand_List_ParameterAttribute) (Invoke_functionAttributes_ List_Either_GroupID_FunctionAttribute) (Invoke_returnDest Name) (Invoke_exceptionDest Name) (Invoke_metadata_ Bool)) (T_Resume (Resume_operand0_ Operand) (Resume_metadata_ Bool)) (T_Unreachable (Unreachable_metadata_ Bool)) (T_CleanupRet (CleanupRet_cleanupPad Operand) (CleanupRet_unwindDest Maybe_Name) (CleanupRet_metadata_ Bool)) (T_CatchRet (CatchRet_catchPad Operand) (CatchRet_successor Name) (CatchRet_metadata_ Bool)) (T_CatchSwitch (CatchSwitch_parentPad_ Operand) (CatchSwitch_catchHandlers NonEmpty_Name) (CatchSwitch_defaultUnwindDest Maybe_Name) (CatchSwitch_metadata_ Bool)))))
(declare-datatypes ((Named_Terminator 0)) (((NT_infix_Terminator (l Name) (r Terminator)) (NT_Do_Terminator (f_Do_1 Terminator)))))
(declare-datatypes ((Named_Instruction 0)) (((NI_infix_Instruction (l Name) (r Instruction)) (NI_Do_Instruction (f_Do_1 Instruction)))))
(declare-datatypes ((List_Named_Instruction 0)) (((Nil_Named_Instruction) (Cons_Named_Instruction (head Named_Instruction) (tail List_Named_Instruction)))))
(declare-datatypes ((BasicBlock 0)) (((BB_BasicBlock (f_BasicBlock_1 Name) (f_BasicBlock_2 List_Named_Instruction) (f_BasicBlock_3 Named_Terminator)))))
(declare-datatypes ((Maybe_StorageClass 0)) (((MSC_Nothing_StorageClass) (MSC_Just_StorageClass (f_Just_1 StorageClass)))))
(declare-datatypes ((Visibility 0)) (((V_Default) (V_Hidden) (V_Protected))))
(declare-datatypes ((List_BasicBlock 0)) (((Nil_BasicBlock) (Cons_BasicBlock (head BasicBlock) (tail List_BasicBlock)))))
(declare-datatypes ((Maybe_ShortByteString 0)) (((MSBS_Nothing_ShortByteString) (MSBS_Just_ShortByteString (f_Just_1 String)))))
(declare-datatypes ((Model 0)) (((M_GeneralDynamic) (M_LocalDynamic) (M_InitialExec) (M_LocalExec))))
(declare-datatypes ((Maybe_Model 0)) (((MM_Nothing_Model) (MM_Just_Model (f_Just_1 Model)))))
(declare-datatypes ((Linkage 0)) (((L_Private) (L_Internal) (L_AvailableExternally) (L_LinkOnce) (L_Weak) (L_Common) (L_Appending) (L_ExternWeak) (L_LinkOnceODR) (L_WeakODR) (L_External))))
(declare-datatypes ((Maybe_Constant 0)) (((MC_Nothing_Constant) (MC_Just_Constant (f_Just_1 Constant)))))
(declare-datatypes ((Global 0)) (((G_GlobalVariable (GlobalVariable_name Name) (GlobalVariable_linkage Linkage) (GlobalVariable_visibility Visibility) (GlobalVariable_dllStorageClass Maybe_StorageClass) (GlobalVariable_threadLocalMode Maybe_Model) (GlobalVariable_unnamedAddr Maybe_UnnamedAddr) (GlobalVariable_isConstant Bool) (GlobalVariable_type_ Type) (GlobalVariable_addrSpace AddrSpace) (GlobalVariable_initializer Maybe_Constant) (GlobalVariable_section Maybe_ShortByteString) (GlobalVariable_comdat Maybe_ShortByteString) (GlobalVariable_alignment (_ BitVec 32)) (GlobalVariable_metadata Bool)) (G_GlobalAlias (GlobalAlias_name Name) (GlobalAlias_linkage Linkage) (GlobalAlias_visibility Visibility) (GlobalAlias_dllStorageClass Maybe_StorageClass) (GlobalAlias_threadLocalMode Maybe_Model) (GlobalAlias_unnamedAddr Maybe_UnnamedAddr) (GlobalAlias_type_ Type) (GlobalAlias_addrSpace AddrSpace) (GlobalAlias_aliasee Constant)) (G_Function (Function_linkage Linkage) (Function_visibility Visibility) (Function_dllStorageClass Maybe_StorageClass) (Function_callingConvention CallingConvention) (Function_returnAttributes List_ParameterAttribute) (Function_returnType Type) (Function_name Name) (Function_parameters Tup2_List_Parameter_Bool) (Function_functionAttributes List_Either_GroupID_FunctionAttribute) (Function_section Maybe_ShortByteString) (Function_comdat Maybe_ShortByteString) (Function_alignment (_ BitVec 32)) (Function_garbageCollectorName Maybe_ShortByteString) (Function_prefix Maybe_Constant) (Function_basicBlocks List_BasicBlock) (Function_personalityFunction Maybe_Constant) (Function_metadata Bool)))))

(declare-fun equiv-Bool!0 (Bool Bool) Bool)
(declare-fun equiv-Int!3 (Int Int) Bool)
(declare-fun equiv-Word16!6 ((_ BitVec 16) (_ BitVec 16)) Bool)
(declare-fun equiv-Word32!9 ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun equiv-Word!12 ((_ BitVec 32) (_ BitVec 32)) Bool)
(declare-fun equiv-Word64!15 ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun equiv-ShortByteString!18 (String String) Bool)
(declare-fun equiv-Visibility!21 (Visibility Visibility) Bool)
(declare-fun equiv-FloatingPointType!24
             (FloatingPointType FloatingPointType)
             Bool)
(declare-fun equiv-Model!27 (Model Model) Bool)
(declare-fun equiv-RMWOperation!30 (RMWOperation RMWOperation) Bool)
(declare-fun equiv-Linkage!33 (Linkage Linkage) Bool)
(declare-fun equiv-IntegerPredicate!36 (IntegerPredicate IntegerPredicate) Bool)
(declare-fun equiv-TailCallKind!39 (TailCallKind TailCallKind) Bool)
(declare-fun equiv-SynchronizationScope!42
             (SynchronizationScope SynchronizationScope)
             Bool)
(declare-fun equiv-MemoryOrdering!45 (MemoryOrdering MemoryOrdering) Bool)
(declare-fun equiv-Atomicity!48 (Atomicity Atomicity) Bool)
(declare-fun equiv-Dialect!51 (Dialect Dialect) Bool)
(declare-fun equiv-UnnamedAddr!54 (UnnamedAddr UnnamedAddr) Bool)
(declare-fun equiv-FloatingPointPredicate!57
             (FloatingPointPredicate FloatingPointPredicate)
             Bool)
(declare-fun equiv-StorageClass!60 (StorageClass StorageClass) Bool)
(declare-fun equiv-GroupID!63 (GroupID GroupID) Bool)
(declare-fun equiv-FastMathFlags!66 (FastMathFlags FastMathFlags) Bool)
(declare-fun equiv-Name!69 (Name Name) Bool)
(declare-fun equiv-ParameterAttribute!72
             (ParameterAttribute ParameterAttribute)
             Bool)
(declare-fun equiv-AddrSpace!75 (AddrSpace AddrSpace) Bool)
(declare-fun equiv-CallingConvention!78
             (CallingConvention CallingConvention)
             Bool)
(declare-fun equiv-SomeFloat!81 (SomeFloat SomeFloat) Bool)
(declare-fun equiv-List_Type!84 (List_Type List_Type) Bool)
(declare-fun equiv-Type!85 (Type Type) Bool)
(declare-fun equiv-InlineAssembly!90 (InlineAssembly InlineAssembly) Bool)
(declare-fun equiv-List_ParameterAttribute!93
             (List_ParameterAttribute List_ParameterAttribute)
             Bool)
(declare-fun equiv-Parameter!96 (Parameter Parameter) Bool)
(declare-fun equiv-List_Name!99 (List_Name List_Name) Bool)
(declare-fun equiv-List_Parameter!102 (List_Parameter List_Parameter) Bool)
(declare-fun equiv-List_Word32!105 (List_Word32 List_Word32) Bool)
(declare-fun equiv-Maybe_Model!108 (Maybe_Model Maybe_Model) Bool)
(declare-fun equiv-Maybe_Name!111 (Maybe_Name Maybe_Name) Bool)
(declare-fun equiv-Constant!114 (Constant Constant) Bool)
(declare-fun equiv-List_Constant!115 (List_Constant List_Constant) Bool)
(declare-fun equiv-LandingPadClause!120
             (LandingPadClause LandingPadClause)
             Bool)
(declare-fun equiv-List_LandingPadClause!123
             (List_LandingPadClause List_LandingPadClause)
             Bool)
(declare-fun equiv-Operand!126 (Operand Operand) Bool)
(declare-fun equiv-Maybe_Operand!129 (Maybe_Operand Maybe_Operand) Bool)
(declare-fun equiv-List_Operand!132 (List_Operand List_Operand) Bool)
(declare-fun equiv-CallableOperand!135 (CallableOperand CallableOperand) Bool)
(declare-fun equiv-Maybe_TailCallKind!138
             (Maybe_TailCallKind Maybe_TailCallKind)
             Bool)
(declare-fun equiv-Maybe_Atomicity!141 (Maybe_Atomicity Maybe_Atomicity) Bool)
(declare-fun equiv-Maybe_UnnamedAddr!144
             (Maybe_UnnamedAddr Maybe_UnnamedAddr)
             Bool)
(declare-fun equiv-Maybe_StorageClass!147
             (Maybe_StorageClass Maybe_StorageClass)
             Bool)
(declare-fun equiv-Maybe_Constant!150 (Maybe_Constant Maybe_Constant) Bool)
(declare-fun equiv-Maybe_ShortByteString!153
             (Maybe_ShortByteString Maybe_ShortByteString)
             Bool)
(declare-fun equiv-Maybe_Word32!156 (Maybe_Word32 Maybe_Word32) Bool)
(declare-fun equiv-FunctionAttribute!159
             (FunctionAttribute FunctionAttribute)
             Bool)
(declare-fun equiv-NonEmpty_Name!162 (NonEmpty_Name NonEmpty_Name) Bool)
(declare-fun equiv-Tup2_Operand_Name!165
             (Tup2_Operand_Name Tup2_Operand_Name)
             Bool)
(declare-fun equiv-List_Tup2_Operand_Name!168
             (List_Tup2_Operand_Name List_Tup2_Operand_Name)
             Bool)
(declare-fun equiv-Tup2_Operand_List_ParameterAttribute!171
             (Tup2_Operand_List_ParameterAttribute
              Tup2_Operand_List_ParameterAttribute)
             Bool)
(declare-fun equiv-List_Tup2_Operand_List_ParameterAttribute!174
             (List_Tup2_Operand_List_ParameterAttribute
              List_Tup2_Operand_List_ParameterAttribute)
             Bool)
(declare-fun equiv-Tup2_Constant_Name!177
             (Tup2_Constant_Name Tup2_Constant_Name)
             Bool)
(declare-fun equiv-List_Tup2_Constant_Name!180
             (List_Tup2_Constant_Name List_Tup2_Constant_Name)
             Bool)
(declare-fun equiv-Tup2_List_Parameter_Bool!183
             (Tup2_List_Parameter_Bool Tup2_List_Parameter_Bool)
             Bool)
(declare-fun equiv-Either_GroupID_FunctionAttribute!186
             (Either_GroupID_FunctionAttribute Either_GroupID_FunctionAttribute)
             Bool)
(declare-fun equiv-List_Either_GroupID_FunctionAttribute!189
             (List_Either_GroupID_FunctionAttribute
              List_Either_GroupID_FunctionAttribute)
             Bool)
(declare-fun equiv-Instruction!192 (Instruction Instruction) Bool)
(declare-fun equiv-Named_Instruction!195
             (Named_Instruction Named_Instruction)
             Bool)
(declare-fun equiv-List_Named_Instruction!198
             (List_Named_Instruction List_Named_Instruction)
             Bool)
(declare-fun equiv-Terminator!201 (Terminator Terminator) Bool)
(declare-fun equiv-Named_Terminator!204
             (Named_Terminator Named_Terminator)
             Bool)
(declare-fun equiv-BasicBlock!207 (BasicBlock BasicBlock) Bool)
(declare-fun equiv-List_BasicBlock!210 (List_BasicBlock List_BasicBlock) Bool)
(declare-fun equiv-Global!213 (Global Global) Bool)
(declare-fun p1x () Linkage)
(declare-fun p1y () Linkage)
(declare-fun p2y () Visibility)
(declare-fun p2x () Visibility)
(declare-fun p3y () Maybe_StorageClass)
(declare-fun p3x () Maybe_StorageClass)
(declare-fun p4y () CallingConvention)
(declare-fun p4x () CallingConvention)
(declare-fun p5y () List_ParameterAttribute)
(declare-fun p5x () List_ParameterAttribute)
(declare-fun p6y () Type)
(declare-fun p6x () Type)
(declare-fun p7y () Name)
(declare-fun p7x () Name)
(declare-fun p8y () Tup2_List_Parameter_Bool)
(declare-fun p8x () Tup2_List_Parameter_Bool)
(declare-fun p9y () List_Either_GroupID_FunctionAttribute)
(declare-fun p9x () List_Either_GroupID_FunctionAttribute)
(declare-fun p10y () Maybe_ShortByteString)
(declare-fun p10x () Maybe_ShortByteString)
(declare-fun p11y () Maybe_ShortByteString)
(declare-fun p11x () Maybe_ShortByteString)
(declare-fun p12y () (_ BitVec 32))
(declare-fun p12x () (_ BitVec 32))
(declare-fun p13y () Maybe_ShortByteString)
(declare-fun p13x () Maybe_ShortByteString)
(declare-fun p14y () Maybe_Constant)
(declare-fun p14x () Maybe_Constant)
(declare-fun p15y () List_BasicBlock)
(declare-fun p15x () List_BasicBlock)
(declare-fun p16y () Maybe_Constant)
(declare-fun p16x () Maybe_Constant)
(declare-fun p17y () Bool)
(declare-fun p17x () Bool)
(declare-fun p18x () Global)
(declare-fun p18y () Global)
(assert (forall ((x!1 Bool) (y!2 Bool))
  (! (= (equiv-Bool!0 x!1 y!2) (= x!1 y!2)) :weight 0)))
(assert (forall ((x!4 Int) (y!5 Int))
  (! (= (equiv-Int!3 x!4 y!5) (= x!4 y!5)) :weight 0)))
(assert (forall ((x!7 (_ BitVec 16)) (y!8 (_ BitVec 16)))
  (! (= (equiv-Word16!6 x!7 y!8) (= x!7 y!8)) :weight 0)))
(assert (forall ((x!10 (_ BitVec 32)) (y!11 (_ BitVec 32)))
  (! (= (equiv-Word32!9 x!10 y!11) (= x!10 y!11)) :weight 0)))
(assert (forall ((x!13 (_ BitVec 32)) (y!14 (_ BitVec 32)))
  (! (= (equiv-Word!12 x!13 y!14) (= x!13 y!14)) :weight 0)))
(assert (forall ((x!16 (_ BitVec 64)) (y!17 (_ BitVec 64)))
  (! (= (equiv-Word64!15 x!16 y!17) (= x!16 y!17)) :weight 0)))
(assert (forall ((x!19 String) (y!20 String))
  (! (= (equiv-ShortByteString!18 x!19 y!20) (= x!19 y!20)) :weight 0)))
(assert (forall ((x!22 Visibility) (y!23 Visibility))
  (! (= (equiv-Visibility!21 x!22 y!23)
        (or (and ((_ is (V_Default () Visibility)) x!22)
                 ((_ is (V_Default () Visibility)) y!23))
            (and ((_ is (V_Hidden () Visibility)) x!22)
                 ((_ is (V_Hidden () Visibility)) y!23))
            (and ((_ is (V_Protected () Visibility)) x!22)
                 ((_ is (V_Protected () Visibility)) y!23))))
     :weight 0)))
(assert (forall ((x!25 FloatingPointType) (y!26 FloatingPointType))
  (! (= (equiv-FloatingPointType!24 x!25 y!26)
        (or (and ((_ is (FPT_HalfFP () FloatingPointType)) x!25)
                 ((_ is (FPT_HalfFP () FloatingPointType)) y!26))
            (and ((_ is (FPT_FloatFP () FloatingPointType)) x!25)
                 ((_ is (FPT_FloatFP () FloatingPointType)) y!26))
            (and ((_ is (FPT_DoubleFP () FloatingPointType)) x!25)
                 ((_ is (FPT_DoubleFP () FloatingPointType)) y!26))
            (and ((_ is (FPT_FP128FP () FloatingPointType)) x!25)
                 ((_ is (FPT_FP128FP () FloatingPointType)) y!26))
            (and ((_ is (FPT_X86_FP80FP () FloatingPointType)) x!25)
                 ((_ is (FPT_X86_FP80FP () FloatingPointType)) y!26))
            (and ((_ is (FPT_PPC_FP128FP () FloatingPointType)) x!25)
                 ((_ is (FPT_PPC_FP128FP () FloatingPointType)) y!26))))
     :weight 0)))
(assert (forall ((x!28 Model) (y!29 Model))
  (! (= (equiv-Model!27 x!28 y!29)
        (or (and ((_ is (M_GeneralDynamic () Model)) x!28)
                 ((_ is (M_GeneralDynamic () Model)) y!29))
            (and ((_ is (M_LocalDynamic () Model)) x!28)
                 ((_ is (M_LocalDynamic () Model)) y!29))
            (and ((_ is (M_InitialExec () Model)) x!28)
                 ((_ is (M_InitialExec () Model)) y!29))
            (and ((_ is (M_LocalExec () Model)) x!28)
                 ((_ is (M_LocalExec () Model)) y!29))))
     :weight 0)))
(assert (forall ((x!31 RMWOperation) (y!32 RMWOperation))
  (! (= (equiv-RMWOperation!30 x!31 y!32)
        (or (and ((_ is (RMWO_Xchg () RMWOperation)) x!31)
                 ((_ is (RMWO_Xchg () RMWOperation)) y!32))
            (and ((_ is (RMWO_Add () RMWOperation)) x!31)
                 ((_ is (RMWO_Add () RMWOperation)) y!32))
            (and ((_ is (RMWO_Sub () RMWOperation)) x!31)
                 ((_ is (RMWO_Sub () RMWOperation)) y!32))
            (and ((_ is (RMWO_And () RMWOperation)) x!31)
                 ((_ is (RMWO_And () RMWOperation)) y!32))
            (and ((_ is (RMWO_Nand () RMWOperation)) x!31)
                 ((_ is (RMWO_Nand () RMWOperation)) y!32))
            (and ((_ is (RMWO_Or () RMWOperation)) x!31)
                 ((_ is (RMWO_Or () RMWOperation)) y!32))
            (and ((_ is (RMWO_Xor () RMWOperation)) x!31)
                 ((_ is (RMWO_Xor () RMWOperation)) y!32))
            (and ((_ is (RMWO_Max () RMWOperation)) x!31)
                 ((_ is (RMWO_Max () RMWOperation)) y!32))
            (and ((_ is (RMWO_Min () RMWOperation)) x!31)
                 ((_ is (RMWO_Min () RMWOperation)) y!32))
            (and ((_ is (RMWO_UMax () RMWOperation)) x!31)
                 ((_ is (RMWO_UMax () RMWOperation)) y!32))
            (and ((_ is (RMWO_UMin () RMWOperation)) x!31)
                 ((_ is (RMWO_UMin () RMWOperation)) y!32))))
     :weight 0)))
(assert (forall ((x!34 Linkage) (y!35 Linkage))
  (! (= (equiv-Linkage!33 x!34 y!35)
        (or (and ((_ is (L_Private () Linkage)) x!34)
                 ((_ is (L_Private () Linkage)) y!35))
            (and ((_ is (L_Internal () Linkage)) x!34)
                 ((_ is (L_Internal () Linkage)) y!35))
            (and ((_ is (L_AvailableExternally () Linkage)) x!34)
                 ((_ is (L_AvailableExternally () Linkage)) y!35))
            (and ((_ is (L_LinkOnce () Linkage)) x!34)
                 ((_ is (L_LinkOnce () Linkage)) y!35))
            (and ((_ is (L_Weak () Linkage)) x!34)
                 ((_ is (L_Weak () Linkage)) y!35))
            (and ((_ is (L_Common () Linkage)) x!34)
                 ((_ is (L_Common () Linkage)) y!35))
            (and ((_ is (L_Appending () Linkage)) x!34)
                 ((_ is (L_Appending () Linkage)) y!35))
            (and ((_ is (L_ExternWeak () Linkage)) x!34)
                 ((_ is (L_ExternWeak () Linkage)) y!35))
            (and ((_ is (L_LinkOnceODR () Linkage)) x!34)
                 ((_ is (L_LinkOnceODR () Linkage)) y!35))
            (and ((_ is (L_WeakODR () Linkage)) x!34)
                 ((_ is (L_WeakODR () Linkage)) y!35))
            (and ((_ is (L_External () Linkage)) x!34)
                 ((_ is (L_External () Linkage)) y!35))))
     :weight 0)))
(assert (forall ((x!37 IntegerPredicate) (y!38 IntegerPredicate))
  (! (= (equiv-IntegerPredicate!36 x!37 y!38)
        (or (and ((_ is (IP_EQ () IntegerPredicate)) x!37)
                 ((_ is (IP_EQ () IntegerPredicate)) y!38))
            (and ((_ is (IP_NE () IntegerPredicate)) x!37)
                 ((_ is (IP_NE () IntegerPredicate)) y!38))
            (and ((_ is (IP_UGT () IntegerPredicate)) x!37)
                 ((_ is (IP_UGT () IntegerPredicate)) y!38))
            (and ((_ is (IP_UGE () IntegerPredicate)) x!37)
                 ((_ is (IP_UGE () IntegerPredicate)) y!38))
            (and ((_ is (IP_ULT () IntegerPredicate)) x!37)
                 ((_ is (IP_ULT () IntegerPredicate)) y!38))
            (and ((_ is (IP_ULE () IntegerPredicate)) x!37)
                 ((_ is (IP_ULE () IntegerPredicate)) y!38))
            (and ((_ is (IP_SGT () IntegerPredicate)) x!37)
                 ((_ is (IP_SGT () IntegerPredicate)) y!38))
            (and ((_ is (IP_SGE () IntegerPredicate)) x!37)
                 ((_ is (IP_SGE () IntegerPredicate)) y!38))
            (and ((_ is (IP_SLT () IntegerPredicate)) x!37)
                 ((_ is (IP_SLT () IntegerPredicate)) y!38))
            (and ((_ is (IP_SLE () IntegerPredicate)) x!37)
                 ((_ is (IP_SLE () IntegerPredicate)) y!38))))
     :weight 0)))
(assert (forall ((x!40 TailCallKind) (y!41 TailCallKind))
  (! (= (equiv-TailCallKind!39 x!40 y!41)
        (or (and ((_ is (TCK_Tail () TailCallKind)) x!40)
                 ((_ is (TCK_Tail () TailCallKind)) y!41))
            (and ((_ is (TCK_MustTail () TailCallKind)) x!40)
                 ((_ is (TCK_MustTail () TailCallKind)) y!41))
            (and ((_ is (TCK_NoTail () TailCallKind)) x!40)
                 ((_ is (TCK_NoTail () TailCallKind)) y!41))))
     :weight 0)))
(assert (forall ((x!43 SynchronizationScope) (y!44 SynchronizationScope))
  (! (= (equiv-SynchronizationScope!42 x!43 y!44)
        (or (and ((_ is (SS_SingleThread () SynchronizationScope)) x!43)
                 ((_ is (SS_SingleThread () SynchronizationScope)) y!44))
            (and ((_ is (SS_System () SynchronizationScope)) x!43)
                 ((_ is (SS_System () SynchronizationScope)) y!44))))
     :weight 0)))
(assert (forall ((x!46 MemoryOrdering) (y!47 MemoryOrdering))
  (! (= (equiv-MemoryOrdering!45 x!46 y!47)
        (or (and ((_ is (MO_Unordered () MemoryOrdering)) x!46)
                 ((_ is (MO_Unordered () MemoryOrdering)) y!47))
            (and ((_ is (MO_Monotonic () MemoryOrdering)) x!46)
                 ((_ is (MO_Monotonic () MemoryOrdering)) y!47))
            (and ((_ is (MO_Acquire () MemoryOrdering)) x!46)
                 ((_ is (MO_Acquire () MemoryOrdering)) y!47))
            (and ((_ is (MO_Release () MemoryOrdering)) x!46)
                 ((_ is (MO_Release () MemoryOrdering)) y!47))
            (and ((_ is (MO_AcquireRelease () MemoryOrdering)) x!46)
                 ((_ is (MO_AcquireRelease () MemoryOrdering)) y!47))
            (and ((_ is (MO_SequentiallyConsistent () MemoryOrdering)) x!46)
                 ((_ is (MO_SequentiallyConsistent () MemoryOrdering)) y!47))))
     :weight 0)))
(assert (forall ((x!49 Atomicity) (y!50 Atomicity))
  (! (let ((a!1 (or (and ((_ is
                             (Tup2_SynchronizationScope_MemoryOrdering
                              (SynchronizationScope MemoryOrdering)
                              Atomicity))
                           x!49)
                         ((_ is
                             (Tup2_SynchronizationScope_MemoryOrdering
                              (SynchronizationScope MemoryOrdering)
                              Atomicity))
                           y!50)
                         (equiv-SynchronizationScope!42
                           (field1 x!49)
                           (field1 y!50))
                         (equiv-MemoryOrdering!45 (field2 x!49) (field2 y!50))))))
       (= (equiv-Atomicity!48 x!49 y!50) a!1))
     :weight 0)))
(assert (forall ((x!52 Dialect) (y!53 Dialect))
  (! (= (equiv-Dialect!51 x!52 y!53)
        (or (and ((_ is (D_ATTDialect () Dialect)) x!52)
                 ((_ is (D_ATTDialect () Dialect)) y!53))
            (and ((_ is (D_IntelDialect () Dialect)) x!52)
                 ((_ is (D_IntelDialect () Dialect)) y!53))))
     :weight 0)))
(assert (forall ((x!55 UnnamedAddr) (y!56 UnnamedAddr))
  (! (= (equiv-UnnamedAddr!54 x!55 y!56)
        (or (and ((_ is (UA_LocalAddr () UnnamedAddr)) x!55)
                 ((_ is (UA_LocalAddr () UnnamedAddr)) y!56))
            (and ((_ is (UA_GlobalAddr () UnnamedAddr)) x!55)
                 ((_ is (UA_GlobalAddr () UnnamedAddr)) y!56))))
     :weight 0)))
(assert (forall ((x!58 FloatingPointPredicate) (y!59 FloatingPointPredicate))
  (! (= (equiv-FloatingPointPredicate!57 x!58 y!59)
        (or (and ((_ is (FPP_False () FloatingPointPredicate)) x!58)
                 ((_ is (FPP_False () FloatingPointPredicate)) y!59))
            (and ((_ is (FPP_OEQ () FloatingPointPredicate)) x!58)
                 ((_ is (FPP_OEQ () FloatingPointPredicate)) y!59))
            (and ((_ is (FPP_OGT () FloatingPointPredicate)) x!58)
                 ((_ is (FPP_OGT () FloatingPointPredicate)) y!59))
            (and ((_ is (FPP_OGE () FloatingPointPredicate)) x!58)
                 ((_ is (FPP_OGE () FloatingPointPredicate)) y!59))
            (and ((_ is (FPP_OLT () FloatingPointPredicate)) x!58)
                 ((_ is (FPP_OLT () FloatingPointPredicate)) y!59))
            (and ((_ is (FPP_OLE () FloatingPointPredicate)) x!58)
                 ((_ is (FPP_OLE () FloatingPointPredicate)) y!59))
            (and ((_ is (FPP_ONE () FloatingPointPredicate)) x!58)
                 ((_ is (FPP_ONE () FloatingPointPredicate)) y!59))
            (and ((_ is (FPP_ORD () FloatingPointPredicate)) x!58)
                 ((_ is (FPP_ORD () FloatingPointPredicate)) y!59))
            (and ((_ is (FPP_UNO () FloatingPointPredicate)) x!58)
                 ((_ is (FPP_UNO () FloatingPointPredicate)) y!59))
            (and ((_ is (FPP_UEQ () FloatingPointPredicate)) x!58)
                 ((_ is (FPP_UEQ () FloatingPointPredicate)) y!59))
            (and ((_ is (FPP_UGT () FloatingPointPredicate)) x!58)
                 ((_ is (FPP_UGT () FloatingPointPredicate)) y!59))
            (and ((_ is (FPP_UGE () FloatingPointPredicate)) x!58)
                 ((_ is (FPP_UGE () FloatingPointPredicate)) y!59))
            (and ((_ is (FPP_ULT () FloatingPointPredicate)) x!58)
                 ((_ is (FPP_ULT () FloatingPointPredicate)) y!59))
            (and ((_ is (FPP_ULE () FloatingPointPredicate)) x!58)
                 ((_ is (FPP_ULE () FloatingPointPredicate)) y!59))
            (and ((_ is (FPP_UNE () FloatingPointPredicate)) x!58)
                 ((_ is (FPP_UNE () FloatingPointPredicate)) y!59))
            (and ((_ is (FPP_True () FloatingPointPredicate)) x!58)
                 ((_ is (FPP_True () FloatingPointPredicate)) y!59))))
     :weight 0)))
(assert (forall ((x!61 StorageClass) (y!62 StorageClass))
  (! (= (equiv-StorageClass!60 x!61 y!62)
        (or (and ((_ is (SC_Import () StorageClass)) x!61)
                 ((_ is (SC_Import () StorageClass)) y!62))
            (and ((_ is (SC_Export () StorageClass)) x!61)
                 ((_ is (SC_Export () StorageClass)) y!62))))
     :weight 0)))
(assert (forall ((x!64 GroupID) (y!65 GroupID))
  (! (let ((a!1 (or (and ((_ is (GID_GroupID ((_ BitVec 32)) GroupID)) x!64)
                         ((_ is (GID_GroupID ((_ BitVec 32)) GroupID)) y!65)
                         (equiv-Word!12 (f_GroupID_1 x!64) (f_GroupID_1 y!65))))))
       (= (equiv-GroupID!63 x!64 y!65) a!1))
     :weight 0)))
(assert (forall ((x!67 FastMathFlags) (y!68 FastMathFlags))
  (! (let ((a!1 (or (and ((_ is
                             (FMF_FastMathFlags
                              (Bool Bool Bool Bool Bool Bool Bool)
                              FastMathFlags))
                           x!67)
                         ((_ is
                             (FMF_FastMathFlags
                              (Bool Bool Bool Bool Bool Bool Bool)
                              FastMathFlags))
                           y!68)
                         (equiv-Bool!0 (FastMathFlags_allowReassoc x!67)
                                       (FastMathFlags_allowReassoc y!68))
                         (equiv-Bool!0 (FastMathFlags_noNaNs x!67)
                                       (FastMathFlags_noNaNs y!68))
                         (equiv-Bool!0 (FastMathFlags_noInfs x!67)
                                       (FastMathFlags_noInfs y!68))
                         (equiv-Bool!0 (FastMathFlags_noSignedZeros x!67)
                                       (FastMathFlags_noSignedZeros y!68))
                         (equiv-Bool!0 (FastMathFlags_allowReciprocal x!67)
                                       (FastMathFlags_allowReciprocal y!68))
                         (equiv-Bool!0 (FastMathFlags_allowContract x!67)
                                       (FastMathFlags_allowContract y!68))
                         (equiv-Bool!0 (FastMathFlags_approxFunc x!67)
                                       (FastMathFlags_approxFunc y!68))))))
       (= (equiv-FastMathFlags!66 x!67 y!68) a!1))
     :weight 0)))
(assert (forall ((x!70 Name) (y!71 Name))
  (! (let ((a!1 (or (and ((_ is (N_Name (String) Name)) x!70)
                         ((_ is (N_Name (String) Name)) y!71)
                         (equiv-ShortByteString!18
                           (f_Name_1 x!70)
                           (f_Name_1 y!71)))
                    (and ((_ is (N_UnName ((_ BitVec 32)) Name)) x!70)
                         ((_ is (N_UnName ((_ BitVec 32)) Name)) y!71)
                         (equiv-Word!12 (f_UnName_1 x!70) (f_UnName_1 y!71))))))
       (= (equiv-Name!69 x!70 y!71) a!1))
     :weight 0)))
(assert (forall ((x!73 ParameterAttribute) (y!74 ParameterAttribute))
  (! (let ((a!1 (or (and ((_ is (PA_ZeroExt () ParameterAttribute)) x!73)
                         ((_ is (PA_ZeroExt () ParameterAttribute)) y!74))
                    (and ((_ is (PA_SignExt () ParameterAttribute)) x!73)
                         ((_ is (PA_SignExt () ParameterAttribute)) y!74))
                    (and ((_ is (PA_InReg () ParameterAttribute)) x!73)
                         ((_ is (PA_InReg () ParameterAttribute)) y!74))
                    (and ((_ is (PA_SRet () ParameterAttribute)) x!73)
                         ((_ is (PA_SRet () ParameterAttribute)) y!74))
                    (and ((_ is
                             (PA_Alignment ((_ BitVec 64)) ParameterAttribute))
                           x!73)
                         ((_ is
                             (PA_Alignment ((_ BitVec 64)) ParameterAttribute))
                           y!74)
                         (equiv-Word64!15 (f_Alignment_1 x!73)
                                          (f_Alignment_1 y!74)))
                    (and ((_ is (PA_NoAlias () ParameterAttribute)) x!73)
                         ((_ is (PA_NoAlias () ParameterAttribute)) y!74))
                    (and ((_ is (PA_ByVal () ParameterAttribute)) x!73)
                         ((_ is (PA_ByVal () ParameterAttribute)) y!74))
                    (and ((_ is (PA_NoCapture () ParameterAttribute)) x!73)
                         ((_ is (PA_NoCapture () ParameterAttribute)) y!74))
                    (and ((_ is (PA_Nest () ParameterAttribute)) x!73)
                         ((_ is (PA_Nest () ParameterAttribute)) y!74))
                    (and ((_ is (PA_ReadNone () ParameterAttribute)) x!73)
                         ((_ is (PA_ReadNone () ParameterAttribute)) y!74))
                    (and ((_ is (PA_ReadOnly () ParameterAttribute)) x!73)
                         ((_ is (PA_ReadOnly () ParameterAttribute)) y!74))
                    (and ((_ is (PA_WriteOnly () ParameterAttribute)) x!73)
                         ((_ is (PA_WriteOnly () ParameterAttribute)) y!74))
                    (and ((_ is (PA_ImmArg () ParameterAttribute)) x!73)
                         ((_ is (PA_ImmArg () ParameterAttribute)) y!74))
                    (and ((_ is (PA_InAlloca () ParameterAttribute)) x!73)
                         ((_ is (PA_InAlloca () ParameterAttribute)) y!74))
                    (and ((_ is (PA_NonNull () ParameterAttribute)) x!73)
                         ((_ is (PA_NonNull () ParameterAttribute)) y!74))
                    (and ((_ is
                             (PA_Dereferenceable
                              ((_ BitVec 64))
                              ParameterAttribute))
                           x!73)
                         ((_ is
                             (PA_Dereferenceable
                              ((_ BitVec 64))
                              ParameterAttribute))
                           y!74)
                         (equiv-Word64!15 (f_Dereferenceable_1 x!73)
                                          (f_Dereferenceable_1 y!74)))
                    (and ((_ is
                             (PA_DereferenceableOrNull
                              ((_ BitVec 64))
                              ParameterAttribute))
                           x!73)
                         ((_ is
                             (PA_DereferenceableOrNull
                              ((_ BitVec 64))
                              ParameterAttribute))
                           y!74)
                         (equiv-Word64!15 (f_DereferenceableOrNull_1 x!73)
                                          (f_DereferenceableOrNull_1 y!74)))
                    (and ((_ is (PA_Returned () ParameterAttribute)) x!73)
                         ((_ is (PA_Returned () ParameterAttribute)) y!74))
                    (and ((_ is (PA_SwiftSelf () ParameterAttribute)) x!73)
                         ((_ is (PA_SwiftSelf () ParameterAttribute)) y!74))
                    (and ((_ is (PA_SwiftError () ParameterAttribute)) x!73)
                         ((_ is (PA_SwiftError () ParameterAttribute)) y!74))
                    (and ((_ is
                             (PA_StringAttribute
                              (String String)
                              ParameterAttribute))
                           x!73)
                         ((_ is
                             (PA_StringAttribute
                              (String String)
                              ParameterAttribute))
                           y!74)
                         (equiv-ShortByteString!18
                           (StringAttribute_stringAttributeKind x!73)
                           (StringAttribute_stringAttributeKind y!74))
                         (equiv-ShortByteString!18
                           (StringAttribute_stringAttributeValue x!73)
                           (StringAttribute_stringAttributeValue y!74))))))
       (= (equiv-ParameterAttribute!72 x!73 y!74) a!1))
     :weight 0)))
(assert (forall ((x!76 AddrSpace) (y!77 AddrSpace))
  (! (let ((a!1 (or (and ((_ is (AS_AddrSpace ((_ BitVec 32)) AddrSpace)) x!76)
                         ((_ is (AS_AddrSpace ((_ BitVec 32)) AddrSpace)) y!77)
                         (equiv-Word!12 (f_AddrSpace_1 x!76)
                                        (f_AddrSpace_1 y!77))))))
       (= (equiv-AddrSpace!75 x!76 y!77) a!1))
     :weight 0)))
(assert (forall ((x!79 CallingConvention) (y!80 CallingConvention))
  (! (let ((a!1 (or (and ((_ is (CC_C () CallingConvention)) x!79)
                         ((_ is (CC_C () CallingConvention)) y!80))
                    (and ((_ is (CC_Fast () CallingConvention)) x!79)
                         ((_ is (CC_Fast () CallingConvention)) y!80))
                    (and ((_ is (CC_Cold () CallingConvention)) x!79)
                         ((_ is (CC_Cold () CallingConvention)) y!80))
                    (and ((_ is (CC_GHC () CallingConvention)) x!79)
                         ((_ is (CC_GHC () CallingConvention)) y!80))
                    (and ((_ is (CC_HiPE () CallingConvention)) x!79)
                         ((_ is (CC_HiPE () CallingConvention)) y!80))
                    (and ((_ is (CC_WebKit_JS () CallingConvention)) x!79)
                         ((_ is (CC_WebKit_JS () CallingConvention)) y!80))
                    (and ((_ is (CC_AnyReg () CallingConvention)) x!79)
                         ((_ is (CC_AnyReg () CallingConvention)) y!80))
                    (and ((_ is (CC_PreserveMost () CallingConvention)) x!79)
                         ((_ is (CC_PreserveMost () CallingConvention)) y!80))
                    (and ((_ is (CC_PreserveAll () CallingConvention)) x!79)
                         ((_ is (CC_PreserveAll () CallingConvention)) y!80))
                    (and ((_ is (CC_Swift () CallingConvention)) x!79)
                         ((_ is (CC_Swift () CallingConvention)) y!80))
                    (and ((_ is (CC_CXX_FastTLS () CallingConvention)) x!79)
                         ((_ is (CC_CXX_FastTLS () CallingConvention)) y!80))
                    (and ((_ is (CC_X86_StdCall () CallingConvention)) x!79)
                         ((_ is (CC_X86_StdCall () CallingConvention)) y!80))
                    (and ((_ is (CC_X86_FastCall () CallingConvention)) x!79)
                         ((_ is (CC_X86_FastCall () CallingConvention)) y!80))
                    (and ((_ is (CC_ARM_APCS () CallingConvention)) x!79)
                         ((_ is (CC_ARM_APCS () CallingConvention)) y!80))
                    (and ((_ is (CC_ARM_AAPCS () CallingConvention)) x!79)
                         ((_ is (CC_ARM_AAPCS () CallingConvention)) y!80))
                    (and ((_ is (CC_ARM_AAPCS_VFP () CallingConvention)) x!79)
                         ((_ is (CC_ARM_AAPCS_VFP () CallingConvention)) y!80))
                    (and ((_ is (CC_MSP430_INTR () CallingConvention)) x!79)
                         ((_ is (CC_MSP430_INTR () CallingConvention)) y!80))
                    (and ((_ is (CC_X86_ThisCall () CallingConvention)) x!79)
                         ((_ is (CC_X86_ThisCall () CallingConvention)) y!80))
                    (and ((_ is (CC_PTX_Kernel () CallingConvention)) x!79)
                         ((_ is (CC_PTX_Kernel () CallingConvention)) y!80))
                    (and ((_ is (CC_PTX_Device () CallingConvention)) x!79)
                         ((_ is (CC_PTX_Device () CallingConvention)) y!80))
                    (and ((_ is (CC_SPIR_FUNC () CallingConvention)) x!79)
                         ((_ is (CC_SPIR_FUNC () CallingConvention)) y!80))
                    (and ((_ is (CC_SPIR_KERNEL () CallingConvention)) x!79)
                         ((_ is (CC_SPIR_KERNEL () CallingConvention)) y!80))
                    (and ((_ is (CC_Intel_OCL_BI () CallingConvention)) x!79)
                         ((_ is (CC_Intel_OCL_BI () CallingConvention)) y!80))
                    (and ((_ is (CC_X86_64_SysV () CallingConvention)) x!79)
                         ((_ is (CC_X86_64_SysV () CallingConvention)) y!80))
                    (and ((_ is (CC_Win64 () CallingConvention)) x!79)
                         ((_ is (CC_Win64 () CallingConvention)) y!80))
                    (and ((_ is (CC_X86_VectorCall () CallingConvention)) x!79)
                         ((_ is (CC_X86_VectorCall () CallingConvention)) y!80))
                    (and ((_ is (CC_HHVM () CallingConvention)) x!79)
                         ((_ is (CC_HHVM () CallingConvention)) y!80))
                    (and ((_ is (CC_HHVM_C () CallingConvention)) x!79)
                         ((_ is (CC_HHVM_C () CallingConvention)) y!80))
                    (and ((_ is (CC_X86_Intr () CallingConvention)) x!79)
                         ((_ is (CC_X86_Intr () CallingConvention)) y!80))
                    (and ((_ is (CC_AVR_Intr () CallingConvention)) x!79)
                         ((_ is (CC_AVR_Intr () CallingConvention)) y!80))
                    (and ((_ is (CC_AVR_Signal () CallingConvention)) x!79)
                         ((_ is (CC_AVR_Signal () CallingConvention)) y!80))
                    (and ((_ is (CC_AVR_Builtin () CallingConvention)) x!79)
                         ((_ is (CC_AVR_Builtin () CallingConvention)) y!80))
                    (and ((_ is (CC_AMDGPU_VS () CallingConvention)) x!79)
                         ((_ is (CC_AMDGPU_VS () CallingConvention)) y!80))
                    (and ((_ is (CC_AMDGPU_HS () CallingConvention)) x!79)
                         ((_ is (CC_AMDGPU_HS () CallingConvention)) y!80))
                    (and ((_ is (CC_AMDGPU_GS () CallingConvention)) x!79)
                         ((_ is (CC_AMDGPU_GS () CallingConvention)) y!80))
                    (and ((_ is (CC_AMDGPU_PS () CallingConvention)) x!79)
                         ((_ is (CC_AMDGPU_PS () CallingConvention)) y!80))
                    (and ((_ is (CC_AMDGPU_CS () CallingConvention)) x!79)
                         ((_ is (CC_AMDGPU_CS () CallingConvention)) y!80))
                    (and ((_ is (CC_AMDGPU_Kernel () CallingConvention)) x!79)
                         ((_ is (CC_AMDGPU_Kernel () CallingConvention)) y!80))
                    (and ((_ is (CC_X86_RegCall () CallingConvention)) x!79)
                         ((_ is (CC_X86_RegCall () CallingConvention)) y!80))
                    (and ((_ is (CC_MSP430_Builtin () CallingConvention)) x!79)
                         ((_ is (CC_MSP430_Builtin () CallingConvention)) y!80))
                    (and ((_ is (CC_Numbered ((_ BitVec 32)) CallingConvention))
                           x!79)
                         ((_ is (CC_Numbered ((_ BitVec 32)) CallingConvention))
                           y!80)
                         (equiv-Word!12 (f_Numbered_1 x!79) (f_Numbered_1 y!80))))))
       (= (equiv-CallingConvention!78 x!79 y!80) a!1))
     :weight 0)))
(assert (forall ((x!82 SomeFloat) (y!83 SomeFloat))
  (! (let ((a!1 (or (and ((_ is (SF_Half ((_ BitVec 16)) SomeFloat)) x!82)
                         ((_ is (SF_Half ((_ BitVec 16)) SomeFloat)) y!83)
                         (equiv-Word16!6 (f_Half_1 x!82) (f_Half_1 y!83)))
                    (and ((_ is (SF_Single (Bool) SomeFloat)) x!82)
                         ((_ is (SF_Single (Bool) SomeFloat)) y!83)
                         (equiv-Bool!0 (f_Single_1 x!82) (f_Single_1 y!83)))
                    (and ((_ is (SF_Double (Bool) SomeFloat)) x!82)
                         ((_ is (SF_Double (Bool) SomeFloat)) y!83)
                         (equiv-Bool!0 (f_Double_1 x!82) (f_Double_1 y!83)))
                    (and ((_ is
                             (SF_Quadruple
                              ((_ BitVec 64) (_ BitVec 64))
                              SomeFloat))
                           x!82)
                         ((_ is
                             (SF_Quadruple
                              ((_ BitVec 64) (_ BitVec 64))
                              SomeFloat))
                           y!83)
                         (equiv-Word64!15 (f_Quadruple_1 x!82)
                                          (f_Quadruple_1 y!83))
                         (equiv-Word64!15 (f_Quadruple_2 x!82)
                                          (f_Quadruple_2 y!83)))
                    (and ((_ is
                             (SF_X86_FP80
                              ((_ BitVec 16) (_ BitVec 64))
                              SomeFloat))
                           x!82)
                         ((_ is
                             (SF_X86_FP80
                              ((_ BitVec 16) (_ BitVec 64))
                              SomeFloat))
                           y!83)
                         (equiv-Word16!6 (f_X86_FP80_1 x!82)
                                         (f_X86_FP80_1 y!83))
                         (equiv-Word64!15 (f_X86_FP80_2 x!82)
                                          (f_X86_FP80_2 y!83)))
                    (and ((_ is
                             (SF_PPC_FP128
                              ((_ BitVec 64) (_ BitVec 64))
                              SomeFloat))
                           x!82)
                         ((_ is
                             (SF_PPC_FP128
                              ((_ BitVec 64) (_ BitVec 64))
                              SomeFloat))
                           y!83)
                         (equiv-Word64!15 (f_PPC_FP128_1 x!82)
                                          (f_PPC_FP128_1 y!83))
                         (equiv-Word64!15 (f_PPC_FP128_2 x!82)
                                          (f_PPC_FP128_2 y!83))))))
       (= (equiv-SomeFloat!81 x!82 y!83) a!1))
     :weight 0)))
(assert (forall ((x!86 List_Type) (y!87 List_Type))
  (! (let ((a!1 (or (and ((_ is (Nil_Type () List_Type)) x!86)
                         ((_ is (Nil_Type () List_Type)) y!87))
                    (and ((_ is (Cons_Type (Type List_Type) List_Type)) x!86)
                         ((_ is (Cons_Type (Type List_Type) List_Type)) y!87)
                         (equiv-Type!85 (head x!86) (head y!87))
                         (equiv-List_Type!84 (tail x!86) (tail y!87))))))
       (= (equiv-List_Type!84 x!86 y!87) a!1))
     :weight 0)))
(assert (forall ((x!88 Type) (y!89 Type))
  (! (let ((a!1 (or (and ((_ is (T_VoidType () Type)) x!88)
                         ((_ is (T_VoidType () Type)) y!89))
                    (and ((_ is (T_IntegerType ((_ BitVec 32)) Type)) x!88)
                         ((_ is (T_IntegerType ((_ BitVec 32)) Type)) y!89)
                         (equiv-Word!12 (IntegerType_typeBits x!88)
                                        (IntegerType_typeBits y!89)))
                    (and ((_ is (T_PointerType (Type AddrSpace) Type)) x!88)
                         ((_ is (T_PointerType (Type AddrSpace) Type)) y!89)
                         (equiv-Type!85 (PointerType_pointerReferent x!88)
                                        (PointerType_pointerReferent y!89))
                         (equiv-AddrSpace!75
                           (PointerType_pointerAddrSpace x!88)
                           (PointerType_pointerAddrSpace y!89)))
                    (and ((_ is (T_FloatingPointType (FloatingPointType) Type))
                           x!88)
                         ((_ is (T_FloatingPointType (FloatingPointType) Type))
                           y!89)
                         (equiv-FloatingPointType!24
                           (FloatingPointType_floatingPointType x!88)
                           (FloatingPointType_floatingPointType y!89)))
                    (and ((_ is (T_FunctionType (Type List_Type Bool) Type))
                           x!88)
                         ((_ is (T_FunctionType (Type List_Type Bool) Type))
                           y!89)
                         (equiv-Type!85 (FunctionType_resultType x!88)
                                        (FunctionType_resultType y!89))
                         (equiv-List_Type!84
                           (FunctionType_argumentTypes x!88)
                           (FunctionType_argumentTypes y!89))
                         (equiv-Bool!0 (FunctionType_isVarArg x!88)
                                       (FunctionType_isVarArg y!89)))
                    (and ((_ is (T_VectorType ((_ BitVec 32) Type) Type)) x!88)
                         ((_ is (T_VectorType ((_ BitVec 32) Type) Type)) y!89)
                         (equiv-Word!12 (VectorType_nVectorElements x!88)
                                        (VectorType_nVectorElements y!89))
                         (equiv-Type!85 (VectorType_elementType x!88)
                                        (VectorType_elementType y!89)))
                    (and ((_ is (T_StructureType (Bool List_Type) Type)) x!88)
                         ((_ is (T_StructureType (Bool List_Type) Type)) y!89)
                         (equiv-Bool!0 (StructureType_isPacked x!88)
                                       (StructureType_isPacked y!89))
                         (equiv-List_Type!84
                           (StructureType_elementTypes x!88)
                           (StructureType_elementTypes y!89)))
                    (and ((_ is (T_ArrayType ((_ BitVec 64) Type) Type)) x!88)
                         ((_ is (T_ArrayType ((_ BitVec 64) Type) Type)) y!89)
                         (equiv-Word64!15 (ArrayType_nArrayElements x!88)
                                          (ArrayType_nArrayElements y!89))
                         (equiv-Type!85 (ArrayType_elementType x!88)
                                        (ArrayType_elementType y!89)))
                    (and ((_ is (T_NamedTypeReference (Name) Type)) x!88)
                         ((_ is (T_NamedTypeReference (Name) Type)) y!89)
                         (equiv-Name!69 (f_NamedTypeReference_1 x!88)
                                        (f_NamedTypeReference_1 y!89)))
                    (and ((_ is (T_MetadataType () Type)) x!88)
                         ((_ is (T_MetadataType () Type)) y!89))
                    (and ((_ is (T_LabelType () Type)) x!88)
                         ((_ is (T_LabelType () Type)) y!89))
                    (and ((_ is (T_TokenType () Type)) x!88)
                         ((_ is (T_TokenType () Type)) y!89)))))
       (= (equiv-Type!85 x!88 y!89) a!1))
     :weight 0)))
(assert (forall ((x!91 InlineAssembly) (y!92 InlineAssembly))
  (! (let ((a!1 (or (and ((_ is
                             (IA_InlineAssembly
                              (Type String String Bool Bool Dialect)
                              InlineAssembly))
                           x!91)
                         ((_ is
                             (IA_InlineAssembly
                              (Type String String Bool Bool Dialect)
                              InlineAssembly))
                           y!92)
                         (equiv-Type!85 (InlineAssembly_type_ x!91)
                                        (InlineAssembly_type_ y!92))
                         (equiv-ShortByteString!18
                           (InlineAssembly_assembly x!91)
                           (InlineAssembly_assembly y!92))
                         (equiv-ShortByteString!18
                           (InlineAssembly_constraints x!91)
                           (InlineAssembly_constraints y!92))
                         (equiv-Bool!0 (InlineAssembly_hasSideEffects x!91)
                                       (InlineAssembly_hasSideEffects y!92))
                         (equiv-Bool!0 (InlineAssembly_alignStack x!91)
                                       (InlineAssembly_alignStack y!92))
                         (equiv-Dialect!51 (InlineAssembly_dialect x!91)
                                           (InlineAssembly_dialect y!92))))))
       (= (equiv-InlineAssembly!90 x!91 y!92) a!1))
     :weight 0)))
(assert (forall ((x!94 List_ParameterAttribute) (y!95 List_ParameterAttribute))
  (! (let ((a!1 (or (and ((_ is
                             (Nil_ParameterAttribute () List_ParameterAttribute))
                           x!94)
                         ((_ is
                             (Nil_ParameterAttribute () List_ParameterAttribute))
                           y!95))
                    (and ((_ is
                             (Cons_ParameterAttribute
                              (ParameterAttribute List_ParameterAttribute)
                              List_ParameterAttribute))
                           x!94)
                         ((_ is
                             (Cons_ParameterAttribute
                              (ParameterAttribute List_ParameterAttribute)
                              List_ParameterAttribute))
                           y!95)
                         (equiv-ParameterAttribute!72 (head x!94) (head y!95))
                         (equiv-List_ParameterAttribute!93
                           (tail x!94)
                           (tail y!95))))))
       (= (equiv-List_ParameterAttribute!93 x!94 y!95) a!1))
     :weight 0)))
(assert (forall ((x!97 Parameter) (y!98 Parameter))
  (! (let ((a!1 (or (and ((_ is
                             (P_Parameter
                              (Type Name List_ParameterAttribute)
                              Parameter))
                           x!97)
                         ((_ is
                             (P_Parameter
                              (Type Name List_ParameterAttribute)
                              Parameter))
                           y!98)
                         (equiv-Type!85 (f_Parameter_1 x!97)
                                        (f_Parameter_1 y!98))
                         (equiv-Name!69 (f_Parameter_2 x!97)
                                        (f_Parameter_2 y!98))
                         (equiv-List_ParameterAttribute!93
                           (f_Parameter_3 x!97)
                           (f_Parameter_3 y!98))))))
       (= (equiv-Parameter!96 x!97 y!98) a!1))
     :weight 0)))
(assert (forall ((x!100 List_Name) (y!101 List_Name))
  (! (let ((a!1 (or (and ((_ is (Nil_Name () List_Name)) x!100)
                         ((_ is (Nil_Name () List_Name)) y!101))
                    (and ((_ is (Cons_Name (Name List_Name) List_Name)) x!100)
                         ((_ is (Cons_Name (Name List_Name) List_Name)) y!101)
                         (equiv-Name!69 (head x!100) (head y!101))
                         (equiv-List_Name!99 (tail x!100) (tail y!101))))))
       (= (equiv-List_Name!99 x!100 y!101) a!1))
     :weight 0)))
(assert (forall ((x!103 List_Parameter) (y!104 List_Parameter))
  (! (let ((a!1 (or (and ((_ is (Nil_Parameter () List_Parameter)) x!103)
                         ((_ is (Nil_Parameter () List_Parameter)) y!104))
                    (and ((_ is
                             (Cons_Parameter
                              (Parameter List_Parameter)
                              List_Parameter))
                           x!103)
                         ((_ is
                             (Cons_Parameter
                              (Parameter List_Parameter)
                              List_Parameter))
                           y!104)
                         (equiv-Parameter!96 (head x!103) (head y!104))
                         (equiv-List_Parameter!102 (tail x!103) (tail y!104))))))
       (= (equiv-List_Parameter!102 x!103 y!104) a!1))
     :weight 0)))
(assert (forall ((x!106 List_Word32) (y!107 List_Word32))
  (! (let ((a!1 (or (and ((_ is (Nil_Word32 () List_Word32)) x!106)
                         ((_ is (Nil_Word32 () List_Word32)) y!107))
                    (and ((_ is
                             (Cons_Word32
                              ((_ BitVec 32) List_Word32)
                              List_Word32))
                           x!106)
                         ((_ is
                             (Cons_Word32
                              ((_ BitVec 32) List_Word32)
                              List_Word32))
                           y!107)
                         (equiv-Word!12 (head x!106) (head y!107))
                         (equiv-List_Word32!105 (tail x!106) (tail y!107))))))
       (= (equiv-List_Word32!105 x!106 y!107) a!1))
     :weight 0)))
(assert (forall ((x!109 Maybe_Model) (y!110 Maybe_Model))
  (! (let ((a!1 (or (and ((_ is (MM_Nothing_Model () Maybe_Model)) x!109)
                         ((_ is (MM_Nothing_Model () Maybe_Model)) y!110))
                    (and ((_ is (MM_Just_Model (Model) Maybe_Model)) x!109)
                         ((_ is (MM_Just_Model (Model) Maybe_Model)) y!110)
                         (equiv-Model!27 (f_Just_1 x!109) (f_Just_1 y!110))))))
       (= (equiv-Maybe_Model!108 x!109 y!110) a!1))
     :weight 0)))
(assert (forall ((x!112 Maybe_Name) (y!113 Maybe_Name))
  (! (let ((a!1 (or (and ((_ is (MN_Nothing_Name () Maybe_Name)) x!112)
                         ((_ is (MN_Nothing_Name () Maybe_Name)) y!113))
                    (and ((_ is (MN_Just_Name (Name) Maybe_Name)) x!112)
                         ((_ is (MN_Just_Name (Name) Maybe_Name)) y!113)
                         (equiv-Name!69 (f_Just_1 x!112) (f_Just_1 y!113))))))
       (= (equiv-Maybe_Name!111 x!112 y!113) a!1))
     :weight 0)))
(assert (forall ((x!116 Constant) (y!117 Constant))
  (! (let ((a!1 (or (and ((_ is (C_Int ((_ BitVec 32) Int) Constant)) x!116)
                         ((_ is (C_Int ((_ BitVec 32) Int) Constant)) y!117)
                         (equiv-Word!12 (Int_integerBits x!116)
                                        (Int_integerBits y!117))
                         (equiv-Int!3 (Int_integerValue x!116)
                                      (Int_integerValue y!117)))
                    (and ((_ is (C_Float (SomeFloat) Constant)) x!116)
                         ((_ is (C_Float (SomeFloat) Constant)) y!117)
                         (equiv-SomeFloat!81
                           (Float_floatValue x!116)
                           (Float_floatValue y!117)))
                    (and ((_ is (C_Null (Type) Constant)) x!116)
                         ((_ is (C_Null (Type) Constant)) y!117)
                         (equiv-Type!85 (Null_constantType x!116)
                                        (Null_constantType y!117)))
                    (and ((_ is (C_AggregateZero (Type) Constant)) x!116)
                         ((_ is (C_AggregateZero (Type) Constant)) y!117)
                         (equiv-Type!85 (AggregateZero_constantType x!116)
                                        (AggregateZero_constantType y!117)))
                    (and ((_ is
                             (C_Struct (Maybe_Name Bool List_Constant) Constant))
                           x!116)
                         ((_ is
                             (C_Struct (Maybe_Name Bool List_Constant) Constant))
                           y!117)
                         (equiv-Maybe_Name!111
                           (Struct_structName x!116)
                           (Struct_structName y!117))
                         (equiv-Bool!0 (Struct_isPacked x!116)
                                       (Struct_isPacked y!117))
                         (equiv-List_Constant!115
                           (Struct_memberValues x!116)
                           (Struct_memberValues y!117)))
                    (and ((_ is (C_Array (Type List_Constant) Constant)) x!116)
                         ((_ is (C_Array (Type List_Constant) Constant)) y!117)
                         (equiv-Type!85 (Array_memberType x!116)
                                        (Array_memberType y!117))
                         (equiv-List_Constant!115
                           (Array_memberValues x!116)
                           (Array_memberValues y!117)))
                    (and ((_ is (C_Vector (List_Constant) Constant)) x!116)
                         ((_ is (C_Vector (List_Constant) Constant)) y!117)
                         (equiv-List_Constant!115
                           (Vector_memberValues x!116)
                           (Vector_memberValues y!117)))
                    (and ((_ is (C_Undef (Type) Constant)) x!116)
                         ((_ is (C_Undef (Type) Constant)) y!117)
                         (equiv-Type!85 (Undef_constantType x!116)
                                        (Undef_constantType y!117)))
                    (and ((_ is (C_BlockAddress (Name Name) Constant)) x!116)
                         ((_ is (C_BlockAddress (Name Name) Constant)) y!117)
                         (equiv-Name!69 (BlockAddress_blockAddressFunction
                                          x!116)
                                        (BlockAddress_blockAddressFunction
                                          y!117))
                         (equiv-Name!69 (BlockAddress_blockAddressBlock x!116)
                                        (BlockAddress_blockAddressBlock y!117)))
                    (and ((_ is (C_GlobalReference (Type Name) Constant)) x!116)
                         ((_ is (C_GlobalReference (Type Name) Constant)) y!117)
                         (equiv-Type!85 (f_GlobalReference_1 x!116)
                                        (f_GlobalReference_1 y!117))
                         (equiv-Name!69 (f_GlobalReference_2 x!116)
                                        (f_GlobalReference_2 y!117)))
                    (and ((_ is (C_TokenNone () Constant)) x!116)
                         ((_ is (C_TokenNone () Constant)) y!117))
                    (and ((_ is (C_Add (Bool Bool Constant Constant) Constant))
                           x!116)
                         ((_ is (C_Add (Bool Bool Constant Constant) Constant))
                           y!117)
                         (equiv-Bool!0 (Add_nsw x!116) (Add_nsw y!117))
                         (equiv-Bool!0 (Add_nuw x!116) (Add_nuw y!117))
                         (equiv-Constant!114
                           (Add_operand0 x!116)
                           (Add_operand0 y!117))
                         (equiv-Constant!114
                           (Add_operand1 x!116)
                           (Add_operand1 y!117)))
                    (and ((_ is (C_FAdd (Constant Constant) Constant)) x!116)
                         ((_ is (C_FAdd (Constant Constant) Constant)) y!117)
                         (equiv-Constant!114
                           (FAdd_operand0 x!116)
                           (FAdd_operand0 y!117))
                         (equiv-Constant!114
                           (FAdd_operand1 x!116)
                           (FAdd_operand1 y!117)))
                    (and ((_ is (C_Sub (Bool Bool Constant Constant) Constant))
                           x!116)
                         ((_ is (C_Sub (Bool Bool Constant Constant) Constant))
                           y!117)
                         (equiv-Bool!0 (Sub_nsw x!116) (Sub_nsw y!117))
                         (equiv-Bool!0 (Sub_nuw x!116) (Sub_nuw y!117))
                         (equiv-Constant!114
                           (Sub_operand0 x!116)
                           (Sub_operand0 y!117))
                         (equiv-Constant!114
                           (Sub_operand1 x!116)
                           (Sub_operand1 y!117)))
                    (and ((_ is (C_FSub (Constant Constant) Constant)) x!116)
                         ((_ is (C_FSub (Constant Constant) Constant)) y!117)
                         (equiv-Constant!114
                           (FSub_operand0 x!116)
                           (FSub_operand0 y!117))
                         (equiv-Constant!114
                           (FSub_operand1 x!116)
                           (FSub_operand1 y!117)))
                    (and ((_ is (C_Mul (Bool Bool Constant Constant) Constant))
                           x!116)
                         ((_ is (C_Mul (Bool Bool Constant Constant) Constant))
                           y!117)
                         (equiv-Bool!0 (Mul_nsw x!116) (Mul_nsw y!117))
                         (equiv-Bool!0 (Mul_nuw x!116) (Mul_nuw y!117))
                         (equiv-Constant!114
                           (Mul_operand0 x!116)
                           (Mul_operand0 y!117))
                         (equiv-Constant!114
                           (Mul_operand1 x!116)
                           (Mul_operand1 y!117)))
                    (and ((_ is (C_FMul (Constant Constant) Constant)) x!116)
                         ((_ is (C_FMul (Constant Constant) Constant)) y!117)
                         (equiv-Constant!114
                           (FMul_operand0 x!116)
                           (FMul_operand0 y!117))
                         (equiv-Constant!114
                           (FMul_operand1 x!116)
                           (FMul_operand1 y!117)))
                    (and ((_ is (C_UDiv (Bool Constant Constant) Constant))
                           x!116)
                         ((_ is (C_UDiv (Bool Constant Constant) Constant))
                           y!117)
                         (equiv-Bool!0 (UDiv_exact x!116) (UDiv_exact y!117))
                         (equiv-Constant!114
                           (UDiv_operand0 x!116)
                           (UDiv_operand0 y!117))
                         (equiv-Constant!114
                           (UDiv_operand1 x!116)
                           (UDiv_operand1 y!117)))
                    (and ((_ is (C_SDiv (Bool Constant Constant) Constant))
                           x!116)
                         ((_ is (C_SDiv (Bool Constant Constant) Constant))
                           y!117)
                         (equiv-Bool!0 (SDiv_exact x!116) (SDiv_exact y!117))
                         (equiv-Constant!114
                           (SDiv_operand0 x!116)
                           (SDiv_operand0 y!117))
                         (equiv-Constant!114
                           (SDiv_operand1 x!116)
                           (SDiv_operand1 y!117)))
                    (and ((_ is (C_FDiv (Constant Constant) Constant)) x!116)
                         ((_ is (C_FDiv (Constant Constant) Constant)) y!117)
                         (equiv-Constant!114
                           (FDiv_operand0 x!116)
                           (FDiv_operand0 y!117))
                         (equiv-Constant!114
                           (FDiv_operand1 x!116)
                           (FDiv_operand1 y!117)))
                    (and ((_ is (C_URem (Constant Constant) Constant)) x!116)
                         ((_ is (C_URem (Constant Constant) Constant)) y!117)
                         (equiv-Constant!114
                           (URem_operand0 x!116)
                           (URem_operand0 y!117))
                         (equiv-Constant!114
                           (URem_operand1 x!116)
                           (URem_operand1 y!117)))
                    (and ((_ is (C_SRem (Constant Constant) Constant)) x!116)
                         ((_ is (C_SRem (Constant Constant) Constant)) y!117)
                         (equiv-Constant!114
                           (SRem_operand0 x!116)
                           (SRem_operand0 y!117))
                         (equiv-Constant!114
                           (SRem_operand1 x!116)
                           (SRem_operand1 y!117)))
                    (and ((_ is (C_FRem (Constant Constant) Constant)) x!116)
                         ((_ is (C_FRem (Constant Constant) Constant)) y!117)
                         (equiv-Constant!114
                           (FRem_operand0 x!116)
                           (FRem_operand0 y!117))
                         (equiv-Constant!114
                           (FRem_operand1 x!116)
                           (FRem_operand1 y!117)))
                    (and ((_ is (C_Shl (Bool Bool Constant Constant) Constant))
                           x!116)
                         ((_ is (C_Shl (Bool Bool Constant Constant) Constant))
                           y!117)
                         (equiv-Bool!0 (Shl_nsw x!116) (Shl_nsw y!117))
                         (equiv-Bool!0 (Shl_nuw x!116) (Shl_nuw y!117))
                         (equiv-Constant!114
                           (Shl_operand0 x!116)
                           (Shl_operand0 y!117))
                         (equiv-Constant!114
                           (Shl_operand1 x!116)
                           (Shl_operand1 y!117)))
                    (and ((_ is (C_LShr (Bool Constant Constant) Constant))
                           x!116)
                         ((_ is (C_LShr (Bool Constant Constant) Constant))
                           y!117)
                         (equiv-Bool!0 (LShr_exact x!116) (LShr_exact y!117))
                         (equiv-Constant!114
                           (LShr_operand0 x!116)
                           (LShr_operand0 y!117))
                         (equiv-Constant!114
                           (LShr_operand1 x!116)
                           (LShr_operand1 y!117)))
                    (and ((_ is (C_AShr (Bool Constant Constant) Constant))
                           x!116)
                         ((_ is (C_AShr (Bool Constant Constant) Constant))
                           y!117)
                         (equiv-Bool!0 (AShr_exact x!116) (AShr_exact y!117))
                         (equiv-Constant!114
                           (AShr_operand0 x!116)
                           (AShr_operand0 y!117))
                         (equiv-Constant!114
                           (AShr_operand1 x!116)
                           (AShr_operand1 y!117)))
                    (and ((_ is (C_And (Constant Constant) Constant)) x!116)
                         ((_ is (C_And (Constant Constant) Constant)) y!117)
                         (equiv-Constant!114
                           (And_operand0 x!116)
                           (And_operand0 y!117))
                         (equiv-Constant!114
                           (And_operand1 x!116)
                           (And_operand1 y!117)))
                    (and ((_ is (C_Or (Constant Constant) Constant)) x!116)
                         ((_ is (C_Or (Constant Constant) Constant)) y!117)
                         (equiv-Constant!114
                           (Or_operand0 x!116)
                           (Or_operand0 y!117))
                         (equiv-Constant!114
                           (Or_operand1 x!116)
                           (Or_operand1 y!117)))
                    (and ((_ is (C_Xor (Constant Constant) Constant)) x!116)
                         ((_ is (C_Xor (Constant Constant) Constant)) y!117)
                         (equiv-Constant!114
                           (Xor_operand0 x!116)
                           (Xor_operand0 y!117))
                         (equiv-Constant!114
                           (Xor_operand1 x!116)
                           (Xor_operand1 y!117)))
                    (and ((_ is
                             (C_GetElementPtr
                              (Bool Constant List_Constant)
                              Constant))
                           x!116)
                         ((_ is
                             (C_GetElementPtr
                              (Bool Constant List_Constant)
                              Constant))
                           y!117)
                         (equiv-Bool!0 (GetElementPtr_inBounds x!116)
                                       (GetElementPtr_inBounds y!117))
                         (equiv-Constant!114
                           (GetElementPtr_address x!116)
                           (GetElementPtr_address y!117))
                         (equiv-List_Constant!115
                           (GetElementPtr_indices x!116)
                           (GetElementPtr_indices y!117)))
                    (and ((_ is (C_Trunc (Constant Type) Constant)) x!116)
                         ((_ is (C_Trunc (Constant Type) Constant)) y!117)
                         (equiv-Constant!114
                           (Trunc_operand0 x!116)
                           (Trunc_operand0 y!117))
                         (equiv-Type!85 (Trunc_type_ x!116) (Trunc_type_ y!117)))
                    (and ((_ is (C_ZExt (Constant Type) Constant)) x!116)
                         ((_ is (C_ZExt (Constant Type) Constant)) y!117)
                         (equiv-Constant!114
                           (ZExt_operand0 x!116)
                           (ZExt_operand0 y!117))
                         (equiv-Type!85 (ZExt_type_ x!116) (ZExt_type_ y!117)))
                    (and ((_ is (C_SExt (Constant Type) Constant)) x!116)
                         ((_ is (C_SExt (Constant Type) Constant)) y!117)
                         (equiv-Constant!114
                           (SExt_operand0 x!116)
                           (SExt_operand0 y!117))
                         (equiv-Type!85 (SExt_type_ x!116) (SExt_type_ y!117)))
                    (and ((_ is (C_FPToUI (Constant Type) Constant)) x!116)
                         ((_ is (C_FPToUI (Constant Type) Constant)) y!117)
                         (equiv-Constant!114
                           (FPToUI_operand0 x!116)
                           (FPToUI_operand0 y!117))
                         (equiv-Type!85 (FPToUI_type_ x!116)
                                        (FPToUI_type_ y!117)))
                    (and ((_ is (C_FPToSI (Constant Type) Constant)) x!116)
                         ((_ is (C_FPToSI (Constant Type) Constant)) y!117)
                         (equiv-Constant!114
                           (FPToSI_operand0 x!116)
                           (FPToSI_operand0 y!117))
                         (equiv-Type!85 (FPToSI_type_ x!116)
                                        (FPToSI_type_ y!117)))
                    (and ((_ is (C_UIToFP (Constant Type) Constant)) x!116)
                         ((_ is (C_UIToFP (Constant Type) Constant)) y!117)
                         (equiv-Constant!114
                           (UIToFP_operand0 x!116)
                           (UIToFP_operand0 y!117))
                         (equiv-Type!85 (UIToFP_type_ x!116)
                                        (UIToFP_type_ y!117)))
                    (and ((_ is (C_SIToFP (Constant Type) Constant)) x!116)
                         ((_ is (C_SIToFP (Constant Type) Constant)) y!117)
                         (equiv-Constant!114
                           (SIToFP_operand0 x!116)
                           (SIToFP_operand0 y!117))
                         (equiv-Type!85 (SIToFP_type_ x!116)
                                        (SIToFP_type_ y!117)))
                    (and ((_ is (C_FPTrunc (Constant Type) Constant)) x!116)
                         ((_ is (C_FPTrunc (Constant Type) Constant)) y!117)
                         (equiv-Constant!114
                           (FPTrunc_operand0 x!116)
                           (FPTrunc_operand0 y!117))
                         (equiv-Type!85 (FPTrunc_type_ x!116)
                                        (FPTrunc_type_ y!117)))
                    (and ((_ is (C_FPExt (Constant Type) Constant)) x!116)
                         ((_ is (C_FPExt (Constant Type) Constant)) y!117)
                         (equiv-Constant!114
                           (FPExt_operand0 x!116)
                           (FPExt_operand0 y!117))
                         (equiv-Type!85 (FPExt_type_ x!116) (FPExt_type_ y!117)))
                    (and ((_ is (C_PtrToInt (Constant Type) Constant)) x!116)
                         ((_ is (C_PtrToInt (Constant Type) Constant)) y!117)
                         (equiv-Constant!114
                           (PtrToInt_operand0 x!116)
                           (PtrToInt_operand0 y!117))
                         (equiv-Type!85 (PtrToInt_type_ x!116)
                                        (PtrToInt_type_ y!117)))
                    (and ((_ is (C_IntToPtr (Constant Type) Constant)) x!116)
                         ((_ is (C_IntToPtr (Constant Type) Constant)) y!117)
                         (equiv-Constant!114
                           (IntToPtr_operand0 x!116)
                           (IntToPtr_operand0 y!117))
                         (equiv-Type!85 (IntToPtr_type_ x!116)
                                        (IntToPtr_type_ y!117)))
                    (and ((_ is (C_BitCast (Constant Type) Constant)) x!116)
                         ((_ is (C_BitCast (Constant Type) Constant)) y!117)
                         (equiv-Constant!114
                           (BitCast_operand0 x!116)
                           (BitCast_operand0 y!117))
                         (equiv-Type!85 (BitCast_type_ x!116)
                                        (BitCast_type_ y!117)))
                    (and ((_ is (C_AddrSpaceCast (Constant Type) Constant))
                           x!116)
                         ((_ is (C_AddrSpaceCast (Constant Type) Constant))
                           y!117)
                         (equiv-Constant!114
                           (AddrSpaceCast_operand0 x!116)
                           (AddrSpaceCast_operand0 y!117))
                         (equiv-Type!85 (AddrSpaceCast_type_ x!116)
                                        (AddrSpaceCast_type_ y!117)))
                    (and ((_ is
                             (C_ICmp
                              (IntegerPredicate Constant Constant)
                              Constant))
                           x!116)
                         ((_ is
                             (C_ICmp
                              (IntegerPredicate Constant Constant)
                              Constant))
                           y!117)
                         (equiv-IntegerPredicate!36
                           (ICmp_iPredicate x!116)
                           (ICmp_iPredicate y!117))
                         (equiv-Constant!114
                           (ICmp_operand0 x!116)
                           (ICmp_operand0 y!117))
                         (equiv-Constant!114
                           (ICmp_operand1 x!116)
                           (ICmp_operand1 y!117)))
                    (and ((_ is
                             (C_FCmp
                              (FloatingPointPredicate Constant Constant)
                              Constant))
                           x!116)
                         ((_ is
                             (C_FCmp
                              (FloatingPointPredicate Constant Constant)
                              Constant))
                           y!117)
                         (equiv-FloatingPointPredicate!57
                           (FCmp_fpPredicate x!116)
                           (FCmp_fpPredicate y!117))
                         (equiv-Constant!114
                           (FCmp_operand0 x!116)
                           (FCmp_operand0 y!117))
                         (equiv-Constant!114
                           (FCmp_operand1 x!116)
                           (FCmp_operand1 y!117)))
                    (and ((_ is
                             (C_Select (Constant Constant Constant) Constant))
                           x!116)
                         ((_ is
                             (C_Select (Constant Constant Constant) Constant))
                           y!117)
                         (equiv-Constant!114
                           (Select_condition_ x!116)
                           (Select_condition_ y!117))
                         (equiv-Constant!114
                           (Select_trueValue x!116)
                           (Select_trueValue y!117))
                         (equiv-Constant!114
                           (Select_falseValue x!116)
                           (Select_falseValue y!117)))
                    (and ((_ is (C_ExtractElement (Constant Constant) Constant))
                           x!116)
                         ((_ is (C_ExtractElement (Constant Constant) Constant))
                           y!117)
                         (equiv-Constant!114
                           (ExtractElement_vector x!116)
                           (ExtractElement_vector y!117))
                         (equiv-Constant!114
                           (ExtractElement_index x!116)
                           (ExtractElement_index y!117)))
                    (and ((_ is
                             (C_InsertElement
                              (Constant Constant Constant)
                              Constant))
                           x!116)
                         ((_ is
                             (C_InsertElement
                              (Constant Constant Constant)
                              Constant))
                           y!117)
                         (equiv-Constant!114
                           (InsertElement_vector x!116)
                           (InsertElement_vector y!117))
                         (equiv-Constant!114
                           (InsertElement_element x!116)
                           (InsertElement_element y!117))
                         (equiv-Constant!114
                           (InsertElement_index x!116)
                           (InsertElement_index y!117)))
                    (and ((_ is
                             (C_ShuffleVector
                              (Constant Constant Constant)
                              Constant))
                           x!116)
                         ((_ is
                             (C_ShuffleVector
                              (Constant Constant Constant)
                              Constant))
                           y!117)
                         (equiv-Constant!114
                           (ShuffleVector_operand0 x!116)
                           (ShuffleVector_operand0 y!117))
                         (equiv-Constant!114
                           (ShuffleVector_operand1 x!116)
                           (ShuffleVector_operand1 y!117))
                         (equiv-Constant!114
                           (ShuffleVector_mask x!116)
                           (ShuffleVector_mask y!117)))
                    (and ((_ is
                             (C_ExtractValue (Constant List_Word32) Constant))
                           x!116)
                         ((_ is
                             (C_ExtractValue (Constant List_Word32) Constant))
                           y!117)
                         (equiv-Constant!114
                           (ExtractValue_aggregate x!116)
                           (ExtractValue_aggregate y!117))
                         (equiv-List_Word32!105
                           (ExtractValue_indices_ x!116)
                           (ExtractValue_indices_ y!117)))
                    (and ((_ is
                             (C_InsertValue
                              (Constant Constant List_Word32)
                              Constant))
                           x!116)
                         ((_ is
                             (C_InsertValue
                              (Constant Constant List_Word32)
                              Constant))
                           y!117)
                         (equiv-Constant!114
                           (InsertValue_aggregate x!116)
                           (InsertValue_aggregate y!117))
                         (equiv-Constant!114
                           (InsertValue_element x!116)
                           (InsertValue_element y!117))
                         (equiv-List_Word32!105
                           (InsertValue_indices_ x!116)
                           (InsertValue_indices_ y!117))))))
       (= (equiv-Constant!114 x!116 y!117) a!1))
     :weight 0)))
(assert (forall ((x!118 List_Constant) (y!119 List_Constant))
  (! (let ((a!1 (or (and ((_ is (Nil_Constant () List_Constant)) x!118)
                         ((_ is (Nil_Constant () List_Constant)) y!119))
                    (and ((_ is
                             (Cons_Constant
                              (Constant List_Constant)
                              List_Constant))
                           x!118)
                         ((_ is
                             (Cons_Constant
                              (Constant List_Constant)
                              List_Constant))
                           y!119)
                         (equiv-Constant!114 (head x!118) (head y!119))
                         (equiv-List_Constant!115 (tail x!118) (tail y!119))))))
       (= (equiv-List_Constant!115 x!118 y!119) a!1))
     :weight 0)))
(assert (forall ((x!121 LandingPadClause) (y!122 LandingPadClause))
  (! (let ((a!1 (or (and ((_ is (LPC_Catch (Constant) LandingPadClause)) x!121)
                         ((_ is (LPC_Catch (Constant) LandingPadClause)) y!122)
                         (equiv-Constant!114
                           (f_Catch_1 x!121)
                           (f_Catch_1 y!122)))
                    (and ((_ is (LPC_Filter (Constant) LandingPadClause)) x!121)
                         ((_ is (LPC_Filter (Constant) LandingPadClause)) y!122)
                         (equiv-Constant!114
                           (f_Filter_1 x!121)
                           (f_Filter_1 y!122))))))
       (= (equiv-LandingPadClause!120 x!121 y!122) a!1))
     :weight 0)))
(assert (forall ((x!124 List_LandingPadClause) (y!125 List_LandingPadClause))
  (! (let ((a!1 (or (and ((_ is (Nil_LandingPadClause () List_LandingPadClause))
                           x!124)
                         ((_ is (Nil_LandingPadClause () List_LandingPadClause))
                           y!125))
                    (and ((_ is
                             (Cons_LandingPadClause
                              (LandingPadClause List_LandingPadClause)
                              List_LandingPadClause))
                           x!124)
                         ((_ is
                             (Cons_LandingPadClause
                              (LandingPadClause List_LandingPadClause)
                              List_LandingPadClause))
                           y!125)
                         (equiv-LandingPadClause!120 (head x!124) (head y!125))
                         (equiv-List_LandingPadClause!123
                           (tail x!124)
                           (tail y!125))))))
       (= (equiv-List_LandingPadClause!123 x!124 y!125) a!1))
     :weight 0)))
(assert (forall ((x!127 Operand) (y!128 Operand))
  (! (let ((a!1 (or (and ((_ is (O_LocalReference (Type Name) Operand)) x!127)
                         ((_ is (O_LocalReference (Type Name) Operand)) y!128)
                         (equiv-Type!85 (f_LocalReference_1 x!127)
                                        (f_LocalReference_1 y!128))
                         (equiv-Name!69 (f_LocalReference_2 x!127)
                                        (f_LocalReference_2 y!128)))
                    (and ((_ is (O_ConstantOperand (Constant) Operand)) x!127)
                         ((_ is (O_ConstantOperand (Constant) Operand)) y!128)
                         (equiv-Constant!114
                           (f_ConstantOperand_1 x!127)
                           (f_ConstantOperand_1 y!128)))
                    (and ((_ is (O_MetadataOperand (Bool) Operand)) x!127)
                         ((_ is (O_MetadataOperand (Bool) Operand)) y!128)
                         (equiv-Bool!0 (f_MetadataOperand_1 x!127)
                                       (f_MetadataOperand_1 y!128))))))
       (= (equiv-Operand!126 x!127 y!128) a!1))
     :weight 0)))
(assert (forall ((x!130 Maybe_Operand) (y!131 Maybe_Operand))
  (! (let ((a!1 (or (and ((_ is (MO_Nothing_Operand () Maybe_Operand)) x!130)
                         ((_ is (MO_Nothing_Operand () Maybe_Operand)) y!131))
                    (and ((_ is (MO_Just_Operand (Operand) Maybe_Operand))
                           x!130)
                         ((_ is (MO_Just_Operand (Operand) Maybe_Operand))
                           y!131)
                         (equiv-Operand!126 (f_Just_1 x!130) (f_Just_1 y!131))))))
       (= (equiv-Maybe_Operand!129 x!130 y!131) a!1))
     :weight 0)))
(assert (forall ((x!133 List_Operand) (y!134 List_Operand))
  (! (let ((a!1 (or (and ((_ is (Nil_Operand () List_Operand)) x!133)
                         ((_ is (Nil_Operand () List_Operand)) y!134))
                    (and ((_ is
                             (Cons_Operand (Operand List_Operand) List_Operand))
                           x!133)
                         ((_ is
                             (Cons_Operand (Operand List_Operand) List_Operand))
                           y!134)
                         (equiv-Operand!126 (head x!133) (head y!134))
                         (equiv-List_Operand!132 (tail x!133) (tail y!134))))))
       (= (equiv-List_Operand!132 x!133 y!134) a!1))
     :weight 0)))
(assert (forall ((x!136 CallableOperand) (y!137 CallableOperand))
  (! (let ((a!1 (or (and ((_ is
                             (EIAO_Left_InlineAssembly_Operand
                              (InlineAssembly)
                              CallableOperand))
                           x!136)
                         ((_ is
                             (EIAO_Left_InlineAssembly_Operand
                              (InlineAssembly)
                              CallableOperand))
                           y!137)
                         (equiv-InlineAssembly!90
                           (f_Left_1 x!136)
                           (f_Left_1 y!137)))
                    (and ((_ is
                             (EIAO_Right_InlineAssembly_Operand
                              (Operand)
                              CallableOperand))
                           x!136)
                         ((_ is
                             (EIAO_Right_InlineAssembly_Operand
                              (Operand)
                              CallableOperand))
                           y!137)
                         (equiv-Operand!126 (f_Right_1 x!136) (f_Right_1 y!137))))))
       (= (equiv-CallableOperand!135 x!136 y!137) a!1))
     :weight 0)))
(assert (forall ((x!139 Maybe_TailCallKind) (y!140 Maybe_TailCallKind))
  (! (let ((a!1 (or (and ((_ is
                             (MTCK_Nothing_TailCallKind () Maybe_TailCallKind))
                           x!139)
                         ((_ is
                             (MTCK_Nothing_TailCallKind () Maybe_TailCallKind))
                           y!140))
                    (and ((_ is
                             (MTCK_Just_TailCallKind
                              (TailCallKind)
                              Maybe_TailCallKind))
                           x!139)
                         ((_ is
                             (MTCK_Just_TailCallKind
                              (TailCallKind)
                              Maybe_TailCallKind))
                           y!140)
                         (equiv-TailCallKind!39
                           (f_Just_1 x!139)
                           (f_Just_1 y!140))))))
       (= (equiv-Maybe_TailCallKind!138 x!139 y!140) a!1))
     :weight 0)))
(assert (forall ((x!142 Maybe_Atomicity) (y!143 Maybe_Atomicity))
  (! (let ((a!1 (or (and ((_ is (MA_Nothing_Atomicity () Maybe_Atomicity))
                           x!142)
                         ((_ is (MA_Nothing_Atomicity () Maybe_Atomicity))
                           y!143))
                    (and ((_ is (MA_Just_Atomicity (Atomicity) Maybe_Atomicity))
                           x!142)
                         ((_ is (MA_Just_Atomicity (Atomicity) Maybe_Atomicity))
                           y!143)
                         (equiv-Atomicity!48 (f_Just_1 x!142) (f_Just_1 y!143))))))
       (= (equiv-Maybe_Atomicity!141 x!142 y!143) a!1))
     :weight 0)))
(assert (forall ((x!145 Maybe_UnnamedAddr) (y!146 Maybe_UnnamedAddr))
  (! (let ((a!1 (or (and ((_ is (MUA_Nothing_UnnamedAddr () Maybe_UnnamedAddr))
                           x!145)
                         ((_ is (MUA_Nothing_UnnamedAddr () Maybe_UnnamedAddr))
                           y!146))
                    (and ((_ is
                             (MUA_Just_UnnamedAddr
                              (UnnamedAddr)
                              Maybe_UnnamedAddr))
                           x!145)
                         ((_ is
                             (MUA_Just_UnnamedAddr
                              (UnnamedAddr)
                              Maybe_UnnamedAddr))
                           y!146)
                         (equiv-UnnamedAddr!54
                           (f_Just_1 x!145)
                           (f_Just_1 y!146))))))
       (= (equiv-Maybe_UnnamedAddr!144 x!145 y!146) a!1))
     :weight 0)))
(assert (forall ((x!148 Maybe_StorageClass) (y!149 Maybe_StorageClass))
  (! (let ((a!1 (or (and ((_ is
                             (MSC_Nothing_StorageClass () Maybe_StorageClass))
                           x!148)
                         ((_ is
                             (MSC_Nothing_StorageClass () Maybe_StorageClass))
                           y!149))
                    (and ((_ is
                             (MSC_Just_StorageClass
                              (StorageClass)
                              Maybe_StorageClass))
                           x!148)
                         ((_ is
                             (MSC_Just_StorageClass
                              (StorageClass)
                              Maybe_StorageClass))
                           y!149)
                         (equiv-StorageClass!60
                           (f_Just_1 x!148)
                           (f_Just_1 y!149))))))
       (= (equiv-Maybe_StorageClass!147 x!148 y!149) a!1))
     :weight 0)))
(assert (forall ((x!151 Maybe_Constant) (y!152 Maybe_Constant))
  (! (let ((a!1 (or (and ((_ is (MC_Nothing_Constant () Maybe_Constant)) x!151)
                         ((_ is (MC_Nothing_Constant () Maybe_Constant)) y!152))
                    (and ((_ is (MC_Just_Constant (Constant) Maybe_Constant))
                           x!151)
                         ((_ is (MC_Just_Constant (Constant) Maybe_Constant))
                           y!152)
                         (equiv-Constant!114 (f_Just_1 x!151) (f_Just_1 y!152))))))
       (= (equiv-Maybe_Constant!150 x!151 y!152) a!1))
     :weight 0)))
(assert (forall ((x!154 Maybe_ShortByteString) (y!155 Maybe_ShortByteString))
  (! (let ((a!1 (or (and ((_ is
                             (MSBS_Nothing_ShortByteString
                              ()
                              Maybe_ShortByteString))
                           x!154)
                         ((_ is
                             (MSBS_Nothing_ShortByteString
                              ()
                              Maybe_ShortByteString))
                           y!155))
                    (and ((_ is
                             (MSBS_Just_ShortByteString
                              (String)
                              Maybe_ShortByteString))
                           x!154)
                         ((_ is
                             (MSBS_Just_ShortByteString
                              (String)
                              Maybe_ShortByteString))
                           y!155)
                         (equiv-ShortByteString!18
                           (f_Just_1 x!154)
                           (f_Just_1 y!155))))))
       (= (equiv-Maybe_ShortByteString!153 x!154 y!155) a!1))
     :weight 0)))
(assert (forall ((x!157 Maybe_Word32) (y!158 Maybe_Word32))
  (! (let ((a!1 (or (and ((_ is (MW_Nothing_Word32 () Maybe_Word32)) x!157)
                         ((_ is (MW_Nothing_Word32 () Maybe_Word32)) y!158))
                    (and ((_ is (MW_Just_Word32 ((_ BitVec 32)) Maybe_Word32))
                           x!157)
                         ((_ is (MW_Just_Word32 ((_ BitVec 32)) Maybe_Word32))
                           y!158)
                         (equiv-Word!12 (f_Just_1 x!157) (f_Just_1 y!158))))))
       (= (equiv-Maybe_Word32!156 x!157 y!158) a!1))
     :weight 0)))
(assert (forall ((x!160 FunctionAttribute) (y!161 FunctionAttribute))
  (! (let ((a!1 (or (and ((_ is (FA_NoReturn () FunctionAttribute)) x!160)
                         ((_ is (FA_NoReturn () FunctionAttribute)) y!161))
                    (and ((_ is (FA_NoUnwind () FunctionAttribute)) x!160)
                         ((_ is (FA_NoUnwind () FunctionAttribute)) y!161))
                    (and ((_ is (FA_ReadNone () FunctionAttribute)) x!160)
                         ((_ is (FA_ReadNone () FunctionAttribute)) y!161))
                    (and ((_ is (FA_ReadOnly () FunctionAttribute)) x!160)
                         ((_ is (FA_ReadOnly () FunctionAttribute)) y!161))
                    (and ((_ is (FA_NoInline () FunctionAttribute)) x!160)
                         ((_ is (FA_NoInline () FunctionAttribute)) y!161))
                    (and ((_ is (FA_NoRecurse () FunctionAttribute)) x!160)
                         ((_ is (FA_NoRecurse () FunctionAttribute)) y!161))
                    (and ((_ is (FA_AlwaysInline () FunctionAttribute)) x!160)
                         ((_ is (FA_AlwaysInline () FunctionAttribute)) y!161))
                    (and ((_ is (FA_MinimizeSize () FunctionAttribute)) x!160)
                         ((_ is (FA_MinimizeSize () FunctionAttribute)) y!161))
                    (and ((_ is (FA_OptimizeForSize () FunctionAttribute))
                           x!160)
                         ((_ is (FA_OptimizeForSize () FunctionAttribute))
                           y!161))
                    (and ((_ is (FA_OptimizeNone () FunctionAttribute)) x!160)
                         ((_ is (FA_OptimizeNone () FunctionAttribute)) y!161))
                    (and ((_ is (FA_StackProtect () FunctionAttribute)) x!160)
                         ((_ is (FA_StackProtect () FunctionAttribute)) y!161))
                    (and ((_ is (FA_StackProtectReq () FunctionAttribute))
                           x!160)
                         ((_ is (FA_StackProtectReq () FunctionAttribute))
                           y!161))
                    (and ((_ is (FA_StackProtectStrong () FunctionAttribute))
                           x!160)
                         ((_ is (FA_StackProtectStrong () FunctionAttribute))
                           y!161))
                    (and ((_ is (FA_StrictFP () FunctionAttribute)) x!160)
                         ((_ is (FA_StrictFP () FunctionAttribute)) y!161))
                    (and ((_ is (FA_NoRedZone () FunctionAttribute)) x!160)
                         ((_ is (FA_NoRedZone () FunctionAttribute)) y!161))
                    (and ((_ is (FA_NoImplicitFloat () FunctionAttribute))
                           x!160)
                         ((_ is (FA_NoImplicitFloat () FunctionAttribute))
                           y!161))
                    (and ((_ is (FA_Naked () FunctionAttribute)) x!160)
                         ((_ is (FA_Naked () FunctionAttribute)) y!161))
                    (and ((_ is (FA_InlineHint () FunctionAttribute)) x!160)
                         ((_ is (FA_InlineHint () FunctionAttribute)) y!161))
                    (and ((_ is
                             (FA_StackAlignment
                              ((_ BitVec 64))
                              FunctionAttribute))
                           x!160)
                         ((_ is
                             (FA_StackAlignment
                              ((_ BitVec 64))
                              FunctionAttribute))
                           y!161)
                         (equiv-Word64!15 (f_StackAlignment_1 x!160)
                                          (f_StackAlignment_1 y!161)))
                    (and ((_ is (FA_ReturnsTwice () FunctionAttribute)) x!160)
                         ((_ is (FA_ReturnsTwice () FunctionAttribute)) y!161))
                    (and ((_ is (FA_UWTable () FunctionAttribute)) x!160)
                         ((_ is (FA_UWTable () FunctionAttribute)) y!161))
                    (and ((_ is (FA_NonLazyBind () FunctionAttribute)) x!160)
                         ((_ is (FA_NonLazyBind () FunctionAttribute)) y!161))
                    (and ((_ is (FA_Builtin () FunctionAttribute)) x!160)
                         ((_ is (FA_Builtin () FunctionAttribute)) y!161))
                    (and ((_ is (FA_NoBuiltin () FunctionAttribute)) x!160)
                         ((_ is (FA_NoBuiltin () FunctionAttribute)) y!161))
                    (and ((_ is (FA_Cold () FunctionAttribute)) x!160)
                         ((_ is (FA_Cold () FunctionAttribute)) y!161))
                    (and ((_ is (FA_JumpTable () FunctionAttribute)) x!160)
                         ((_ is (FA_JumpTable () FunctionAttribute)) y!161))
                    (and ((_ is (FA_NoDuplicate () FunctionAttribute)) x!160)
                         ((_ is (FA_NoDuplicate () FunctionAttribute)) y!161))
                    (and ((_ is (FA_SanitizeAddress () FunctionAttribute))
                           x!160)
                         ((_ is (FA_SanitizeAddress () FunctionAttribute))
                           y!161))
                    (and ((_ is (FA_SanitizeHWAddress () FunctionAttribute))
                           x!160)
                         ((_ is (FA_SanitizeHWAddress () FunctionAttribute))
                           y!161))
                    (and ((_ is (FA_SanitizeThread () FunctionAttribute)) x!160)
                         ((_ is (FA_SanitizeThread () FunctionAttribute)) y!161))
                    (and ((_ is (FA_SanitizeMemory () FunctionAttribute)) x!160)
                         ((_ is (FA_SanitizeMemory () FunctionAttribute)) y!161))
                    (and ((_ is (FA_Speculatable () FunctionAttribute)) x!160)
                         ((_ is (FA_Speculatable () FunctionAttribute)) y!161))
                    (and ((_ is
                             (FA_StringAttribute
                              (String String)
                              FunctionAttribute))
                           x!160)
                         ((_ is
                             (FA_StringAttribute
                              (String String)
                              FunctionAttribute))
                           y!161)
                         (equiv-ShortByteString!18
                           (StringAttribute_stringAttributeKind x!160)
                           (StringAttribute_stringAttributeKind y!161))
                         (equiv-ShortByteString!18
                           (StringAttribute_stringAttributeValue x!160)
                           (StringAttribute_stringAttributeValue y!161)))
                    (and ((_ is
                             (FA_AllocSize
                              ((_ BitVec 32) Maybe_Word32)
                              FunctionAttribute))
                           x!160)
                         ((_ is
                             (FA_AllocSize
                              ((_ BitVec 32) Maybe_Word32)
                              FunctionAttribute))
                           y!161)
                         (equiv-Word!12 (f_AllocSize_1 x!160)
                                        (f_AllocSize_1 y!161))
                         (equiv-Maybe_Word32!156
                           (f_AllocSize_2 x!160)
                           (f_AllocSize_2 y!161)))
                    (and ((_ is (FA_WriteOnly () FunctionAttribute)) x!160)
                         ((_ is (FA_WriteOnly () FunctionAttribute)) y!161))
                    (and ((_ is (FA_ArgMemOnly () FunctionAttribute)) x!160)
                         ((_ is (FA_ArgMemOnly () FunctionAttribute)) y!161))
                    (and ((_ is (FA_Convergent () FunctionAttribute)) x!160)
                         ((_ is (FA_Convergent () FunctionAttribute)) y!161))
                    (and ((_ is (FA_InaccessibleMemOnly () FunctionAttribute))
                           x!160)
                         ((_ is (FA_InaccessibleMemOnly () FunctionAttribute))
                           y!161))
                    (and ((_ is
                             (FA_InaccessibleMemOrArgMemOnly
                              ()
                              FunctionAttribute))
                           x!160)
                         ((_ is
                             (FA_InaccessibleMemOrArgMemOnly
                              ()
                              FunctionAttribute))
                           y!161))
                    (and ((_ is (FA_SafeStack () FunctionAttribute)) x!160)
                         ((_ is (FA_SafeStack () FunctionAttribute)) y!161)))))
       (= (equiv-FunctionAttribute!159 x!160 y!161) a!1))
     :weight 0)))
(assert (forall ((x!163 NonEmpty_Name) (y!164 NonEmpty_Name))
  (! (let ((a!1 (or (and ((_ is (NEN_Colon_Name (Name List_Name) NonEmpty_Name))
                           x!163)
                         ((_ is (NEN_Colon_Name (Name List_Name) NonEmpty_Name))
                           y!164)
                         (equiv-Name!69 (f_Colon_1 x!163) (f_Colon_1 y!164))
                         (equiv-List_Name!99
                           (f_Colon_2 x!163)
                           (f_Colon_2 y!164))))))
       (= (equiv-NonEmpty_Name!162 x!163 y!164) a!1))
     :weight 0)))
(assert (forall ((x!166 Tup2_Operand_Name) (y!167 Tup2_Operand_Name))
  (! (let ((a!1 (or (and ((_ is
                             (Tup2_Operand_Name
                              (Operand Name)
                              Tup2_Operand_Name))
                           x!166)
                         ((_ is
                             (Tup2_Operand_Name
                              (Operand Name)
                              Tup2_Operand_Name))
                           y!167)
                         (equiv-Operand!126 (field1 x!166) (field1 y!167))
                         (equiv-Name!69 (field2 x!166) (field2 y!167))))))
       (= (equiv-Tup2_Operand_Name!165 x!166 y!167) a!1))
     :weight 0)))
(assert (forall ((x!169 List_Tup2_Operand_Name) (y!170 List_Tup2_Operand_Name))
  (! (let ((a!1 (or (and ((_ is
                             (Nil_Tup2_Operand_Name () List_Tup2_Operand_Name))
                           x!169)
                         ((_ is
                             (Nil_Tup2_Operand_Name () List_Tup2_Operand_Name))
                           y!170))
                    (and ((_ is
                             (Cons_Tup2_Operand_Name
                              (Tup2_Operand_Name List_Tup2_Operand_Name)
                              List_Tup2_Operand_Name))
                           x!169)
                         ((_ is
                             (Cons_Tup2_Operand_Name
                              (Tup2_Operand_Name List_Tup2_Operand_Name)
                              List_Tup2_Operand_Name))
                           y!170)
                         (equiv-Tup2_Operand_Name!165 (head x!169) (head y!170))
                         (equiv-List_Tup2_Operand_Name!168
                           (tail x!169)
                           (tail y!170))))))
       (= (equiv-List_Tup2_Operand_Name!168 x!169 y!170) a!1))
     :weight 0)))
(assert (forall ((x!172 Tup2_Operand_List_ParameterAttribute)
         (y!173 Tup2_Operand_List_ParameterAttribute))
  (! (let ((a!1 (or (and ((_ is
                             (Tup2_Operand_List_ParameterAttribute
                              (Operand List_ParameterAttribute)
                              Tup2_Operand_List_ParameterAttribute))
                           x!172)
                         ((_ is
                             (Tup2_Operand_List_ParameterAttribute
                              (Operand List_ParameterAttribute)
                              Tup2_Operand_List_ParameterAttribute))
                           y!173)
                         (equiv-Operand!126 (field1 x!172) (field1 y!173))
                         (equiv-List_ParameterAttribute!93
                           (field2 x!172)
                           (field2 y!173))))))
       (= (equiv-Tup2_Operand_List_ParameterAttribute!171 x!172 y!173) a!1))
     :weight 0)))
(assert (forall ((x!175 List_Tup2_Operand_List_ParameterAttribute)
         (y!176 List_Tup2_Operand_List_ParameterAttribute))
  (! (let ((a!1 (or (and ((_ is
                             (Nil_Tup2_Operand_List_ParameterAttribute
                              ()
                              List_Tup2_Operand_List_ParameterAttribute))
                           x!175)
                         ((_ is
                             (Nil_Tup2_Operand_List_ParameterAttribute
                              ()
                              List_Tup2_Operand_List_ParameterAttribute))
                           y!176))
                    (and ((_ is
                             (Cons_Tup2_Operand_List_ParameterAttribute
                              (Tup2_Operand_List_ParameterAttribute
                               List_Tup2_Operand_List_ParameterAttribute)
                              List_Tup2_Operand_List_ParameterAttribute))
                           x!175)
                         ((_ is
                             (Cons_Tup2_Operand_List_ParameterAttribute
                              (Tup2_Operand_List_ParameterAttribute
                               List_Tup2_Operand_List_ParameterAttribute)
                              List_Tup2_Operand_List_ParameterAttribute))
                           y!176)
                         (equiv-Tup2_Operand_List_ParameterAttribute!171
                           (head x!175)
                           (head y!176))
                         (equiv-List_Tup2_Operand_List_ParameterAttribute!174
                           (tail x!175)
                           (tail y!176))))))
       (= (equiv-List_Tup2_Operand_List_ParameterAttribute!174 x!175 y!176) a!1))
     :weight 0)))
(assert (forall ((x!178 Tup2_Constant_Name) (y!179 Tup2_Constant_Name))
  (! (let ((a!1 (or (and ((_ is
                             (Tup2_Constant_Name
                              (Constant Name)
                              Tup2_Constant_Name))
                           x!178)
                         ((_ is
                             (Tup2_Constant_Name
                              (Constant Name)
                              Tup2_Constant_Name))
                           y!179)
                         (equiv-Constant!114 (field1 x!178) (field1 y!179))
                         (equiv-Name!69 (field2 x!178) (field2 y!179))))))
       (= (equiv-Tup2_Constant_Name!177 x!178 y!179) a!1))
     :weight 0)))
(assert (forall ((x!181 List_Tup2_Constant_Name) (y!182 List_Tup2_Constant_Name))
  (! (let ((a!1 (or (and ((_ is
                             (Nil_Tup2_Constant_Name () List_Tup2_Constant_Name))
                           x!181)
                         ((_ is
                             (Nil_Tup2_Constant_Name () List_Tup2_Constant_Name))
                           y!182))
                    (and ((_ is
                             (Cons_Tup2_Constant_Name
                              (Tup2_Constant_Name List_Tup2_Constant_Name)
                              List_Tup2_Constant_Name))
                           x!181)
                         ((_ is
                             (Cons_Tup2_Constant_Name
                              (Tup2_Constant_Name List_Tup2_Constant_Name)
                              List_Tup2_Constant_Name))
                           y!182)
                         (equiv-Tup2_Constant_Name!177
                           (head x!181)
                           (head y!182))
                         (equiv-List_Tup2_Constant_Name!180
                           (tail x!181)
                           (tail y!182))))))
       (= (equiv-List_Tup2_Constant_Name!180 x!181 y!182) a!1))
     :weight 0)))
(assert (forall ((x!184 Tup2_List_Parameter_Bool) (y!185 Tup2_List_Parameter_Bool))
  (! (let ((a!1 (or (and ((_ is
                             (Tup2_List_Parameter_Bool
                              (List_Parameter Bool)
                              Tup2_List_Parameter_Bool))
                           x!184)
                         ((_ is
                             (Tup2_List_Parameter_Bool
                              (List_Parameter Bool)
                              Tup2_List_Parameter_Bool))
                           y!185)
                         (equiv-List_Parameter!102
                           (field1 x!184)
                           (field1 y!185))
                         (equiv-Bool!0 (field2 x!184) (field2 y!185))))))
       (= (equiv-Tup2_List_Parameter_Bool!183 x!184 y!185) a!1))
     :weight 0)))
(assert (forall ((x!187 Either_GroupID_FunctionAttribute)
         (y!188 Either_GroupID_FunctionAttribute))
  (! (let ((a!1 (or (and ((_ is
                             (EGIDFA_Left_GroupID_FunctionAttribute
                              (GroupID)
                              Either_GroupID_FunctionAttribute))
                           x!187)
                         ((_ is
                             (EGIDFA_Left_GroupID_FunctionAttribute
                              (GroupID)
                              Either_GroupID_FunctionAttribute))
                           y!188)
                         (equiv-GroupID!63 (f_Left_1 x!187) (f_Left_1 y!188)))
                    (and ((_ is
                             (EGIDFA_Right_GroupID_FunctionAttribute
                              (FunctionAttribute)
                              Either_GroupID_FunctionAttribute))
                           x!187)
                         ((_ is
                             (EGIDFA_Right_GroupID_FunctionAttribute
                              (FunctionAttribute)
                              Either_GroupID_FunctionAttribute))
                           y!188)
                         (equiv-FunctionAttribute!159
                           (f_Right_1 x!187)
                           (f_Right_1 y!188))))))
       (= (equiv-Either_GroupID_FunctionAttribute!186 x!187 y!188) a!1))
     :weight 0)))
(assert (forall ((x!190 List_Either_GroupID_FunctionAttribute)
         (y!191 List_Either_GroupID_FunctionAttribute))
  (! (let ((a!1 (or (and ((_ is
                             (Nil_Either_GroupID_FunctionAttribute
                              ()
                              List_Either_GroupID_FunctionAttribute))
                           x!190)
                         ((_ is
                             (Nil_Either_GroupID_FunctionAttribute
                              ()
                              List_Either_GroupID_FunctionAttribute))
                           y!191))
                    (and ((_ is
                             (Cons_Either_GroupID_FunctionAttribute
                              (Either_GroupID_FunctionAttribute
                               List_Either_GroupID_FunctionAttribute)
                              List_Either_GroupID_FunctionAttribute))
                           x!190)
                         ((_ is
                             (Cons_Either_GroupID_FunctionAttribute
                              (Either_GroupID_FunctionAttribute
                               List_Either_GroupID_FunctionAttribute)
                              List_Either_GroupID_FunctionAttribute))
                           y!191)
                         (equiv-Either_GroupID_FunctionAttribute!186
                           (head x!190)
                           (head y!191))
                         (equiv-List_Either_GroupID_FunctionAttribute!189
                           (tail x!190)
                           (tail y!191))))))
       (= (equiv-List_Either_GroupID_FunctionAttribute!189 x!190 y!191) a!1))
     :weight 0)))
(assert (forall ((x!193 Instruction) (y!194 Instruction))
  (! (let ((a!1 (or (and ((_ is
                             (I_Add
                              (Bool Bool Operand Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_Add
                              (Bool Bool Operand Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-Bool!0 (Add_nsw x!193) (Add_nsw y!194))
                         (equiv-Bool!0 (Add_nuw x!193) (Add_nuw y!194))
                         (equiv-Operand!126
                           (Add_operand0 x!193)
                           (Add_operand0 y!194))
                         (equiv-Operand!126
                           (Add_operand1 x!193)
                           (Add_operand1 y!194))
                         (equiv-Bool!0 (Add_metadata x!193)
                                       (Add_metadata y!194)))
                    (and ((_ is
                             (I_FAdd
                              (FastMathFlags Operand Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_FAdd
                              (FastMathFlags Operand Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-FastMathFlags!66
                           (FAdd_fastMathFlags x!193)
                           (FAdd_fastMathFlags y!194))
                         (equiv-Operand!126
                           (FAdd_operand0 x!193)
                           (FAdd_operand0 y!194))
                         (equiv-Operand!126
                           (FAdd_operand1 x!193)
                           (FAdd_operand1 y!194))
                         (equiv-Bool!0 (FAdd_metadata x!193)
                                       (FAdd_metadata y!194)))
                    (and ((_ is
                             (I_Sub
                              (Bool Bool Operand Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_Sub
                              (Bool Bool Operand Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-Bool!0 (Sub_nsw x!193) (Sub_nsw y!194))
                         (equiv-Bool!0 (Sub_nuw x!193) (Sub_nuw y!194))
                         (equiv-Operand!126
                           (Sub_operand0 x!193)
                           (Sub_operand0 y!194))
                         (equiv-Operand!126
                           (Sub_operand1 x!193)
                           (Sub_operand1 y!194))
                         (equiv-Bool!0 (Sub_metadata x!193)
                                       (Sub_metadata y!194)))
                    (and ((_ is
                             (I_FSub
                              (FastMathFlags Operand Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_FSub
                              (FastMathFlags Operand Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-FastMathFlags!66
                           (FSub_fastMathFlags x!193)
                           (FSub_fastMathFlags y!194))
                         (equiv-Operand!126
                           (FSub_operand0 x!193)
                           (FSub_operand0 y!194))
                         (equiv-Operand!126
                           (FSub_operand1 x!193)
                           (FSub_operand1 y!194))
                         (equiv-Bool!0 (FSub_metadata x!193)
                                       (FSub_metadata y!194)))
                    (and ((_ is
                             (I_Mul
                              (Bool Bool Operand Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_Mul
                              (Bool Bool Operand Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-Bool!0 (Mul_nsw x!193) (Mul_nsw y!194))
                         (equiv-Bool!0 (Mul_nuw x!193) (Mul_nuw y!194))
                         (equiv-Operand!126
                           (Mul_operand0 x!193)
                           (Mul_operand0 y!194))
                         (equiv-Operand!126
                           (Mul_operand1 x!193)
                           (Mul_operand1 y!194))
                         (equiv-Bool!0 (Mul_metadata x!193)
                                       (Mul_metadata y!194)))
                    (and ((_ is
                             (I_FMul
                              (FastMathFlags Operand Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_FMul
                              (FastMathFlags Operand Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-FastMathFlags!66
                           (FMul_fastMathFlags x!193)
                           (FMul_fastMathFlags y!194))
                         (equiv-Operand!126
                           (FMul_operand0 x!193)
                           (FMul_operand0 y!194))
                         (equiv-Operand!126
                           (FMul_operand1 x!193)
                           (FMul_operand1 y!194))
                         (equiv-Bool!0 (FMul_metadata x!193)
                                       (FMul_metadata y!194)))
                    (and ((_ is
                             (I_UDiv (Bool Operand Operand Bool) Instruction))
                           x!193)
                         ((_ is
                             (I_UDiv (Bool Operand Operand Bool) Instruction))
                           y!194)
                         (equiv-Bool!0 (UDiv_exact x!193) (UDiv_exact y!194))
                         (equiv-Operand!126
                           (UDiv_operand0 x!193)
                           (UDiv_operand0 y!194))
                         (equiv-Operand!126
                           (UDiv_operand1 x!193)
                           (UDiv_operand1 y!194))
                         (equiv-Bool!0 (UDiv_metadata x!193)
                                       (UDiv_metadata y!194)))
                    (and ((_ is
                             (I_SDiv (Bool Operand Operand Bool) Instruction))
                           x!193)
                         ((_ is
                             (I_SDiv (Bool Operand Operand Bool) Instruction))
                           y!194)
                         (equiv-Bool!0 (SDiv_exact x!193) (SDiv_exact y!194))
                         (equiv-Operand!126
                           (SDiv_operand0 x!193)
                           (SDiv_operand0 y!194))
                         (equiv-Operand!126
                           (SDiv_operand1 x!193)
                           (SDiv_operand1 y!194))
                         (equiv-Bool!0 (SDiv_metadata x!193)
                                       (SDiv_metadata y!194)))
                    (and ((_ is
                             (I_FDiv
                              (FastMathFlags Operand Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_FDiv
                              (FastMathFlags Operand Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-FastMathFlags!66
                           (FDiv_fastMathFlags x!193)
                           (FDiv_fastMathFlags y!194))
                         (equiv-Operand!126
                           (FDiv_operand0 x!193)
                           (FDiv_operand0 y!194))
                         (equiv-Operand!126
                           (FDiv_operand1 x!193)
                           (FDiv_operand1 y!194))
                         (equiv-Bool!0 (FDiv_metadata x!193)
                                       (FDiv_metadata y!194)))
                    (and ((_ is (I_URem (Operand Operand Bool) Instruction))
                           x!193)
                         ((_ is (I_URem (Operand Operand Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (URem_operand0 x!193)
                           (URem_operand0 y!194))
                         (equiv-Operand!126
                           (URem_operand1 x!193)
                           (URem_operand1 y!194))
                         (equiv-Bool!0 (URem_metadata x!193)
                                       (URem_metadata y!194)))
                    (and ((_ is (I_SRem (Operand Operand Bool) Instruction))
                           x!193)
                         ((_ is (I_SRem (Operand Operand Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (SRem_operand0 x!193)
                           (SRem_operand0 y!194))
                         (equiv-Operand!126
                           (SRem_operand1 x!193)
                           (SRem_operand1 y!194))
                         (equiv-Bool!0 (SRem_metadata x!193)
                                       (SRem_metadata y!194)))
                    (and ((_ is
                             (I_FRem
                              (FastMathFlags Operand Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_FRem
                              (FastMathFlags Operand Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-FastMathFlags!66
                           (FRem_fastMathFlags x!193)
                           (FRem_fastMathFlags y!194))
                         (equiv-Operand!126
                           (FRem_operand0 x!193)
                           (FRem_operand0 y!194))
                         (equiv-Operand!126
                           (FRem_operand1 x!193)
                           (FRem_operand1 y!194))
                         (equiv-Bool!0 (FRem_metadata x!193)
                                       (FRem_metadata y!194)))
                    (and ((_ is
                             (I_Shl
                              (Bool Bool Operand Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_Shl
                              (Bool Bool Operand Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-Bool!0 (Shl_nsw x!193) (Shl_nsw y!194))
                         (equiv-Bool!0 (Shl_nuw x!193) (Shl_nuw y!194))
                         (equiv-Operand!126
                           (Shl_operand0 x!193)
                           (Shl_operand0 y!194))
                         (equiv-Operand!126
                           (Shl_operand1 x!193)
                           (Shl_operand1 y!194))
                         (equiv-Bool!0 (Shl_metadata x!193)
                                       (Shl_metadata y!194)))
                    (and ((_ is
                             (I_LShr (Bool Operand Operand Bool) Instruction))
                           x!193)
                         ((_ is
                             (I_LShr (Bool Operand Operand Bool) Instruction))
                           y!194)
                         (equiv-Bool!0 (LShr_exact x!193) (LShr_exact y!194))
                         (equiv-Operand!126
                           (LShr_operand0 x!193)
                           (LShr_operand0 y!194))
                         (equiv-Operand!126
                           (LShr_operand1 x!193)
                           (LShr_operand1 y!194))
                         (equiv-Bool!0 (LShr_metadata x!193)
                                       (LShr_metadata y!194)))
                    (and ((_ is
                             (I_AShr (Bool Operand Operand Bool) Instruction))
                           x!193)
                         ((_ is
                             (I_AShr (Bool Operand Operand Bool) Instruction))
                           y!194)
                         (equiv-Bool!0 (AShr_exact x!193) (AShr_exact y!194))
                         (equiv-Operand!126
                           (AShr_operand0 x!193)
                           (AShr_operand0 y!194))
                         (equiv-Operand!126
                           (AShr_operand1 x!193)
                           (AShr_operand1 y!194))
                         (equiv-Bool!0 (AShr_metadata x!193)
                                       (AShr_metadata y!194)))
                    (and ((_ is (I_And (Operand Operand Bool) Instruction))
                           x!193)
                         ((_ is (I_And (Operand Operand Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (And_operand0 x!193)
                           (And_operand0 y!194))
                         (equiv-Operand!126
                           (And_operand1 x!193)
                           (And_operand1 y!194))
                         (equiv-Bool!0 (And_metadata x!193)
                                       (And_metadata y!194)))
                    (and ((_ is (I_Or (Operand Operand Bool) Instruction))
                           x!193)
                         ((_ is (I_Or (Operand Operand Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (Or_operand0 x!193)
                           (Or_operand0 y!194))
                         (equiv-Operand!126
                           (Or_operand1 x!193)
                           (Or_operand1 y!194))
                         (equiv-Bool!0 (Or_metadata x!193) (Or_metadata y!194)))
                    (and ((_ is (I_Xor (Operand Operand Bool) Instruction))
                           x!193)
                         ((_ is (I_Xor (Operand Operand Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (Xor_operand0 x!193)
                           (Xor_operand0 y!194))
                         (equiv-Operand!126
                           (Xor_operand1 x!193)
                           (Xor_operand1 y!194))
                         (equiv-Bool!0 (Xor_metadata x!193)
                                       (Xor_metadata y!194)))
                    (and ((_ is
                             (I_Alloca
                              (Type Maybe_Operand (_ BitVec 32) Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_Alloca
                              (Type Maybe_Operand (_ BitVec 32) Bool)
                              Instruction))
                           y!194)
                         (equiv-Type!85 (Alloca_allocatedType x!193)
                                        (Alloca_allocatedType y!194))
                         (equiv-Maybe_Operand!129
                           (Alloca_numElements x!193)
                           (Alloca_numElements y!194))
                         (equiv-Word!12 (Alloca_alignment x!193)
                                        (Alloca_alignment y!194))
                         (equiv-Bool!0 (Alloca_metadata x!193)
                                       (Alloca_metadata y!194)))
                    (and ((_ is
                             (I_Load
                              (Bool Operand Maybe_Atomicity (_ BitVec 32) Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_Load
                              (Bool Operand Maybe_Atomicity (_ BitVec 32) Bool)
                              Instruction))
                           y!194)
                         (equiv-Bool!0 (Load_volatile x!193)
                                       (Load_volatile y!194))
                         (equiv-Operand!126
                           (Load_address x!193)
                           (Load_address y!194))
                         (equiv-Maybe_Atomicity!141
                           (Load_maybeAtomicity x!193)
                           (Load_maybeAtomicity y!194))
                         (equiv-Word!12 (Load_alignment x!193)
                                        (Load_alignment y!194))
                         (equiv-Bool!0 (Load_metadata x!193)
                                       (Load_metadata y!194)))
                    (and ((_ is
                             (I_Store
                              (Bool
                               Operand
                               Operand
                               Maybe_Atomicity
                               (_ BitVec 32)
                               Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_Store
                              (Bool
                               Operand
                               Operand
                               Maybe_Atomicity
                               (_ BitVec 32)
                               Bool)
                              Instruction))
                           y!194)
                         (equiv-Bool!0 (Store_volatile x!193)
                                       (Store_volatile y!194))
                         (equiv-Operand!126
                           (Store_address x!193)
                           (Store_address y!194))
                         (equiv-Operand!126
                           (Store_value x!193)
                           (Store_value y!194))
                         (equiv-Maybe_Atomicity!141
                           (Store_maybeAtomicity x!193)
                           (Store_maybeAtomicity y!194))
                         (equiv-Word!12 (Store_alignment x!193)
                                        (Store_alignment y!194))
                         (equiv-Bool!0 (Store_metadata x!193)
                                       (Store_metadata y!194)))
                    (and ((_ is
                             (I_GetElementPtr
                              (Bool Operand List_Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_GetElementPtr
                              (Bool Operand List_Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-Bool!0 (GetElementPtr_inBounds x!193)
                                       (GetElementPtr_inBounds y!194))
                         (equiv-Operand!126
                           (GetElementPtr_address x!193)
                           (GetElementPtr_address y!194))
                         (equiv-List_Operand!132
                           (GetElementPtr_indices x!193)
                           (GetElementPtr_indices y!194))
                         (equiv-Bool!0 (GetElementPtr_metadata x!193)
                                       (GetElementPtr_metadata y!194)))
                    (and ((_ is (I_Fence (Atomicity Bool) Instruction)) x!193)
                         ((_ is (I_Fence (Atomicity Bool) Instruction)) y!194)
                         (equiv-Atomicity!48
                           (Fence_atomicity x!193)
                           (Fence_atomicity y!194))
                         (equiv-Bool!0 (Fence_metadata x!193)
                                       (Fence_metadata y!194)))
                    (and ((_ is
                             (I_CmpXchg
                              (Bool
                               Operand
                               Operand
                               Operand
                               Atomicity
                               MemoryOrdering
                               Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_CmpXchg
                              (Bool
                               Operand
                               Operand
                               Operand
                               Atomicity
                               MemoryOrdering
                               Bool)
                              Instruction))
                           y!194)
                         (equiv-Bool!0 (CmpXchg_volatile x!193)
                                       (CmpXchg_volatile y!194))
                         (equiv-Operand!126
                           (CmpXchg_address x!193)
                           (CmpXchg_address y!194))
                         (equiv-Operand!126
                           (CmpXchg_expected x!193)
                           (CmpXchg_expected y!194))
                         (equiv-Operand!126
                           (CmpXchg_replacement x!193)
                           (CmpXchg_replacement y!194))
                         (equiv-Atomicity!48
                           (CmpXchg_atomicity x!193)
                           (CmpXchg_atomicity y!194))
                         (equiv-MemoryOrdering!45
                           (CmpXchg_failureMemoryOrdering x!193)
                           (CmpXchg_failureMemoryOrdering y!194))
                         (equiv-Bool!0 (CmpXchg_metadata x!193)
                                       (CmpXchg_metadata y!194)))
                    (and ((_ is
                             (I_AtomicRMW
                              (Bool RMWOperation Operand Operand Atomicity Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_AtomicRMW
                              (Bool RMWOperation Operand Operand Atomicity Bool)
                              Instruction))
                           y!194)
                         (equiv-Bool!0 (AtomicRMW_volatile x!193)
                                       (AtomicRMW_volatile y!194))
                         (equiv-RMWOperation!30
                           (AtomicRMW_rmwOperation x!193)
                           (AtomicRMW_rmwOperation y!194))
                         (equiv-Operand!126
                           (AtomicRMW_address x!193)
                           (AtomicRMW_address y!194))
                         (equiv-Operand!126
                           (AtomicRMW_value x!193)
                           (AtomicRMW_value y!194))
                         (equiv-Atomicity!48
                           (AtomicRMW_atomicity x!193)
                           (AtomicRMW_atomicity y!194))
                         (equiv-Bool!0 (AtomicRMW_metadata x!193)
                                       (AtomicRMW_metadata y!194)))
                    (and ((_ is (I_Trunc (Operand Type Bool) Instruction))
                           x!193)
                         ((_ is (I_Trunc (Operand Type Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (Trunc_operand0 x!193)
                           (Trunc_operand0 y!194))
                         (equiv-Type!85 (Trunc_type_ x!193) (Trunc_type_ y!194))
                         (equiv-Bool!0 (Trunc_metadata x!193)
                                       (Trunc_metadata y!194)))
                    (and ((_ is (I_ZExt (Operand Type Bool) Instruction)) x!193)
                         ((_ is (I_ZExt (Operand Type Bool) Instruction)) y!194)
                         (equiv-Operand!126
                           (ZExt_operand0 x!193)
                           (ZExt_operand0 y!194))
                         (equiv-Type!85 (ZExt_type_ x!193) (ZExt_type_ y!194))
                         (equiv-Bool!0 (ZExt_metadata x!193)
                                       (ZExt_metadata y!194)))
                    (and ((_ is (I_SExt (Operand Type Bool) Instruction)) x!193)
                         ((_ is (I_SExt (Operand Type Bool) Instruction)) y!194)
                         (equiv-Operand!126
                           (SExt_operand0 x!193)
                           (SExt_operand0 y!194))
                         (equiv-Type!85 (SExt_type_ x!193) (SExt_type_ y!194))
                         (equiv-Bool!0 (SExt_metadata x!193)
                                       (SExt_metadata y!194)))
                    (and ((_ is (I_FPToUI (Operand Type Bool) Instruction))
                           x!193)
                         ((_ is (I_FPToUI (Operand Type Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (FPToUI_operand0 x!193)
                           (FPToUI_operand0 y!194))
                         (equiv-Type!85 (FPToUI_type_ x!193)
                                        (FPToUI_type_ y!194))
                         (equiv-Bool!0 (FPToUI_metadata x!193)
                                       (FPToUI_metadata y!194)))
                    (and ((_ is (I_FPToSI (Operand Type Bool) Instruction))
                           x!193)
                         ((_ is (I_FPToSI (Operand Type Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (FPToSI_operand0 x!193)
                           (FPToSI_operand0 y!194))
                         (equiv-Type!85 (FPToSI_type_ x!193)
                                        (FPToSI_type_ y!194))
                         (equiv-Bool!0 (FPToSI_metadata x!193)
                                       (FPToSI_metadata y!194)))
                    (and ((_ is (I_UIToFP (Operand Type Bool) Instruction))
                           x!193)
                         ((_ is (I_UIToFP (Operand Type Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (UIToFP_operand0 x!193)
                           (UIToFP_operand0 y!194))
                         (equiv-Type!85 (UIToFP_type_ x!193)
                                        (UIToFP_type_ y!194))
                         (equiv-Bool!0 (UIToFP_metadata x!193)
                                       (UIToFP_metadata y!194)))
                    (and ((_ is (I_SIToFP (Operand Type Bool) Instruction))
                           x!193)
                         ((_ is (I_SIToFP (Operand Type Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (SIToFP_operand0 x!193)
                           (SIToFP_operand0 y!194))
                         (equiv-Type!85 (SIToFP_type_ x!193)
                                        (SIToFP_type_ y!194))
                         (equiv-Bool!0 (SIToFP_metadata x!193)
                                       (SIToFP_metadata y!194)))
                    (and ((_ is (I_FPTrunc (Operand Type Bool) Instruction))
                           x!193)
                         ((_ is (I_FPTrunc (Operand Type Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (FPTrunc_operand0 x!193)
                           (FPTrunc_operand0 y!194))
                         (equiv-Type!85 (FPTrunc_type_ x!193)
                                        (FPTrunc_type_ y!194))
                         (equiv-Bool!0 (FPTrunc_metadata x!193)
                                       (FPTrunc_metadata y!194)))
                    (and ((_ is (I_FPExt (Operand Type Bool) Instruction))
                           x!193)
                         ((_ is (I_FPExt (Operand Type Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (FPExt_operand0 x!193)
                           (FPExt_operand0 y!194))
                         (equiv-Type!85 (FPExt_type_ x!193) (FPExt_type_ y!194))
                         (equiv-Bool!0 (FPExt_metadata x!193)
                                       (FPExt_metadata y!194)))
                    (and ((_ is (I_PtrToInt (Operand Type Bool) Instruction))
                           x!193)
                         ((_ is (I_PtrToInt (Operand Type Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (PtrToInt_operand0 x!193)
                           (PtrToInt_operand0 y!194))
                         (equiv-Type!85 (PtrToInt_type_ x!193)
                                        (PtrToInt_type_ y!194))
                         (equiv-Bool!0 (PtrToInt_metadata x!193)
                                       (PtrToInt_metadata y!194)))
                    (and ((_ is (I_IntToPtr (Operand Type Bool) Instruction))
                           x!193)
                         ((_ is (I_IntToPtr (Operand Type Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (IntToPtr_operand0 x!193)
                           (IntToPtr_operand0 y!194))
                         (equiv-Type!85 (IntToPtr_type_ x!193)
                                        (IntToPtr_type_ y!194))
                         (equiv-Bool!0 (IntToPtr_metadata x!193)
                                       (IntToPtr_metadata y!194)))
                    (and ((_ is (I_BitCast (Operand Type Bool) Instruction))
                           x!193)
                         ((_ is (I_BitCast (Operand Type Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (BitCast_operand0 x!193)
                           (BitCast_operand0 y!194))
                         (equiv-Type!85 (BitCast_type_ x!193)
                                        (BitCast_type_ y!194))
                         (equiv-Bool!0 (BitCast_metadata x!193)
                                       (BitCast_metadata y!194)))
                    (and ((_ is
                             (I_AddrSpaceCast (Operand Type Bool) Instruction))
                           x!193)
                         ((_ is
                             (I_AddrSpaceCast (Operand Type Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (AddrSpaceCast_operand0 x!193)
                           (AddrSpaceCast_operand0 y!194))
                         (equiv-Type!85 (AddrSpaceCast_type_ x!193)
                                        (AddrSpaceCast_type_ y!194))
                         (equiv-Bool!0 (AddrSpaceCast_metadata x!193)
                                       (AddrSpaceCast_metadata y!194)))
                    (and ((_ is
                             (I_ICmp
                              (IntegerPredicate Operand Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_ICmp
                              (IntegerPredicate Operand Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-IntegerPredicate!36
                           (ICmp_iPredicate x!193)
                           (ICmp_iPredicate y!194))
                         (equiv-Operand!126
                           (ICmp_operand0 x!193)
                           (ICmp_operand0 y!194))
                         (equiv-Operand!126
                           (ICmp_operand1 x!193)
                           (ICmp_operand1 y!194))
                         (equiv-Bool!0 (ICmp_metadata x!193)
                                       (ICmp_metadata y!194)))
                    (and ((_ is
                             (I_FCmp
                              (FloatingPointPredicate Operand Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_FCmp
                              (FloatingPointPredicate Operand Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-FloatingPointPredicate!57
                           (FCmp_fpPredicate x!193)
                           (FCmp_fpPredicate y!194))
                         (equiv-Operand!126
                           (FCmp_operand0 x!193)
                           (FCmp_operand0 y!194))
                         (equiv-Operand!126
                           (FCmp_operand1 x!193)
                           (FCmp_operand1 y!194))
                         (equiv-Bool!0 (FCmp_metadata x!193)
                                       (FCmp_metadata y!194)))
                    (and ((_ is
                             (I_Phi
                              (Type List_Tup2_Operand_Name Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_Phi
                              (Type List_Tup2_Operand_Name Bool)
                              Instruction))
                           y!194)
                         (equiv-Type!85 (Phi_type_ x!193) (Phi_type_ y!194))
                         (equiv-List_Tup2_Operand_Name!168
                           (Phi_incomingValues x!193)
                           (Phi_incomingValues y!194))
                         (equiv-Bool!0 (Phi_metadata x!193)
                                       (Phi_metadata y!194)))
                    (and ((_ is
                             (I_Call
                              (Maybe_TailCallKind
                               CallingConvention
                               List_ParameterAttribute
                               CallableOperand
                               List_Tup2_Operand_List_ParameterAttribute
                               List_Either_GroupID_FunctionAttribute
                               Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_Call
                              (Maybe_TailCallKind
                               CallingConvention
                               List_ParameterAttribute
                               CallableOperand
                               List_Tup2_Operand_List_ParameterAttribute
                               List_Either_GroupID_FunctionAttribute
                               Bool)
                              Instruction))
                           y!194)
                         (equiv-Maybe_TailCallKind!138
                           (Call_tailCallKind x!193)
                           (Call_tailCallKind y!194))
                         (equiv-CallingConvention!78
                           (Call_callingConvention x!193)
                           (Call_callingConvention y!194))
                         (equiv-List_ParameterAttribute!93
                           (Call_returnAttributes x!193)
                           (Call_returnAttributes y!194))
                         (equiv-CallableOperand!135
                           (Call_function x!193)
                           (Call_function y!194))
                         (equiv-List_Tup2_Operand_List_ParameterAttribute!174
                           (Call_arguments x!193)
                           (Call_arguments y!194))
                         (equiv-List_Either_GroupID_FunctionAttribute!189
                           (Call_functionAttributes x!193)
                           (Call_functionAttributes y!194))
                         (equiv-Bool!0 (Call_metadata x!193)
                                       (Call_metadata y!194)))
                    (and ((_ is
                             (I_Select
                              (Operand Operand Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_Select
                              (Operand Operand Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-Operand!126
                           (Select_condition_ x!193)
                           (Select_condition_ y!194))
                         (equiv-Operand!126
                           (Select_trueValue x!193)
                           (Select_trueValue y!194))
                         (equiv-Operand!126
                           (Select_falseValue x!193)
                           (Select_falseValue y!194))
                         (equiv-Bool!0 (Select_metadata x!193)
                                       (Select_metadata y!194)))
                    (and ((_ is (I_VAArg (Operand Type Bool) Instruction))
                           x!193)
                         ((_ is (I_VAArg (Operand Type Bool) Instruction))
                           y!194)
                         (equiv-Operand!126
                           (VAArg_argList x!193)
                           (VAArg_argList y!194))
                         (equiv-Type!85 (VAArg_type_ x!193) (VAArg_type_ y!194))
                         (equiv-Bool!0 (VAArg_metadata x!193)
                                       (VAArg_metadata y!194)))
                    (and ((_ is
                             (I_ExtractElement
                              (Operand Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_ExtractElement
                              (Operand Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-Operand!126
                           (ExtractElement_vector x!193)
                           (ExtractElement_vector y!194))
                         (equiv-Operand!126
                           (ExtractElement_index x!193)
                           (ExtractElement_index y!194))
                         (equiv-Bool!0 (ExtractElement_metadata x!193)
                                       (ExtractElement_metadata y!194)))
                    (and ((_ is
                             (I_InsertElement
                              (Operand Operand Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_InsertElement
                              (Operand Operand Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-Operand!126
                           (InsertElement_vector x!193)
                           (InsertElement_vector y!194))
                         (equiv-Operand!126
                           (InsertElement_element x!193)
                           (InsertElement_element y!194))
                         (equiv-Operand!126
                           (InsertElement_index x!193)
                           (InsertElement_index y!194))
                         (equiv-Bool!0 (InsertElement_metadata x!193)
                                       (InsertElement_metadata y!194)))
                    (and ((_ is
                             (I_ShuffleVector
                              (Operand Operand Constant Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_ShuffleVector
                              (Operand Operand Constant Bool)
                              Instruction))
                           y!194)
                         (equiv-Operand!126
                           (ShuffleVector_operand0 x!193)
                           (ShuffleVector_operand0 y!194))
                         (equiv-Operand!126
                           (ShuffleVector_operand1 x!193)
                           (ShuffleVector_operand1 y!194))
                         (equiv-Constant!114
                           (ShuffleVector_mask x!193)
                           (ShuffleVector_mask y!194))
                         (equiv-Bool!0 (ShuffleVector_metadata x!193)
                                       (ShuffleVector_metadata y!194)))
                    (and ((_ is
                             (I_ExtractValue
                              (Operand List_Word32 Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_ExtractValue
                              (Operand List_Word32 Bool)
                              Instruction))
                           y!194)
                         (equiv-Operand!126
                           (ExtractValue_aggregate x!193)
                           (ExtractValue_aggregate y!194))
                         (equiv-List_Word32!105
                           (ExtractValue_indices_ x!193)
                           (ExtractValue_indices_ y!194))
                         (equiv-Bool!0 (ExtractValue_metadata x!193)
                                       (ExtractValue_metadata y!194)))
                    (and ((_ is
                             (I_InsertValue
                              (Operand Operand List_Word32 Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_InsertValue
                              (Operand Operand List_Word32 Bool)
                              Instruction))
                           y!194)
                         (equiv-Operand!126
                           (InsertValue_aggregate x!193)
                           (InsertValue_aggregate y!194))
                         (equiv-Operand!126
                           (InsertValue_element x!193)
                           (InsertValue_element y!194))
                         (equiv-List_Word32!105
                           (InsertValue_indices_ x!193)
                           (InsertValue_indices_ y!194))
                         (equiv-Bool!0 (InsertValue_metadata x!193)
                                       (InsertValue_metadata y!194)))
                    (and ((_ is
                             (I_LandingPad
                              (Type Bool List_LandingPadClause Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_LandingPad
                              (Type Bool List_LandingPadClause Bool)
                              Instruction))
                           y!194)
                         (equiv-Type!85 (LandingPad_type_ x!193)
                                        (LandingPad_type_ y!194))
                         (equiv-Bool!0 (LandingPad_cleanup x!193)
                                       (LandingPad_cleanup y!194))
                         (equiv-List_LandingPadClause!123
                           (LandingPad_clauses x!193)
                           (LandingPad_clauses y!194))
                         (equiv-Bool!0 (LandingPad_metadata x!193)
                                       (LandingPad_metadata y!194)))
                    (and ((_ is
                             (I_CatchPad
                              (Operand List_Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_CatchPad
                              (Operand List_Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-Operand!126
                           (CatchPad_catchSwitch x!193)
                           (CatchPad_catchSwitch y!194))
                         (equiv-List_Operand!132
                           (CatchPad_args x!193)
                           (CatchPad_args y!194))
                         (equiv-Bool!0 (CatchPad_metadata x!193)
                                       (CatchPad_metadata y!194)))
                    (and ((_ is
                             (I_CleanupPad
                              (Operand List_Operand Bool)
                              Instruction))
                           x!193)
                         ((_ is
                             (I_CleanupPad
                              (Operand List_Operand Bool)
                              Instruction))
                           y!194)
                         (equiv-Operand!126
                           (CleanupPad_parentPad x!193)
                           (CleanupPad_parentPad y!194))
                         (equiv-List_Operand!132
                           (CleanupPad_args x!193)
                           (CleanupPad_args y!194))
                         (equiv-Bool!0 (CleanupPad_metadata x!193)
                                       (CleanupPad_metadata y!194))))))
       (= (equiv-Instruction!192 x!193 y!194) a!1))
     :weight 0)))
(assert (forall ((x!196 Named_Instruction) (y!197 Named_Instruction))
  (! (let ((a!1 (or (and ((_ is
                             (NI_infix_Instruction
                              (Name Instruction)
                              Named_Instruction))
                           x!196)
                         ((_ is
                             (NI_infix_Instruction
                              (Name Instruction)
                              Named_Instruction))
                           y!197)
                         (equiv-Name!69 (l x!196) (l y!197))
                         (equiv-Instruction!192 (r x!196) (r y!197)))
                    (and ((_ is
                             (NI_Do_Instruction (Instruction) Named_Instruction))
                           x!196)
                         ((_ is
                             (NI_Do_Instruction (Instruction) Named_Instruction))
                           y!197)
                         (equiv-Instruction!192 (f_Do_1 x!196) (f_Do_1 y!197))))))
       (= (equiv-Named_Instruction!195 x!196 y!197) a!1))
     :weight 0)))
(assert (forall ((x!199 List_Named_Instruction) (y!200 List_Named_Instruction))
  (! (let ((a!1 (or (and ((_ is
                             (Nil_Named_Instruction () List_Named_Instruction))
                           x!199)
                         ((_ is
                             (Nil_Named_Instruction () List_Named_Instruction))
                           y!200))
                    (and ((_ is
                             (Cons_Named_Instruction
                              (Named_Instruction List_Named_Instruction)
                              List_Named_Instruction))
                           x!199)
                         ((_ is
                             (Cons_Named_Instruction
                              (Named_Instruction List_Named_Instruction)
                              List_Named_Instruction))
                           y!200)
                         (equiv-Named_Instruction!195 (head x!199) (head y!200))
                         (equiv-List_Named_Instruction!198
                           (tail x!199)
                           (tail y!200))))))
       (= (equiv-List_Named_Instruction!198 x!199 y!200) a!1))
     :weight 0)))
(assert (forall ((x!202 Terminator) (y!203 Terminator))
  (! (let ((a!1 (or (and ((_ is (T_Ret (Maybe_Operand Bool) Terminator)) x!202)
                         ((_ is (T_Ret (Maybe_Operand Bool) Terminator)) y!203)
                         (equiv-Maybe_Operand!129
                           (Ret_returnOperand x!202)
                           (Ret_returnOperand y!203))
                         (equiv-Bool!0 (Ret_metadata_ x!202)
                                       (Ret_metadata_ y!203)))
                    (and ((_ is (T_CondBr (Operand Name Name Bool) Terminator))
                           x!202)
                         ((_ is (T_CondBr (Operand Name Name Bool) Terminator))
                           y!203)
                         (equiv-Operand!126
                           (CondBr_condition x!202)
                           (CondBr_condition y!203))
                         (equiv-Name!69 (CondBr_trueDest x!202)
                                        (CondBr_trueDest y!203))
                         (equiv-Name!69 (CondBr_falseDest x!202)
                                        (CondBr_falseDest y!203))
                         (equiv-Bool!0 (CondBr_metadata_ x!202)
                                       (CondBr_metadata_ y!203)))
                    (and ((_ is (T_Br (Name Bool) Terminator)) x!202)
                         ((_ is (T_Br (Name Bool) Terminator)) y!203)
                         (equiv-Name!69 (Br_dest x!202) (Br_dest y!203))
                         (equiv-Bool!0 (Br_metadata_ x!202)
                                       (Br_metadata_ y!203)))
                    (and ((_ is
                             (T_Switch
                              (Operand Name List_Tup2_Constant_Name Bool)
                              Terminator))
                           x!202)
                         ((_ is
                             (T_Switch
                              (Operand Name List_Tup2_Constant_Name Bool)
                              Terminator))
                           y!203)
                         (equiv-Operand!126
                           (Switch_operand0_ x!202)
                           (Switch_operand0_ y!203))
                         (equiv-Name!69 (Switch_defaultDest x!202)
                                        (Switch_defaultDest y!203))
                         (equiv-List_Tup2_Constant_Name!180
                           (Switch_dests x!202)
                           (Switch_dests y!203))
                         (equiv-Bool!0 (Switch_metadata_ x!202)
                                       (Switch_metadata_ y!203)))
                    (and ((_ is
                             (T_IndirectBr (Operand List_Name Bool) Terminator))
                           x!202)
                         ((_ is
                             (T_IndirectBr (Operand List_Name Bool) Terminator))
                           y!203)
                         (equiv-Operand!126
                           (IndirectBr_operand0_ x!202)
                           (IndirectBr_operand0_ y!203))
                         (equiv-List_Name!99
                           (IndirectBr_possibleDests x!202)
                           (IndirectBr_possibleDests y!203))
                         (equiv-Bool!0 (IndirectBr_metadata_ x!202)
                                       (IndirectBr_metadata_ y!203)))
                    (and ((_ is
                             (T_Invoke
                              (CallingConvention
                               List_ParameterAttribute
                               CallableOperand
                               List_Tup2_Operand_List_ParameterAttribute
                               List_Either_GroupID_FunctionAttribute
                               Name
                               Name
                               Bool)
                              Terminator))
                           x!202)
                         ((_ is
                             (T_Invoke
                              (CallingConvention
                               List_ParameterAttribute
                               CallableOperand
                               List_Tup2_Operand_List_ParameterAttribute
                               List_Either_GroupID_FunctionAttribute
                               Name
                               Name
                               Bool)
                              Terminator))
                           y!203)
                         (equiv-CallingConvention!78
                           (Invoke_callingConvention_ x!202)
                           (Invoke_callingConvention_ y!203))
                         (equiv-List_ParameterAttribute!93
                           (Invoke_returnAttributes_ x!202)
                           (Invoke_returnAttributes_ y!203))
                         (equiv-CallableOperand!135
                           (Invoke_function_ x!202)
                           (Invoke_function_ y!203))
                         (equiv-List_Tup2_Operand_List_ParameterAttribute!174
                           (Invoke_arguments_ x!202)
                           (Invoke_arguments_ y!203))
                         (equiv-List_Either_GroupID_FunctionAttribute!189
                           (Invoke_functionAttributes_ x!202)
                           (Invoke_functionAttributes_ y!203))
                         (equiv-Name!69 (Invoke_returnDest x!202)
                                        (Invoke_returnDest y!203))
                         (equiv-Name!69 (Invoke_exceptionDest x!202)
                                        (Invoke_exceptionDest y!203))
                         (equiv-Bool!0 (Invoke_metadata_ x!202)
                                       (Invoke_metadata_ y!203)))
                    (and ((_ is (T_Resume (Operand Bool) Terminator)) x!202)
                         ((_ is (T_Resume (Operand Bool) Terminator)) y!203)
                         (equiv-Operand!126
                           (Resume_operand0_ x!202)
                           (Resume_operand0_ y!203))
                         (equiv-Bool!0 (Resume_metadata_ x!202)
                                       (Resume_metadata_ y!203)))
                    (and ((_ is (T_Unreachable (Bool) Terminator)) x!202)
                         ((_ is (T_Unreachable (Bool) Terminator)) y!203)
                         (equiv-Bool!0 (Unreachable_metadata_ x!202)
                                       (Unreachable_metadata_ y!203)))
                    (and ((_ is
                             (T_CleanupRet (Operand Maybe_Name Bool) Terminator))
                           x!202)
                         ((_ is
                             (T_CleanupRet (Operand Maybe_Name Bool) Terminator))
                           y!203)
                         (equiv-Operand!126
                           (CleanupRet_cleanupPad x!202)
                           (CleanupRet_cleanupPad y!203))
                         (equiv-Maybe_Name!111
                           (CleanupRet_unwindDest x!202)
                           (CleanupRet_unwindDest y!203))
                         (equiv-Bool!0 (CleanupRet_metadata_ x!202)
                                       (CleanupRet_metadata_ y!203)))
                    (and ((_ is (T_CatchRet (Operand Name Bool) Terminator))
                           x!202)
                         ((_ is (T_CatchRet (Operand Name Bool) Terminator))
                           y!203)
                         (equiv-Operand!126
                           (CatchRet_catchPad x!202)
                           (CatchRet_catchPad y!203))
                         (equiv-Name!69 (CatchRet_successor x!202)
                                        (CatchRet_successor y!203))
                         (equiv-Bool!0 (CatchRet_metadata_ x!202)
                                       (CatchRet_metadata_ y!203)))
                    (and ((_ is
                             (T_CatchSwitch
                              (Operand NonEmpty_Name Maybe_Name Bool)
                              Terminator))
                           x!202)
                         ((_ is
                             (T_CatchSwitch
                              (Operand NonEmpty_Name Maybe_Name Bool)
                              Terminator))
                           y!203)
                         (equiv-Operand!126
                           (CatchSwitch_parentPad_ x!202)
                           (CatchSwitch_parentPad_ y!203))
                         (equiv-NonEmpty_Name!162
                           (CatchSwitch_catchHandlers x!202)
                           (CatchSwitch_catchHandlers y!203))
                         (equiv-Maybe_Name!111
                           (CatchSwitch_defaultUnwindDest x!202)
                           (CatchSwitch_defaultUnwindDest y!203))
                         (equiv-Bool!0 (CatchSwitch_metadata_ x!202)
                                       (CatchSwitch_metadata_ y!203))))))
       (= (equiv-Terminator!201 x!202 y!203) a!1))
     :weight 0)))
(assert (forall ((x!205 Named_Terminator) (y!206 Named_Terminator))
  (! (let ((a!1 (or (and ((_ is
                             (NT_infix_Terminator
                              (Name Terminator)
                              Named_Terminator))
                           x!205)
                         ((_ is
                             (NT_infix_Terminator
                              (Name Terminator)
                              Named_Terminator))
                           y!206)
                         (equiv-Name!69 (l x!205) (l y!206))
                         (equiv-Terminator!201 (r x!205) (r y!206)))
                    (and ((_ is
                             (NT_Do_Terminator (Terminator) Named_Terminator))
                           x!205)
                         ((_ is
                             (NT_Do_Terminator (Terminator) Named_Terminator))
                           y!206)
                         (equiv-Terminator!201 (f_Do_1 x!205) (f_Do_1 y!206))))))
       (= (equiv-Named_Terminator!204 x!205 y!206) a!1))
     :weight 0)))
(assert (forall ((x!208 BasicBlock) (y!209 BasicBlock))
  (! (let ((a!1 (or (and ((_ is
                             (BB_BasicBlock
                              (Name List_Named_Instruction Named_Terminator)
                              BasicBlock))
                           x!208)
                         ((_ is
                             (BB_BasicBlock
                              (Name List_Named_Instruction Named_Terminator)
                              BasicBlock))
                           y!209)
                         (equiv-Name!69 (f_BasicBlock_1 x!208)
                                        (f_BasicBlock_1 y!209))
                         (equiv-List_Named_Instruction!198
                           (f_BasicBlock_2 x!208)
                           (f_BasicBlock_2 y!209))
                         (equiv-Named_Terminator!204
                           (f_BasicBlock_3 x!208)
                           (f_BasicBlock_3 y!209))))))
       (= (equiv-BasicBlock!207 x!208 y!209) a!1))
     :weight 0)))
(assert (forall ((x!211 List_BasicBlock) (y!212 List_BasicBlock))
  (! (let ((a!1 (or (and ((_ is (Nil_BasicBlock () List_BasicBlock)) x!211)
                         ((_ is (Nil_BasicBlock () List_BasicBlock)) y!212))
                    (and ((_ is
                             (Cons_BasicBlock
                              (BasicBlock List_BasicBlock)
                              List_BasicBlock))
                           x!211)
                         ((_ is
                             (Cons_BasicBlock
                              (BasicBlock List_BasicBlock)
                              List_BasicBlock))
                           y!212)
                         (equiv-BasicBlock!207 (head x!211) (head y!212))
                         (equiv-List_BasicBlock!210 (tail x!211) (tail y!212))))))
       (= (equiv-List_BasicBlock!210 x!211 y!212) a!1))
     :weight 0)))
(assert (forall ((x!214 Global) (y!215 Global))
  (! (let ((a!1 (or (and ((_ is
                             (G_GlobalVariable
                              (Name
                               Linkage
                               Visibility
                               Maybe_StorageClass
                               Maybe_Model
                               Maybe_UnnamedAddr
                               Bool
                               Type
                               AddrSpace
                               Maybe_Constant
                               Maybe_ShortByteString
                               Maybe_ShortByteString
                               (_ BitVec 32)
                               Bool)
                              Global))
                           x!214)
                         ((_ is
                             (G_GlobalVariable
                              (Name
                               Linkage
                               Visibility
                               Maybe_StorageClass
                               Maybe_Model
                               Maybe_UnnamedAddr
                               Bool
                               Type
                               AddrSpace
                               Maybe_Constant
                               Maybe_ShortByteString
                               Maybe_ShortByteString
                               (_ BitVec 32)
                               Bool)
                              Global))
                           y!215)
                         (equiv-Name!69 (GlobalVariable_name x!214)
                                        (GlobalVariable_name y!215))
                         (equiv-Linkage!33 (GlobalVariable_linkage x!214)
                                           (GlobalVariable_linkage y!215))
                         (equiv-Visibility!21
                           (GlobalVariable_visibility x!214)
                           (GlobalVariable_visibility y!215))
                         (equiv-Maybe_StorageClass!147
                           (GlobalVariable_dllStorageClass x!214)
                           (GlobalVariable_dllStorageClass y!215))
                         (equiv-Maybe_Model!108
                           (GlobalVariable_threadLocalMode x!214)
                           (GlobalVariable_threadLocalMode y!215))
                         (equiv-Maybe_UnnamedAddr!144
                           (GlobalVariable_unnamedAddr x!214)
                           (GlobalVariable_unnamedAddr y!215))
                         (equiv-Bool!0 (GlobalVariable_isConstant x!214)
                                       (GlobalVariable_isConstant y!215))
                         (equiv-Type!85 (GlobalVariable_type_ x!214)
                                        (GlobalVariable_type_ y!215))
                         (equiv-AddrSpace!75
                           (GlobalVariable_addrSpace x!214)
                           (GlobalVariable_addrSpace y!215))
                         (equiv-Maybe_Constant!150
                           (GlobalVariable_initializer x!214)
                           (GlobalVariable_initializer y!215))
                         (equiv-Maybe_ShortByteString!153
                           (GlobalVariable_section x!214)
                           (GlobalVariable_section y!215))
                         (equiv-Maybe_ShortByteString!153
                           (GlobalVariable_comdat x!214)
                           (GlobalVariable_comdat y!215))
                         (equiv-Word!12 (GlobalVariable_alignment x!214)
                                        (GlobalVariable_alignment y!215))
                         (equiv-Bool!0 (GlobalVariable_metadata x!214)
                                       (GlobalVariable_metadata y!215)))
                    (and ((_ is
                             (G_GlobalAlias
                              (Name
                               Linkage
                               Visibility
                               Maybe_StorageClass
                               Maybe_Model
                               Maybe_UnnamedAddr
                               Type
                               AddrSpace
                               Constant)
                              Global))
                           x!214)
                         ((_ is
                             (G_GlobalAlias
                              (Name
                               Linkage
                               Visibility
                               Maybe_StorageClass
                               Maybe_Model
                               Maybe_UnnamedAddr
                               Type
                               AddrSpace
                               Constant)
                              Global))
                           y!215)
                         (equiv-Name!69 (GlobalAlias_name x!214)
                                        (GlobalAlias_name y!215))
                         (equiv-Linkage!33 (GlobalAlias_linkage x!214)
                                           (GlobalAlias_linkage y!215))
                         (equiv-Visibility!21
                           (GlobalAlias_visibility x!214)
                           (GlobalAlias_visibility y!215))
                         (equiv-Maybe_StorageClass!147
                           (GlobalAlias_dllStorageClass x!214)
                           (GlobalAlias_dllStorageClass y!215))
                         (equiv-Maybe_Model!108
                           (GlobalAlias_threadLocalMode x!214)
                           (GlobalAlias_threadLocalMode y!215))
                         (equiv-Maybe_UnnamedAddr!144
                           (GlobalAlias_unnamedAddr x!214)
                           (GlobalAlias_unnamedAddr y!215))
                         (equiv-Type!85 (GlobalAlias_type_ x!214)
                                        (GlobalAlias_type_ y!215))
                         (equiv-AddrSpace!75
                           (GlobalAlias_addrSpace x!214)
                           (GlobalAlias_addrSpace y!215))
                         (equiv-Constant!114
                           (GlobalAlias_aliasee x!214)
                           (GlobalAlias_aliasee y!215)))
                    (and ((_ is
                             (G_Function
                              (Linkage
                               Visibility
                               Maybe_StorageClass
                               CallingConvention
                               List_ParameterAttribute
                               Type
                               Name
                               Tup2_List_Parameter_Bool
                               List_Either_GroupID_FunctionAttribute
                               Maybe_ShortByteString
                               Maybe_ShortByteString
                               (_ BitVec 32)
                               Maybe_ShortByteString
                               Maybe_Constant
                               List_BasicBlock
                               Maybe_Constant
                               Bool)
                              Global))
                           x!214)
                         ((_ is
                             (G_Function
                              (Linkage
                               Visibility
                               Maybe_StorageClass
                               CallingConvention
                               List_ParameterAttribute
                               Type
                               Name
                               Tup2_List_Parameter_Bool
                               List_Either_GroupID_FunctionAttribute
                               Maybe_ShortByteString
                               Maybe_ShortByteString
                               (_ BitVec 32)
                               Maybe_ShortByteString
                               Maybe_Constant
                               List_BasicBlock
                               Maybe_Constant
                               Bool)
                              Global))
                           y!215)
                         (equiv-Linkage!33 (Function_linkage x!214)
                                           (Function_linkage y!215))
                         (equiv-Visibility!21
                           (Function_visibility x!214)
                           (Function_visibility y!215))
                         (equiv-Maybe_StorageClass!147
                           (Function_dllStorageClass x!214)
                           (Function_dllStorageClass y!215))
                         (equiv-CallingConvention!78
                           (Function_callingConvention x!214)
                           (Function_callingConvention y!215))
                         (equiv-List_ParameterAttribute!93
                           (Function_returnAttributes x!214)
                           (Function_returnAttributes y!215))
                         (equiv-Type!85 (Function_returnType x!214)
                                        (Function_returnType y!215))
                         (equiv-Name!69 (Function_name x!214)
                                        (Function_name y!215))
                         (equiv-Tup2_List_Parameter_Bool!183
                           (Function_parameters x!214)
                           (Function_parameters y!215))
                         (equiv-List_Either_GroupID_FunctionAttribute!189
                           (Function_functionAttributes x!214)
                           (Function_functionAttributes y!215))
                         (equiv-Maybe_ShortByteString!153
                           (Function_section x!214)
                           (Function_section y!215))
                         (equiv-Maybe_ShortByteString!153
                           (Function_comdat x!214)
                           (Function_comdat y!215))
                         (equiv-Word!12 (Function_alignment x!214)
                                        (Function_alignment y!215))
                         (equiv-Maybe_ShortByteString!153
                           (Function_garbageCollectorName x!214)
                           (Function_garbageCollectorName y!215))
                         (equiv-Maybe_Constant!150
                           (Function_prefix x!214)
                           (Function_prefix y!215))
                         (equiv-List_BasicBlock!210
                           (Function_basicBlocks x!214)
                           (Function_basicBlocks y!215))
                         (equiv-Maybe_Constant!150
                           (Function_personalityFunction x!214)
                           (Function_personalityFunction y!215))
                         (equiv-Bool!0 (Function_metadata x!214)
                                       (Function_metadata y!215))))))
       (= (equiv-Global!213 x!214 y!215) a!1))
     :weight 0)))
(assert (= p1x L_External))
(assert (= p1y L_External))
(assert (equiv-Visibility!21 p2x p2y))
(assert (equiv-Maybe_StorageClass!147 p3x p3y))
(assert (equiv-CallingConvention!78 p4x p4y))
(assert (equiv-List_ParameterAttribute!93 p5x p5y))
(assert (equiv-Type!85 p6x p6y))
(assert (equiv-Name!69 p7x p7y))
(assert (equiv-Tup2_List_Parameter_Bool!183 p8x p8y))
(assert (equiv-List_Either_GroupID_FunctionAttribute!189 p9x p9y))
(assert (equiv-Maybe_ShortByteString!153 p10x p10y))
(assert (equiv-Maybe_ShortByteString!153 p11x p11y))
(assert (equiv-Word32!9 p12x p12y))
(assert (equiv-Maybe_ShortByteString!153 p13x p13y))
(assert (equiv-Maybe_Constant!150 p14x p14y))
(assert (equiv-List_BasicBlock!210 p15x p15y))
(assert (equiv-Maybe_Constant!150 p16x p16y))
(assert (equiv-Bool!0 p17x p17y))
(assert (= p18x
   (G_Function p1x
               p2x
               p3x
               p4x
               p5x
               p6x
               p7x
               p8x
               p9x
               p10x
               p11x
               p12x
               p13x
               p14x
               p15x
               p16x
               p17x)))
(assert (= p18y
   (G_Function p1y
               p2y
               p3y
               p4y
               p5y
               p6y
               p7y
               p8y
               p9y
               p10y
               p11y
               p12y
               p13y
               p14y
               p15y
               p16y
               p17y)))
(assert (not (equiv-Global!213 p18x p18y)))

(check-sat)