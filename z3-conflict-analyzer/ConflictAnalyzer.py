from itertools import count, islice
from numpy import prod
from z3 import *
from time import time

class ConflictAnalyzer:

    def __init__(self):

        self.s = Optimize()
        self.constraints = []
        self.explanations = {}
        self.status = 'UNSOLVED'

    def assume(self, constraint):
        self.s.add(constraint)

    def add(self, constraint, ex):
        self.constraints.append(constraint)
        self.explanations[constraint] = ex if ex else str(constraint)

    def solve(self):
        self.status = self.s.check(self.constraints)
        return self.status

    def evidence(self, handle):
        if self.status != sat:
            return "No evidence for '{}' status".format(str(self.status))
        handle.write(str(self.s.model()))
        # TODO: expected output format

    def explain(self, handle):
        if self.status != unsat:
            return "Cannot explain '{}' status".format(str(self.status))
        core = self.s.unsat_core()
        handle.write('\n'.join([self.explanations[fml] for fml in core]))
        # TODO: tie explanations to code

    def encode(self, pdg, cle):

        t_start = time()
        print("setup...")

        cs = []
        add = lambda c: self.assume(c)

        id = IntSort()
        b = BoolSort()

        nodeEnclave = Function('nodeEnclave', id, cle.Enclave)
        nodeLevel   = Function('nodeLevel', id, cle.Level)
        taint       = Function('taint', id, cle.Label)
        xdedge      = Function('xdedge', id, b)
        coerced     = Function('coerced', id, b)

        for (n, l) in cle.taints: add(taint(n) == l)
        biggest = max([len(pdg.hasFunction), len(pdg.hasSource), len(pdg.hasDest)])
        nums = list(islice(count(1), biggest + 1))
        def arrayToUif(name, arr, args_cons, sort, add, dim=None):
            print("make uif: {}, {} entries...".format(name, str(len(arr))))
            if not dim: dim = [len(arr)]
            d = len(dim)
            if len(arr) != prod(dim):
                print("WARNING: input array dimensions do not match array type: " + name)
            args = [name] + [ac[0] for ac in args_cons] + [sort]
            f = Function(*args)
            def idxOf(r):
                final = []
                for i in range(d):
                    cons = args_cons[i][1]
                    x = int(prod(dim[(i+1):]))
                    q, r = divmod(r, x)
                    if r == 0:
                        q -= 1
                        r = x
                    final.append(cons[q])
                return final

            for (i, v) in zip(count(1), arr): add(f(*idxOf(i)) == v)
            return f

        hasFunction = lambda n: pdg.hasFunction[n - pdg.PDGNode[0]]
        hasSource = lambda e: pdg.hasSource[e - pdg.PDGEdge[0]]
        hasDest = lambda e: pdg.hasDest[e - pdg.PDGEdge[0]]
        hasParamIdx = lambda n: pdg.hasParamIdx[n - pdg.Param[0]]
        userAnnotatedFunction = lambda n: pdg.userAnnotatedFunction[n - pdg.FunctionEntry[0]]

        hasLabelLevel = arrayToUif('hasLabelLevel', cle.hasLabelLevel, 
            [(cle.Label, cle.LabelCons)], cle.Level, add)
        isFunctionAnnotation = arrayToUif('isFunctionAnnotation', cle.isFunctionAnnotation, 
            [(cle.Label, cle.LabelCons)], b, add)
        hasGuardOperation = arrayToUif('hasGuardOperation', cle.hasGuardOperation, 
            [(cle.Cdf, cle.CdfCons)], cle.GuardOperation, add)
        hasEnclaveLevel = arrayToUif('hasEnclaveLevel', cle.hasEnclaveLevel, 
            [(cle.Enclave, cle.EnclaveCons)], cle.Level, add)
        cdfForRemoteLevel = arrayToUif('cdfForRemoteLevel', cle.cdfForRemoteLevel, 
            [(cle.Label, cle.LabelCons), (cle.Level, cle.LevelCons)], cle.Cdf, add, [cle.nLabels, cle.nLevels])
        hasRettaints = arrayToUif('hasRettaints', cle.hasRettaints, 
            [(cle.Cdf, cle.CdfCons), (cle.Label, cle.LabelCons)], b, add, [cle.nCdfs, cle.nLabels])
        hasARCtaints = arrayToUif('hasARCtaints', cle.hasARCtaints, 
            [(cle.Cdf, cle.CdfCons), (cle.Label, cle.LabelCons)], b, add, [cle.nCdfs, cle.nLabels])
        hasArgtaints = arrayToUif('hasArgtaints', cle.hasArgtaints, 
            [(cle.Cdf, cle.CdfCons), (id, nums), (cle.Label, cle.LabelCons)], b, add, [cle.nCdfs, pdg.MaxFuncParms, cle.nLabels])

        inr = lambda s, e: lambda n: n >= s and n <= e
        isVarNode         = inr(pdg.VarNode_s,         pdg.VarNode_e)
        isFunctionEntry   = inr(pdg.FunctionEntry_s,   pdg.FunctionEntry_e)
        isAnnotation      = inr(pdg.Annotation_s,      pdg.Annotation_e)
        isParam_ActualIn  = inr(pdg.Param_ActualIn_s,  pdg.Param_ActualIn_e)
        isParam_ActualOut = inr(pdg.Param_ActualOut_s, pdg.Param_ActualOut_e)
        allowOrRedact = lambda c: Or(hasGuardOperation(c) == cle.allow, hasGuardOperation(c) == cle.redact)
        sourceAnnotFun = lambda e: userAnnotatedFunction(hasFunction(hasSource(e))) if hasFunction(hasSource(e)) != 0 else False
        destAnnotFun = lambda e: userAnnotatedFunction(hasFunction(hasDest(e))) if hasFunction(hasDest(e)) != 0 else False
        isInArctaint = lambda fan, tnt, lvl: If(
            isFunctionAnnotation(fan),
            hasARCtaints(cdfForRemoteLevel(fan, lvl), tnt),
            False
        )

        print(time() - t_start)
        print("{} constraint on {} entries...".format('DataTaintCoerced', len(pdg.DataEdgeNoRetParam)))
        for e in pdg.DataEdgeNoRetParam:
            if sourceAnnotFun(e) and ((hasFunction(hasSource(e)) != 0 and hasFunction(hasSource(e)) == hasFunction(hasDest(e))) or (isVarNode(hasDest(e)) and hasFunction(hasSource(e)) != 0)):
                add(coerced(e) == And(isInArctaint(taint(hasFunction(hasSource(e))), taint(hasDest(e)), hasLabelLevel(taint(hasDest(e)))),
                                      isInArctaint(taint(hasFunction(hasSource(e))), taint(hasSource(e)), hasLabelLevel(taint(hasSource(e))))))
            elif destAnnotFun(e) and isVarNode(hasSource(e)) and hasFunction(hasDest(e)) != 0:
                add(coerced(e) == And(isInArctaint(taint(hasFunction(hasDest(e))), taint(hasSource(e)), hasLabelLevel(taint(hasSource(e)))),
                                      isInArctaint(taint(hasFunction(hasDest(e))), taint(hasDest(e)), hasLabelLevel(taint(hasDest(e))))))
            else:
                add(coerced(e) == False) # DataTaintCoerced

        print(time() - t_start)
        print("{} constraint on {} entries...".format('VarNodeHasEnclave', len(pdg.VarNode)))
        for n in pdg.VarNode:
            add(nodeEnclave(n) != cle.nullEnclave) # VarNodeHasEnclave

        print(time() - t_start)
        print("{} constraint on {} entries...".format('FunctionHasEnclave', len(pdg.FunctionEntry)))
        for n in pdg.FunctionEntry:
            add(nodeEnclave(n) != cle.nullEnclave) # FunctionHasEnclave
            add(Implies(isFunctionAnnotation(taint(n)), userAnnotatedFunction(n))) # FnAnnotationByUserOnly

        print(time() - t_start)
        print("{} constraint on {} entries...".format('InstHasEnclave', len(pdg.Inst)))
        for n in pdg.Inst:
            add(nodeEnclave(n) == nodeEnclave(hasFunction(n))) # InstHasEnclave

        print(time() - t_start)
        print("{} constraint on {} entries...".format('ParamHasEnclave', len(pdg.Param)))
        for n in pdg.Param:
            add(nodeEnclave(n) == nodeEnclave(hasFunction(n))) # ParamHasEnclave

        print(time() - t_start)
        print("{} constraint on {} entries...".format('AnnotationHasNoEnclave', len(pdg.Annotation)))
        for n in pdg.Annotation:
            add(nodeEnclave(n) == cle.nullEnclave) # AnnotationHasNoEnclave

        print(time() - t_start)
        print("{} constraint on {} entries...".format('NodeLevelAtTaintLevel', len(pdg.NonAnnotation)))
        for n in pdg.NonAnnotation:
            add(nodeLevel(n) == hasLabelLevel(taint(n))) # NodeLevelAtTaintLevel
            add(nodeLevel(n) == hasEnclaveLevel(nodeEnclave(n))) # NodeLevelAtEnclaveLevel
            add(Implies(isFunctionAnnotation(taint(n)), isFunctionEntry(n))) # FnAnnotationForFnOnly
            if hasFunction(n) != 0:
                if not userAnnotatedFunction(hasFunction(n)):
                    add(taint(n) == taint(hasFunction(n))) # UnannotatedFunContentTaintMatch
                if not isFunctionEntry(n) and userAnnotatedFunction(hasFunction(n)):
                    add(isInArctaint(taint(hasFunction(n)), taint(n), hasLabelLevel(taint(n)))) # AnnotatedFunContentCoercible

        print(time() - t_start)
        print("{} constraint on {} entries...".format('EdgeSourceEnclave', len(pdg.PDGEdge)))
        for e in pdg.PDGEdge:
            add(xdedge(e) == (nodeEnclave(hasSource(e)) != nodeEnclave(hasDest(e)))) # EdgeInEnclaveCut

        print(time() - t_start)
        print("{} constraint on {} entries...".format('NonCallControlEnclaveSafe', len(pdg.ControlDep_NonCall)))
        for e in pdg.ControlDep_NonCall:
            if not isAnnotation(hasDest(e)):
                add(xdedge(e) == False) # NonCallControlEnclaveSafe

        print(time() - t_start)
        print("{} constraint on {} entries...".format('XDCallBlest', len(pdg.ControlDep_CallInv)))
        for e in pdg.ControlDep_CallInv:
            add(Implies(xdedge(e), userAnnotatedFunction(hasDest(e)))) # XDCallBlest
            add(Implies(xdedge(e), allowOrRedact(cdfForRemoteLevel(taint(hasDest(e)), hasLabelLevel(taint(hasSource(e))))))) # XDCallAllowed

        print(time() - t_start)
        print("{} constraint on {} entries...".format('NonRetNonParmDataEnclaveSafe', len(pdg.DataEdgeNoRet)))
        for e in pdg.DataEdgeNoRet:
            add(xdedge(e) == False) # NonRetNonParmDataEnclaveSafe

        print(time() - t_start)
        print("{} constraint on {} entries...".format('ReturnTaintCoerced', len(pdg.DataDepEdge_Ret)))
        for e in pdg.DataDepEdge_Ret:
            add(Implies(xdedge(e), allowOrRedact(cdfForRemoteLevel(taint(hasSource(e)), hasLabelLevel(taint(hasDest(e))))))) # XDCDataReturnAllowed
            if sourceAnnotFun(e):
                add(coerced(e) == hasRettaints(cdfForRemoteLevel(taint(hasFunction(hasSource(e))), hasLabelLevel(taint(hasDest(e)))), taint(hasDest(e))))
            else:
                add(coerced(e) == False) # ReturnTaintCoerced

        print(time() - t_start)
        print("{} constraint on {} entries...".format('XDCParmAllowed', len(pdg.Parameter)))
        for e in pdg.Parameter:
            add(Implies(xdedge(e), allowOrRedact(cdfForRemoteLevel(taint(hasSource(e)), hasLabelLevel(taint(hasDest(e))))))) # XDCParmAllowed

        print(time() - t_start)
        print("{} constraint on {} entries...".format('TaintsSafeOrCoerced', len(pdg.DataEdgeParam)))
        for e in pdg.DataEdgeParam:
            add(Implies(And(taint(hasSource(e)) != taint(hasDest(e)), xdedge(e) == False), coerced(e))) # TaintsSafeOrCoerced

        print(time() - t_start)
        print("{} constraint on {} entries...".format('ArgumentTaintCoerced', len(pdg.ParameterInOut)))
        for e in pdg.ParameterInOut:
            if destAnnotFun(e) and isParam_ActualIn(hasDest(e)) and hasParamIdx(hasDest(e)) > 0:
                add(coerced(e) == hasArgtaints(cdfForRemoteLevel(taint(hasFunction(hasDest(e))), hasLabelLevel(taint(hasSource(e)))), hasParamIdx(hasDest(e)), taint(hasSource(e))))
            elif sourceAnnotFun(e) and isParam_ActualOut(hasSource(e)) and hasParamIdx(hasSource(e)) > 0:
                add(coerced(e) == hasArgtaints(cdfForRemoteLevel(taint(hasFunction(hasSource(e))), hasLabelLevel(taint(hasDest(e)))), hasParamIdx(hasSource(e)), taint(hasDest(e))))
            # ArgumentTaintCoerced

        print(time() - t_start)
        print("Encoding objective to minimize...")
        objective = Int('objective')
        add(objective == Sum([If(xdedge(e), 1, 0) for e in pdg.ControlDep_CallInv]))
        self.s.minimize(objective)

        print(time() - t_start)