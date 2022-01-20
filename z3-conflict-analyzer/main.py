from argparse import ArgumentParser
from itertools import count
from numpy import prod
from z3 import *

import ConflictAnalyzer
import PDG
import CLE

# TODO
E = {
    'constraint_name': lambda a, b: 'explanation involving a and b'
}

# TODO
def arrayToUif(name, arr, sort, add, dim=[1]):
    d = len(dim)
    args = [name] + [IntSort()] * d + [sort]
    f = Function(*args)
    def idxOf(r):
        final = []
        for i in range(d):
            x = int(prod(dim[(i+1):]))
            q, r = divmod(r, x)
            if r == 0:
                q -= 1
                r = x
            final.append(q + 1)
        return final

    add([f(*idxOf(i)) == v for (i, v) in zip(count(1), arr)])
    return f

def mkConstraints(pdg, cle):

    cs = []
    add = lambda c: cs.append((c, None))

    id = IntSort()
    b = BoolSort()

    nodeEnclave = Function('nodeEnclave', id, id)
    nodeLevel   = Function('nodeLevel', id, id)
    taint       = Function('taint', id, id)
    ftaint      = Function('ftaint', id, id)
    esEnclave   = Function('esEnclave', id, id)
    edEnclave   = Function('edEnclave', id, id)
    esTaint     = Function('esTaint', id, id)
    edTaint     = Function('edTaint', id, id)
    esFunTaint  = Function('esFunTaint', id, id)
    edFunTaint  = Function('edFunTaint', id, id)
    esFunCdf    = Function('esFunCdf', id, id)
    edFunCdf    = Function('edFunCdf', id, id)
    xdedge      = Function('xdedge', id, b)
    tcedge      = Function('tcedge', id, b)
    coerced     = Function('coerced', id, b)

    add([taint(n) == l for (n, l) in pdg.taints])

    hasLabelLevel = arrayToUif('hasLabelLevel', cle.hasLabelLevel, id, add)
    isFunctionAnnotation = arrayToUif('isFunctionAnnotation', cle.isFunctionAnnotation, b, add)
    hasGuardOperation = arrayToUif('hasGuardOperation', cle.hasGuardOperation, id, add)
    hasEnclaveLevel = arrayToUif('hasEnclaveLevel', cle.hasEnclaveLevel, id, add)

    cdfForRemoteLevel = arrayToUif('cdfForRemoteLevel', cle.cdfForRemoteLevel, id, add, [cle.nLabels, cle.nLevels])
    hasRettaints = arrayToUif('hasRettaints', cle.hasRettaints, b, add, [cle.nFCdfs, cle.nLabels])
    hasCodtaints = arrayToUif('hasCodtaints', cle.hasCodtaints, b, add, [cle.nFCdfs, cle.nLabels])
    hasARCtaints = arrayToUif('hasARCtaints', cle.hasARCtaints, b, add, [cle.nFCdfs, cle.nLabels])
    hasArgtaints = arrayToUif('hasArgtaints', cle.hasArgtaints, b, add, [cle.nFCdfs, pdg.MaxFuncParms, cle.nLabels])

    hasFunction = arrayToUif('hasFunction', pdg.hasFunction, id, add)
    hasSource = arrayToUif('hasSource', pdg.hasSource, id, add)
    hasDest = arrayToUif('hasDest', pdg.hasDest, id, add)
    hasParamIdx = arrayToUif('hasParamIdx', pdg.hasParamIdx, id, add)
    userAnnotatedFunction = arrayToUif('userAnnotatedFunction', pdg.userAnnotatedFunction, b, add)

    inr = lambda s, e: lambda n: And(n >= s, n <= e)
    isVarNode         = inr(pdg.VarNode_s,         pdg.VarNode_e)
    isFunctionEntry   = inr(pdg.FunctionEntry_s,   pdg.FunctionEntry_e)
    isAnnotation      = inr(pdg.Annotation_s,      pdg.Annotation_e)
    isParam_ActualIn  = inr(pdg.Param_ActualIn_s,  pdg.Param_ActualIn_e)
    isParam_ActualOut = inr(pdg.Param_ActualOut_s, pdg.Param_ActualOut_e)
    allowOrRedact = lambda c: Or(hasGuardOperation(c) == cle.allow, hasGuardOperation(c) == cle.redact)
    sourceAnnotFun = lambda e: If(
        hasFunction(hasSource(e)) != 0,
        userAnnotatedFunction(hasFunction(hasSource(e))),
        False
    )
    destAnnotFun = lambda e: If(
        hasFunction(hasDest(e)) != 0,
        userAnnotatedFunction(hasFunction(hasDest(e))),
        False
    )
    isInArctaint = lambda fan, tnt, lvl: If(
        isFunctionAnnotation(fan),
        hasARCtaints(cdfForRemoteLevel(fan, lvl), tnt),
        False
    )

    cs = []
    add = lambda c: cs.append((c, None))

    for n in pdg.VarNode:
        add(nodeEnclave(n) != cle.nullEnclave) # VarNodeHasEnclave

    for n in pdg.FunctionEntry:
        add(nodeEnclave(n) != cle.nullEnclave) # FunctionHasEnclave
        add(Implies(isFunctionAnnotation(taint(n)), userAnnotatedFunction(n))) # FnAnnotationByUserOnly

    for n in pdg.Inst:
        add(nodeEnclave(n) == nodeEnclave(hasFunction(n))) # InstHasEnclave

    for n in pdg.Param:
        add(nodeEnclave(n) == nodeEnclave(hasFunction(n))) # ParamHasEnclave

    for n in pdg.Annotation:
        add(nodeEnclave(n) == cle.nullEnclave) # AnnotationHasNoEnclave

    for n in pdg.NonAnnotation:
        add(nodeLevel(n) == hasLabelLevel(taint(n))) # NodeLevelAtTaintLevel
        add(nodeLevel(n) == hasEnclaveLevel(nodeEnclave(n))) # NodeLevelAtEnclaveLevel
        add(Implies(isFunctionAnnotation(taint(n)), isFunctionEntry(n))) # FnAnnotationForFnOnly
        add(Implies(hasFunction(n) != 0,
            Implies(userAnnotatedFunction(hasFunction(n)) == False,
                    taint(n) == ftaint(n)))) # UnannotatedFunContentTaintMatch
        add(Implies(And(hasFunction(n) != 0, isFunctionEntry(n) == False),
            Implies(userAnnotatedFunction(hasFunction(n)),
                    isInArctaint(ftaint(n), taint(n), hasLabelLevel(taint(n)))))) # AnnotatedFunContentCoercible

    for n in pdg.PDGNode:
        add(ftaint(n) == If(hasFunction(n) != 0, taint(hasFunction(n)), cle.nullCleLabel)) # MyFunctionTaint

    for e in pdg.PDGEdge:
        add(esEnclave(e) == nodeEnclave(hasSource(e))) # EdgeSourceEnclave
        add(edEnclave(e) == nodeEnclave(hasDest(e))) # EdgeDestEnclave
        add(xdedge(e) == (esEnclave(e) != edEnclave(e))) # EdgeInEnclaveCut
        add(esTaint(e) == taint(hasSource(e))) # EdgeSourceTaint
        add(edTaint(e) == taint(hasDest(e))) # EdgeDestTaint
        add(tcedge(e) == (esTaint(e) != edTaint(e))) # EdgeTaintMismatch
        add(esFunTaint(e) == If(sourceAnnotFun(e), hasFunction(hasSource(e)), cle.nullCleLabel)) # SourceFunctionAnnotation
        add(edFunTaint(e) == If(destAnnotFun(e), hasFunction(hasDest(e)), cle.nullCleLabel)) # DestFunctionAnnotation
        add(esFunCdf(e) == If(sourceAnnotFun(e),
            cdfForRemoteLevel(esFunTaint(e), hasLabelLevel(edTaint(e))), cle.nullCdf)) # SourceCdfForDestLevel
        add(edFunCdf(e) == If(destAnnotFun(e),
            cdfForRemoteLevel(edFunTaint(e), hasLabelLevel(esTaint(e))), cle.nullCdf)) # DestCdfForSourceLevel

    for e in pdg.ControlDep_NonCall:
        add(Implies(isAnnotation(hasDest(e)) == False, xdedge(e) == False)) # NonCallControlEnclaveSafe

    for e in pdg.ControlDep_CallInv:
        add(Implies(xdedge(e), userAnnotatedFunction(hasDest(e)))) # XDCallBlest
        add(Implies(xdedge(e), allowOrRedact(cdfForRemoteLevel(edTaint(e), hasLabelLevel(esTaint(e)))))) # XDCallAllowed

    for e in pdg.DataEdgeNoRet:
        add(xdedge(e) == False) # NonRetNonParmDataEnclaveSafe

    for e in pdg.DataDepEdge_Ret:
        add(Implies(xdedge(e), allowOrRedact(cdfForRemoteLevel(esTaint(e), hasLabelLevel(edTaint(e)))))) # XDCDataReturnAllowed
        add(coerced(e) == If(sourceAnnotFun(e), hasRettaints(esFunCdf(e), edTaint(e)), False)) # ReturnTaintCoerced

    for e in pdg.Parameter:
        add(Implies(xdedge(e), allowOrRedact(cdfForRemoteLevel(esTaint(e), hasLabelLevel(edTaint(e)))))) # XDCParmAllowed

    for e in pdg.DataEdgeParam:
        add(Implies(And(tcedge(e), xdedge(e) == False), coerced(e))) # TaintsSafeOrCoerced

    for e in pdg.DataEdgeNoRetParam:
        add(coerced(e) == If(Or(And(hasFunction(hasSource(e)) != 0, hasFunction(hasSource(e)) == hasFunction(hasDest(e))),
                                And(isVarNode(hasDest(e)), hasFunction(hasSource(e)) != 0)),
                             And(isInArctaint(esFunTaint(e), edTaint(e), hasLabelLevel(edTaint(e))),
                                 isInArctaint(esFunTaint(e), esTaint(e), hasLabelLevel(esTaint(e)))),
                             If(And(isVarNode(hasSource(e)), hasFunction(hasDest(e)) != 0),
                                And(isInArctaint(edFunTaint(e), esTaint(e), hasLabelLevel(esTaint(e))),
                                    isInArctaint(edFunTaint(e), edTaint(e), hasLabelLevel(edTaint(e)))),
                                False))) # DataTaintCoerced

    for e in pdg.ParameterInOut:
        add(If(And([destAnnotFun(e), isParam_ActualIn(hasDest(e)), hasParamIdx(hasDest(e)) > 0]),
               coerced(e) == hasArgtaints(edFunCdf(e), hasParamIdx(hasDest(e)), esTaint(e)),
               If(And([sourceAnnotFun(e), isParam_ActualOut(hasSource(e)), hasParamIdx(hasSource(e)) > 0]),
                  coerced(e) == hasArgtaints(esFunCdf(e), hasParamIdx(hasSource(e)), edTaint(e)),
                  True))) # ArgumentTaintCoerced

    objective = Int('objective')
    add(objective == Sum([If(xdedge(e), 1, 0) for e in pdg.ControlDep_CallInv]))

    return objective, cs

# TODO: dump solved model to file
def writeModel(m):
    # rl = m.evaluate(self.remotelevel(c.id)).as_long()
    pass

def getArgs():
    # h1 = 'path to directory containing dotfiles'
    # h2 = 'path to cle json file'
    d = 'Solve enclave assignments for annotated, refactored code'
    parser = ArgumentParser(description=d)
    # parser.add_argument('pdg', metavar='pdg-dir', type=str, help=h1)
    # parser.add_argument('cle', metavar='cle-json', type=str, help=h2)
    return parser.parse_args()

def main():

    # Parse args
    args = getArgs()

    # Read cle JSON from json file
    # print("reading CLE json...")
    cle = CLE.CLE()

    # Build pdg from dotfiles
    # print("reading PDG from dot files...")
    pdg = PDG.PDG()

    # Encode constraints
    print("encoding...")
    s = ConflictAnalyzer.ConflictAnalyzer()
    objective, constraints = mkConstraints(pdg, cle)
    for (c, e) in constraints:
        if e: s.add(c, e)
        else: s.assume(c)
    s.minimize(objective)

    # Write constraints
    with open('constraints.smt2', 'w') as out:
        s2 = ConflictAnalyzer.ConflictAnalyzer()
        s2.assume(list(s.s.assertions()) + s.constraints)
        out.write(s2.s.sexpr())

    # Solve
    print("solving...")
    res, model = s.solve()

    # Write results
    print(str(res))
    print("see 'constraints.smt2' for input to z3")
    if res != sat:
        writeModel(model)
        print("see 'model.txt' for solution")
    else:
        s.explain()

if __name__ == '__main__':
    main()
