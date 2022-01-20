from z3 import *

class PDG:

    def __init__(self):

        # Raw

        Inst_FunCall_s = 1
        Inst_FunCall_e = 14
        Inst_Ret_s = 15
        Inst_Ret_e = 19
        Inst_Br_s = 20
        Inst_Br_e = 23
        Inst_Other_s = 24
        Inst_Other_e = 70
        Inst_s = 1
        Inst_e = 70
        VarNode_StaticGlobal_s = 0
        VarNode_StaticGlobal_e = -1
        VarNode_StaticModule_s = 0
        VarNode_StaticModule_e = -1
        VarNode_StaticFunction_s = 71
        VarNode_StaticFunction_e = 73
        VarNode_StaticOther_s = 0
        VarNode_StaticOther_e = -1
        VarNode_s = 71
        VarNode_e = 73
        FunctionEntry_s = 74
        FunctionEntry_e = 78
        Param_FormalIn_s = 79
        Param_FormalIn_e = 83
        Param_FormalOut_s = 84
        Param_FormalOut_e = 88
        Param_ActualIn_s = 89
        Param_ActualIn_e = 90
        Param_ActualOut_s = 91
        Param_ActualOut_e = 92
        Param_s = 79
        Param_e = 92
        Annotation_Var_s = 93
        Annotation_Var_e = 93
        Annotation_Global_s = 94
        Annotation_Global_e = 94
        Annotation_Other_s = 0
        Annotation_Other_e = -1
        Annotation_s = 93
        Annotation_e = 94
        PDGNode_s = 1
        PDGNode_e = 94
        ControlDep_CallInv_s = 1
        ControlDep_CallInv_e = 4
        ControlDep_CallRet_s = 5
        ControlDep_CallRet_e = 8
        ControlDep_Entry_s = 9
        ControlDep_Entry_e = 69
        ControlDep_Br_s = 70
        ControlDep_Br_e = 84
        ControlDep_Other_s = 0
        ControlDep_Other_e = -1
        ControlDep_s = 1
        ControlDep_e = 84
        DataDepEdge_DefUse_s = 85
        DataDepEdge_DefUse_e = 139
        DataDepEdge_RAW_s = 140
        DataDepEdge_RAW_e = 147
        DataDepEdge_Ret_s = 148
        DataDepEdge_Ret_e = 151
        DataDepEdge_Alias_s = 152
        DataDepEdge_Alias_e = 152
        DataDepEdge_s = 85
        DataDepEdge_e = 152
        Parameter_In_s = 153
        Parameter_In_e = 164
        Parameter_Out_s = 165
        Parameter_Out_e = 172
        Parameter_Field_s = 173
        Parameter_Field_e = 174
        Parameter_s = 153
        Parameter_e = 174
        Anno_Global_s = 175
        Anno_Global_e = 177
        Anno_Var_s = 178
        Anno_Var_e = 179
        Anno_Other_s = 0
        Anno_Other_e = -1
        Anno_s = 175
        Anno_e = 179
        PDGEdge_s = 1
        PDGEdge_e = 179
        hasFunction = [
            77, 77, 77, 77, 78, 75, 75, 75, 77, 77, 77, 77, 78, 78, 74, 75, 76, 77, 78, 77,
            77, 77, 77, 74, 74, 74, 74, 75, 75, 75, 75, 76, 75, 75, 75, 75, 75, 75, 75, 75,
            75, 75, 75, 76, 76, 76, 76, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77,
            77, 77, 77, 77, 78, 78, 78, 78, 78, 78, 0, 0, 0, 74, 75, 76, 77, 78, 75, 75,
            78, 78, 78, 75, 75, 78, 78, 78, 75, 75, 75, 75, 77, 0
        ]
        hasSource = [
            1, 2, 3, 5, 15, 16, 17, 18, 74, 74, 74, 74, 74, 75, 75, 75, 75, 75, 75, 75,
            75, 75, 75, 75, 75, 75, 75, 75, 75, 76, 76, 76, 76, 76, 76, 77, 77, 77, 77, 77,
            77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77,
            77, 78, 78, 78, 78, 78, 78, 78, 78, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
            21, 21, 21, 21, 71, 71, 71, 72, 72, 72, 72, 73, 73, 73, 24, 25, 27, 28, 28, 29,
            29, 30, 32, 35, 36, 37, 38, 39, 40, 41, 43, 44, 45, 47, 48, 48, 49, 49, 50, 50,
            50, 51, 51, 51, 51, 54, 55, 1, 2, 58, 59, 3, 61, 62, 63, 65, 66, 67, 5, 26,
            31, 33, 42, 46, 56, 57, 60, 15, 16, 17, 18, 52, 75, 75, 79, 80, 58, 59, 3, 3,
            78, 78, 89, 90, 75, 75, 3, 3, 78, 78, 91, 92, 82, 87, 71, 72, 74, 77, 52
        ]
        hasDest = [
            74, 76, 75, 77, 1, 3, 2, 5, 24, 25, 26, 27, 15, 29, 30, 31, 33, 34, 35, 36,
            37, 38, 39, 40, 41, 42, 43, 16, 28, 44, 32, 45, 46, 47, 17, 49, 50, 51, 52, 53,
            20, 54, 55, 21, 1, 56, 2, 57, 58, 59, 3, 60, 61, 4, 22, 62, 63, 64, 23, 18,
            48, 65, 66, 67, 68, 69, 70, 5, 19, 1, 56, 2, 57, 58, 59, 3, 60, 61, 4, 22,
            62, 63, 64, 23, 27, 26, 24, 47, 46, 32, 44, 43, 42, 39, 25, 26, 15, 35, 31, 36,
            33, 34, 45, 37, 37, 38, 41, 40, 41, 42, 16, 45, 46, 17, 58, 56, 59, 57, 61, 60,
            52, 64, 62, 54, 53, 55, 21, 56, 57, 3, 3, 60, 4, 63, 64, 68, 69, 70, 19, 27,
            35, 36, 43, 47, 58, 59, 61, 1, 3, 2, 5, 50, 79, 80, 35, 36, 89, 90, 89, 90,
            81, 82, 79, 80, 84, 85, 91, 92, 86, 87, 58, 59, 83, 88, 94, 94, 94, 93, 93
        ]
        hasParamIdx = [ 1, 2, 1, 2, -1, 1, 2, 1, 2, -1, 1, 2, 1, 2 ]
        userAnnotatedFunction = [ True, False, False, False, False ]
        MaxFuncParms = 3

        # Label
        nullCleLabel = 1
        PURPLE = 2
        ORANGE = 3
        XDLINKAGE_GET_A = 4
        TAG_RESPONSE_GET_A = 5
        orangeDFLT = 6
        purpleDFLT = 7
        self.taints = [ (52, PURPLE), (71, ORANGE), (72, PURPLE), (74, XDLINKAGE_GET_A) ]

        # Derived / Exposed

        self.VarNode_s = VarNode_s
        self.VarNode_e = VarNode_e
        self.FunctionEntry_s = FunctionEntry_s
        self.FunctionEntry_e = FunctionEntry_e
        self.Param_ActualIn_s = Param_ActualIn_s
        self.Param_ActualIn_e = Param_ActualIn_e
        self.Param_ActualOut_s = Param_ActualOut_s
        self.Param_ActualOut_e = Param_ActualOut_e
        self.Annotation_s = Annotation_s
        self.Annotation_e = Annotation_e
        self.MaxFuncParms = MaxFuncParms

        self.hasFunction = hasFunction
        self.hasSource = hasSource
        self.hasDest = hasDest
        self.hasParamIdx = hasParamIdx
        self.userAnnotatedFunction = userAnnotatedFunction

        DataDepEdge_DefUse = list(range(DataDepEdge_DefUse_s, DataDepEdge_DefUse_e + 1))
        DataDepEdge_RAW    = list(range(DataDepEdge_RAW_s, DataDepEdge_RAW_e + 1))
        DataDepEdge_Alias  = list(range(DataDepEdge_Alias_s, DataDepEdge_Alias_e + 1))
        DataDepEdge        = list(range(DataDepEdge_s, DataDepEdge_e + 1))
        Parameter_In       = list(range(Parameter_In_s, Parameter_In_e + 1))
        Parameter_Out      = list(range(Parameter_Out_s, Parameter_Out_e + 1))
        ControlDep_Entry   = list(range(ControlDep_Entry_s, ControlDep_Entry_e + 1))
        ControlDep_Br      = list(range(ControlDep_Br_s, ControlDep_Br_e + 1))
        ControlDep_Other   = list(range(ControlDep_Other_s, ControlDep_Other_e + 1))

        self.VarNode            = list(range(self.VarNode_s, self.VarNode_e + 1))
        self.FunctionEntry      = list(range(self.FunctionEntry_s, self.FunctionEntry_e + 1))
        self.Annotation         = list(range(self.Annotation_s, self.Annotation_e + 1))
        self.Inst               = list(range(Inst_s, Inst_e + 1))
        self.Param              = list(range(Param_s, Param_e + 1))
        self.PDGNode            = list(range(PDGNode_s, PDGNode_e + 1))
        self.PDGEdge            = list(range(PDGEdge_s, PDGEdge_e + 1))
        self.ControlDep_CallInv = list(range(ControlDep_CallInv_s, ControlDep_CallInv_e + 1))
        self.DataDepEdge_Ret    = list(range(DataDepEdge_Ret_s, DataDepEdge_Ret_e + 1))
        self.Parameter          = list(range(Parameter_s, Parameter_e + 1))
        self.ControlDep_NonCall = ControlDep_Entry + ControlDep_Br + ControlDep_Other
        self.DataEdgeNoRet      = DataDepEdge_DefUse + DataDepEdge_RAW + DataDepEdge_Alias
        self.ParameterInOut     = Parameter_In + Parameter_Out
        self.DataEdgeParam      = DataDepEdge + self.Parameter
        self.DataEdgeNoRetParam = self.DataEdgeNoRet + self.Parameter
        self.NonAnnotation      = self.Inst + self.VarNode + self.FunctionEntry + self.Param
