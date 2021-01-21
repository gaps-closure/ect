from argparse import ArgumentParser
import json

import FlowModel
import Explanations as E
from z3 import *

class FlowSolver:

    def __init__(self, model):

        self.s = Solver()
        self.s.set(':core.minimize', True)
        self.m = model
        self.status = "unsolved"
        self.constraints = []
        self.explanations = {}


        self.initDomain()
        self.encodeModel()
        self.encodeConstraints()

    def assume(self, constraint):
        self.s.add(constraint)

    def add(self, constraint, ex):
        self.constraints.append(constraint)
        self.explanations[constraint] = ex

    def validate(self):

        cs = Solver()
        res = cs.check(list(self.s.assertions()) + self.constraints)
        if res != sat:
            core = cs.unsat_core()
            msg = ("Provided specification is 'unsat' when encoded as is, with "
                + "no constraints on assignments. Unsat core:\n\n " + str(core))
            print("error: " + msg)
            exit(1)

    def solve(self):
        self.status = self.s.check(self.constraints)
        if self.status == sat:
            m = self.s.model()
            accs = [self.lvl, self.msg, self.label, self.local, self.remote, self.allowed]
            self.m.populate(m, *accs)

    def explain(self):
        if self.status != unsat:
            return "Cannot explain '{}' status".format(str(self.status))

        # Explain result using unsat core
        core = self.s.unsat_core()
        e = 'Reason for unsatisfiability:\n\n'
        e += '\n'.join([self.explanations[fml] for fml in core])
        return e

    def initDomain(self):

        # Sorts
        id      = IntSort()
        index   = IntSort()
        size    = IntSort()
        color   = StringSort()
        message = StringSort()
        bool    = BoolSort()

        # Relations
        self.inflows    = Function('inflows', id, index, id)
        self.outflows   = Function('outflows', id, index, id)
        self.argtaints  = Function('argtaints', id, index, id)
        self.nInflows   = Function('nInflows', id, size)
        self.nOutflows  = Function('nOutflows', id, size)
        self.nArgtaints = Function('nArgtaints', id, size)
        self.lvl        = Function('lvl', id, color)

        self.msg   = Function('msg', id, message)
        self.label = Function('label', id, id)

        self.local  = Function('local', id, color)
        self.remote = Function('remote', id, color)

        self.allowed = Function('allowed', message, color, color, bool)

    def encodeModel(self):

        for c in self.m.components:
            def addList(fxn, xs, exFxn):
                for i in range(len(xs)):
                    self.add(fxn(c.id, i) == xs[i].id, exFxn(c, i))
            if c.inflows != None:
                addList(self.inflows, c.inflows, E.inflowIndex)
                self.add(self.nInflows(c.id) == len(c.inflows), E.nInflows(c))
            if c.outflows != None:
                addList(self.outflows, c.outflows, E.outflowIndex)
                self.add(self.nOutflows(c.id) == len(c.outflows), E.nOutflows(c))
            if c.argtaints != None:
                addList(self.argtaints, c.argtaints, E.taintIndex)
                self.add(self.nArgtaints(c.id) == len(c.argtaints), E.nTaints(c))
            if c.lvl:
                self.add(self.lvl(c.id) == StringVal(c.lvl), E.componentLvl(c))

        for f in self.m.flows:
            if f.msg != None:
                self.add(self.msg(f.id) == StringVal(f.msg), E.flowMsg(f))
            if f.label != None:
                self.add(self.label(f.id) == f.label.id, E.flowLabel(f))

        for fl in self.m.labels:
            if fl.local:
                self.add(self.local(fl.id) == StringVal(fl.local), E.labelLocal(fl))
            if fl.remote:
                self.add(self.remote(fl.id) == StringVal(fl.remote), E.labelRemote(fl))

    def encodeConstraints(self):

        # Helpers for identifying valid ids and strings in z3
        f, c, l, i  = Ints('f c l i')
        m, c1, c2   = Strings('m c1 c2')
        is_id_of    = lambda x, s: Or([x == t.id for t in s])
        is_comp     = lambda x: is_id_of(x, self.m.components)
        is_flow     = lambda x: is_id_of(x, self.m.flows)
        is_label    = lambda x: is_id_of(x, self.m.labels)
        in_bounds   = lambda c, i, fn: And([is_comp(c), i >= 0, i < fn(c)])
        is_inflow   = lambda c, i: in_bounds(c, i, self.nInflows)
        is_outflow  = lambda c, i: in_bounds(c, i, self.nOutflows)
        is_argtaint = lambda c, i: in_bounds(c, i, self.nArgtaints)
        is_color    = lambda x: Or([x == StringVal('orange'),
                                     x == StringVal('green')])
        all_msgs    = { f.msg for f in self.m.flows }
        is_message  = lambda x: Or([x == StringVal(m) for m in all_msgs])
        is_msg_flow = lambda f, m, g, o: And([is_flow(f),
                                              self.local(self.label(f)) == g,
                                              self.remote(self.label(f)) == o,
                                              self.msg(f) == m])

        # Restrict functions to valid inputs and outputs
        self.assume(ForAll([c, i], Implies(is_inflow(c, i),
                                           is_flow(self.inflows(c, i)))))
        self.assume(ForAll([c, i], Implies(is_outflow(c, i),
                                           is_flow(self.outflows(c, i)))))
        self.assume(ForAll([c, i], Implies(is_argtaint(c, i),
                                           is_label(self.argtaints(c, i)))))
        self.assume(ForAll(c, Implies(is_comp(c), is_color(self.lvl(c)))))

        self.assume(ForAll(f, Implies(is_flow(f), is_message(self.msg(f)))))
        self.assume(ForAll(f, Implies(is_flow(f), is_label(self.label(f)))))

        self.assume(ForAll(l, Implies(is_label(l), is_color(self.local(l)))))
        self.assume(ForAll(l, Implies(is_label(l), is_color(self.remote(l)))))

        self.assume(ForAll([m, c1, c2], self.allowed(m, c1, c2) == And([
                    is_message(m), is_color(c1), is_color(c2),
                    Exists(f, is_msg_flow(f, m, c1, c2))])))

        self.validate()

        # Add constraints
        oc = lambda f, c, i : Implies(And([is_outflow(c, i),
                                           self.outflows(c, i) == f]),
                                      self.lvl(c) == self.local(self.label(f)))
        ic = lambda f, c, i : Implies(And([is_inflow(c, i),
                                           self.inflows(c, i) == f]),
                                      self.lvl(c) == self.remote(self.label(f)))
        for f in self.m.flows:
            self.add(ForAll([c, i], oc(f.id, c, i)), E.outflowLevel(f))
            self.add(ForAll([c, i], ic(f.id, c, i)), E.inflowLevel(f))

def getArgs():
    h1 = 'filepath for application design spec'
    h2 = 'filepath for cross-domain message policy'
    parser = ArgumentParser(description='Verify a GAPS-CLOSURE design spec.')
    parser.add_argument('--cdf', metavar='cdf.json', type=str, help=h2)
    parser.add_argument('spec', metavar='spec.json', type=str, help=h1)
    return parser.parse_args()

def main():

    # Parse args
    args = getArgs()

    # Read JSON spec
    print("parsing...")
    with open(args.spec) as fp:
        spec = json.load(fp)

    # Encode spec
    print("encoding...")
    m = FlowModel.fromSpec(spec)
    fs = FlowSolver(m)

    # Write constraints
    with open('constraints.smt2', 'w') as fp:
        cs = Solver()
        cs.add(list(fs.s.assertions()) + fs.constraints)
        fp.write(cs.sexpr())

    # Solve
    print("solving...")
    fs.solve()

    # Write results
    with open('results.txt', 'w') as fp:
        fp.write(str(fs.status) + '\n\n')
        if fs.status == sat: fp.write(str(fs.m))
        else:                fp.write(fs.explain())
    print("done, check constraints.smt2 for problem, results.txt for solution")

if __name__ == '__main__':
    main()
