from z3 import *
from examples.secdesk.pdg import *

class PDG:

    def __init__(self):

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
