from argparse import ArgumentParser
import json

import FlowModel
import Explanations as E
from z3 import *

class FlowSolver:

    def __init__(self, model):

        self.s = Solver()
        # self.s.set(':core.minimize', True)
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

    def solve(self):
        self.status = self.s.check(self.constraints)
        if self.status != sat:
            return
        solution = self.s.model()

        for c in self.m.components:
            if c.level == None:
                c.level = solution.evaluate(self.level(c.id)).as_long()
            if c.remotelevel == None:
                rl = solution.evaluate(self.remotelevel(c.id)).as_long()
                c.remotelevel = rl

        for f in self.m.flows:
            if f.msg == None:
                f.msg = solution.evaluate(self.msg(f.id)).as_long()
            if f.label == None:
                lid = solution.evaluate(self.label(f.id)).as_long()
                match = [l for l in self.m.labels if l.id == lid]
                f.label = match[0]

        for l in self.m.labels:
            if l.local == None:
                f.local = solution.evaluate(self.local(l.id)).as_long()
            if l.remote == None:
                f.remote = solution.evaluate(self.remote(l.id)).as_long()

        self.m.rules = {}
        for msg in { f.msg for f in self.m.flows }:
            orange = FlowModel.colorToId('orange')
            green = FlowModel.colorToId('green')
            for (c1, c2) in [(orange, green), (green, orange)]:
                if solution.evaluate(self.cdf_allowed(msg, c1, c2)):
                    if msg not in self.m.rules:
                        self.m.rules[msg] = []
                    self.m.rules[msg].append((c1, c2))

    def initDomain(self):

        # Sorts
        id      = IntSort()
        index   = IntSort()
        size    = IntSort()
        color   = IntSort()
        message = IntSort()
        bool    = BoolSort()

        # Relations
        self.inflows     = Function('inflows', id, index, id)
        self.outflows    = Function('outflows', id, index, id)
        self.argtaints   = Function('argtaints', id, index, id)
        self.nInflows    = Function('nInflows', id, size)
        self.nOutflows   = Function('nOutflows', id, size)
        self.nArgtaints  = Function('nArgtaints', id, size)
        self.level       = Function('level', id, color)
        self.remotelevel = Function('remotelevel', id, color)

        self.msg   = Function('msg', id, message)
        self.label = Function('label', id, id)

        self.local  = Function('local', id, color)
        self.remote = Function('remote', id, color)

        self.cdf_allowed = Function('cdf_allowed', message, color, color, bool)

    def encodeModel(self):

        for c in self.m.components:
            def addList(fxn, xs, exFxn):
                for i in range(len(xs)):
                    self.add(fxn(c.id, i) == xs[i].id,
                             exFxn(c, i))
            if c.inflows != None:
                addList(self.inflows, c.inflows, E.inflowIndex)
                self.assume(self.nInflows(c.id) == len(c.inflows))
            if c.outflows != None:
                addList(self.outflows, c.outflows, E.outflowIndex)
                self.assume(self.nOutflows(c.id) == len(c.outflows))
            if c.argtaints != None:
                addList(self.argtaints, c.argtaints, E.taintIndex)
                self.assume(self.nArgtaints(c.id) == len(c.argtaints))
            if c.level != None:
                self.add(self.level(c.id) == c.level,
                         E.componentLvl(c))
            if c.remotelevel != None:
                self.add(self.remotelevel(c.id) == c.remotelevel,
                         E.remoteLvl(c))

        for f in self.m.flows:
            if f.msg != None:
                self.add(self.msg(f.id) == f.msg,
                         E.flowMsg(f))
            if f.label != None:
                self.add(self.label(f.id) == f.label.id,
                         E.flowLabel(f))

        for fl in self.m.labels:
            if fl.local != None:
                self.add(self.local(fl.id) == fl.local,
                         E.labelLocal(fl))
            if fl.remote != None:
                self.add(self.remote(fl.id) == fl.remote,
                         E.labelRemote(fl))

        if self.m.rules != None:
            for i in { f.msg for f in self.m.flows }:
                orange = FlowModel.colorToId('orange')
                green = FlowModel.colorToId('green')
                for (c1, c2) in [(orange, green), (green, orange)]:
                    if i not in self.m.rules or (c1, c2) not in self.m.rules[i]:
                        allowed = self.cdf_allowed(i, c1, c2)
                        self.add(allowed == False, E.denyFlow(i, c1, c2))

    def encodeConstraints(self):

        # Helpers for identifying valid ids and strings in z3
        f, c, l, i, m, c1, c2 = Ints('f c l i m c1 c2')

        orange      = FlowModel.colorToId('orange')
        green       = FlowModel.colorToId('green')
        all_msgs    = { f.msg for f in self.m.flows }

        is_id_of    = lambda x, s: Or([x == t.id for t in s])
        is_comp     = lambda x: is_id_of(x, self.m.components)
        is_flow     = lambda x: is_id_of(x, self.m.flows)
        is_label    = lambda x: is_id_of(x, self.m.labels)
        in_bounds   = lambda c, i, fn: And([is_comp(c), i >= 0, i < fn(c)])
        is_inflow   = lambda c, i: in_bounds(c, i, self.nInflows)
        is_outflow  = lambda c, i: in_bounds(c, i, self.nOutflows)
        is_argtaint = lambda c, i: in_bounds(c, i, self.nArgtaints)
        is_color    = lambda x: Or([x == orange, x == green])
        is_message  = lambda x: Or([x == m for m in all_msgs])
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
        self.assume(ForAll(c, Implies(is_comp(c),
                                      is_color(self.level(c)))))
        self.assume(ForAll(c, Implies(is_comp(c),
                                      is_color(self.remotelevel(c)))))

        self.assume(ForAll(f, Implies(is_flow(f), is_message(self.msg(f)))))
        self.assume(ForAll(f, Implies(is_flow(f), is_label(self.label(f)))))

        self.assume(ForAll(l, Implies(is_label(l), is_color(self.local(l)))))
        self.assume(ForAll(l, Implies(is_label(l), is_color(self.remote(l)))))

        # Flows allowed by rules
        self.assume(ForAll([m, c1, c2], self.cdf_allowed(m, c1, c2) == And([
                    is_message(m), is_color(c1), is_color(c2),
                    Exists(f, is_msg_flow(f, m, c1, c2))])))

        # Add constraints
        flow_local = lambda f: self.local(self.label(f))
        flow_remote = lambda f: self.remote(self.label(f))
        outflow_mtch = lambda f, c, i : Implies(And([is_outflow(c, i),
                                                     self.outflows(c, i) == f]),
                                                self.level(c) == flow_local(f))
        inflow_mtch = lambda f, c, i : Implies(And([is_inflow(c, i),
                                                    self.inflows(c, i) == f]),
                                               self.level(c) == flow_remote(f))
        for f in self.m.flows:
            self.add(ForAll([c, i], outflow_mtch(f.id, c, i)),
                     E.outflowLevel(f))
            self.add(ForAll([c, i], inflow_mtch(f.id, c, i)),
                     E.inflowLevel(f))

        for c in self.m.components:
            c_sum = self.nInflows(c.id) + self.nOutflows(c.id)
            self.add(c_sum == self.nArgtaints(c.id),
                     E.nFlowsEqTaints(c))

            at    = lambda i: self.argtaints(c.id, i)
            lb_in = lambda i: self.label(self.inflows(c.id, i))

            # 1. Forall c i, c.inflows[i].label == c.argtaints[i]
            self.add(ForAll(i,
                            Implies(is_inflow(c.id, i), lb_in(i) == at(i))),
                     E.inflowEqTaint(c))

            lb_out = lambda i: self.label(self.outflows(c.id, i))

            # 2. Forall c i, c.outflows[i].label ==
            #    c.argtaints[len(c.inflows) + i]
            self.add(ForAll(i,
                            Implies(is_outflow(c.id, i),
                                    lb_out(i) == at(self.nInflows(c.id) + i))),
                     E.outflowEqTaint(c))

            c_lc  = self.level(c.id)
            c_rm  = self.remotelevel(c.id)
            n_in  = self.nInflows(c.id)
            lc_at = lambda i: self.local(at(i))
            rm_at = lambda i: self.remote(at(i))

            # 3. Forall c i, i < len(c.inflows) =>
            #    c.argtaints[i].remote == c.level &&
            #    (c.argtaints[i].local == c.level ||
            #     c.argtaints[i].local == c.remotelevel)
            self.add(ForAll(i, Implies(And([is_argtaint(c.id, i), i < n_in]),
                                       And([rm_at(i) == c_lc,
                                            Or([lc_at(i) == c_lc,
                                                lc_at(i) == c_rm])]))),
                     E.inflowTaintLvl(c))

            # 4. Forall c i, i >= len(c.inflows) =>
            # c.argtaints[i].local == c.level &&
            # (c.argtaints[i].remote == c.level ||
            #  c.argtaints[i].remote == c.remotelevel)
            self.add(ForAll(i, Implies(And([is_argtaint(c.id, i), i >= n_in]),
                                       And([lc_at(i) == c_lc,
                                            Or([rm_at(i) == c_lc,
                                                rm_at(i) == c_rm])]))),
                     E.outflowTaintLvl(c))

    def explain(self):
        if self.status != unsat:
            return "Cannot explain '{}' status".format(str(self.status))

        # Explain result using unsat core
        print("\nretrieving unsat core...")
        core = self.s.unsat_core()
        print('reason for unsatisfiability:')
        print('\n'.join([self.explanations[fml] for fml in core]))

    def compareRules(self, provided_json):
        if self.status != sat:
            msg = "no derived rules to compare with for {} result"
            return msg.format(str(self.status))

        # Construct derived ruleset and provided ruleset
        derived = set([])
        for (msg, rules) in self.m.rules.items():
            i2c = FlowModel.idToColor
            i2m = FlowModel.idToMsg
            derived |= {(i2m[msg], i2c(c1), i2c(c2)) for (c1, c2) in rules}

        provided = set([])
        for data in provided_json['rules']:
            provided |= {(data['message'], c[0], c[1]) for c in data['cdf']}

        # Compare rulesets
        if derived == provided:
            print("\nderived cross-domain ruleset matches provided ruleset")
        else:
            diff = provided.difference(derived)
            print("\nwarning: given ruleset allows flows the app doesn't need:")
            for (msg, c1, c2) in diff:
                print("    {}: {} -> {}".format(msg, c1, c2))

def getArgs():
    h1 = 'filepath for application design spec'
    h2 = 'filepath for cross-domain message policy'
    parser = ArgumentParser(description='Verify a GAPS-CLOSURE design spec.')
    parser.add_argument('--rules', metavar='rules.json', type=str, help=h2)
    parser.add_argument('spec', metavar='spec.json', type=str, help=h1)
    return parser.parse_args()

def main():

    # Parse args
    args = getArgs()

    # Read JSON spec
    print("parsing...")
    with open(args.spec) as f:
        spec = json.load(f)
    if args.rules:
        with open(args.rules) as f:
            rules = json.load(f)
    else:
        rules = None

    # Encode spec
    print("encoding...")
    model = FlowModel.fromSpec(spec, rules)
    fs = FlowSolver(model)

    # Write constraints
    with open('constraints.smt2', 'w') as out:
        cs = Solver()
        cs.add(list(fs.s.assertions()) + fs.constraints)
        out.write(cs.sexpr())

    # Solve
    print("solving...")
    fs.solve()

    # Write results
    print("\n" + str(fs.status))
    if fs.status == sat:

        with open('model.txt', 'w') as out1, open('rules.txt', 'w') as out2:
            out1.write("model for '{}':\n\n".format(args.spec))
            out1.write(fs.m.modelToString())
            out2.write("derived rules for '{}':\n\n".format(args.spec))
            out2.write(fs.m.rulesToString())

        if args.rules: fs.compareRules(rules)
        print("\ncheck constraints.smt2 for input to z3")
        print("check model.txt for derived specification")
        print("check rules.txt for derived cross-domain rules")

    else:
        fs.explain()
        print("\ncheck constraints.smt2 for input to z3")

if __name__ == '__main__':
    main()
