from argparse import ArgumentParser
import itertools
import json

from z3 import *

class FlowLabel:

    def __init__(self, id, name, local, remote):
        self.id = id
        self.name = name
        self.local = local.lower()
        self.remote = remote.lower()

    def __repr__(self):
        n, l, r = self.name, self.local, self.remote
        return "Label: {}\n    local: {}\n    remote: {}\n".format(n, l, r)

class Flow:

    def __init__(self, id, name, msg, label):
        self.id = id
        self.name = name
        self.msg = msg
        self.label = label

    def __repr__(self):
        n, m, l = self.name, self.msg, self.label.name
        return "Flow: {} | message: {} | label: {}\n".format(n, m, l)

class Component:

    def __init__(self, id, name, inflows, outflows, argtaints, lvl):
        self.id = id
        self.name = name
        self.inflows = inflows
        self.outflows = outflows
        self.argtaints = argtaints
        self.lvl = lvl.lower()

    def __repr__(self):
        n, l = self.name, self.lvl
        i, o = [x.name for x in self.inflows], [x.name for x in self.outflows]
        a = [x.name for x in self.argtaints]
        s = ("Component: {}\n    inflows: {}\n    outflows: {}\n    " +
             "argtaints: {}\n    level: {}\n")
        return s.format(n, i, o, a, l)

class FlowSolver:

    def __init__(self, spec, rules):

        self.idToStr = {}
        self.model = self.toModel(spec)
        self.rules = rules

        self.status = "unsolved"
        self.s = Solver()
        self.encode()

    def freshId(self, n):
        newId = next(i for i in itertools.count() if i not in self.idToStr)
        self.idToStr[newId] = n
        return newId

    def toModel(self, spec):
        m = { 'Components': [], 'Flows': [], 'FlowLabels': [] }

        # Flow labels
        fkFlowLabel = {}
        fcls = [c for c in spec['cles'] if 'argtaints' not in c['cle-json']['cdf'][0]] # SC: invalid specification
        for cle in fcls: # SC

            # Get fields
            name   = cle['cle-label'] # SC
            local  = cle['cle-json']['level'] # SC
            remote = cle['cle-json']['cdf'][0]['remotelevel'] # SC

            # Add to spec
            id = self.freshId(name)
            new_fl = FlowLabel(id, name, local, remote)
            fkFlowLabel[name] = new_fl # SC
            m['FlowLabels'].append(new_fl)

        # Flows
        fkFlow = {}
        for f in spec['flows']: # SC

            # Get fields
            name  = str(f['flowId']) # SC
            msg   = f['message'] # SC
            label = fkFlowLabel[f['label']] # SC

            # Add to spec
            id = self.freshId(name)
            new_f = Flow(id, name, msg, label)
            fkFlow[f['flowId']] = new_f # SC
            m['Flows'].append(new_f)

        # Components
        for c in spec['topology']: # SC
            cle = [cl['cle-json'] for cl in spec['cles'] if cl['cle-label'] == c['label']][0] # SC

            # Get fields
            name     = c['component'] # SC
            inflows  = [fkFlow[fid] for fid in c['inFlows']] # SC
            outflows = [fkFlow[fid] for fid in c['outFlows']] # SC
            taints   = [[fkFlowLabel[t] for t in ts][0] for ts in cle['cdf'][0]['argtaints']] # SC
            lvl      = cle['level'] # SC

            # Add to spec
            id = self.freshId(name)
            new_c = Component(id, name, inflows, outflows, taints, lvl)
            m['Components'].append(new_c)

        return m

    def encode(self):

        # Declare functions
        s_id      = IntSort()
        s_index   = IntSort()
        s_size    = IntSort()
        s_color   = StringSort()
        s_message = StringSort()

        inflows     = Function('c_inflows', s_id, s_index, s_id)
        outflows    = Function('c_outflows', s_id, s_index, s_id)
        argtaints   = Function('c_argtaints', s_id, s_index, s_id)
        n_inflows   = Function('c_n_inflows', s_id, s_size)
        n_outflows  = Function('c_n_outflows', s_id, s_size)
        n_argtaints = Function('c_n_argtaints', s_id, s_size)
        lvl         = Function('c_lvl', s_id, s_color)

        msg   = Function('f_msg', s_id, s_message)
        label = Function('f_label', s_id, s_id)

        local  = Function('l_local', s_id, s_color)
        remote = Function('l_remote', s_id, s_color)

        # Populate functions
        for c in self.model['Components']:
            def addList(fxn, xs):
                for i in range(len(xs)):
                    self.s.add(fxn(c.id, i) == xs[i].id)
            if c.inflows:
                addList(inflows, c.inflows)
                self.s.add(n_inflows(c.id) == len(c.inflows))
            if c.outflows:
                addList(outflows, c.outflows)
                self.s.add(n_outflows(c.id) == len(c.outflows))
            if c.argtaints:
                addList(argtaints, c.argtaints)
                self.s.add(n_argtaints(c.id) == len(c.argtaints))
            if c.lvl:
                self.s.add(lvl(c.id) == StringVal(c.lvl))

        for f in self.model['Flows']:
            if f.msg:   self.s.add(msg(f.id) == StringVal(f.msg))
            if f.label: self.s.add(label(f.id) == f.label.id)

        for fl in self.model['FlowLabels']:
            if fl.local:  self.s.add(local(fl.id) == StringVal(fl.local))
            if fl.remote: self.s.add(remote(fl.id) == StringVal(fl.remote))

        # Helpers for identifying valid ids and strings in z3
        f, c, l, i  = Ints('f c l i')
        is_id_of    = lambda x, s : Or([x == t.id for t in self.model[s]])
        is_comp     = lambda x : is_id_of(x, 'Components')
        is_flow     = lambda x : is_id_of(x, 'Flows')
        is_label    = lambda x : is_id_of(x, 'FlowLabels')
        in_bounds   = lambda c, i, fn : And([is_comp(c), i >= 0, i < fn(c)])
        is_inflow   = lambda c, i : in_bounds(c, i, n_inflows)
        is_outflow  = lambda c, i : in_bounds(c, i, n_outflows)
        is_argtaint = lambda c, i : in_bounds(c, i, n_argtaints)
        is_color    = lambda x : Or([x == StringVal('orange'),
                                     x == StringVal('green')])
        all_msgs    = { f.msg for f in self.model['Flows'] }
        is_message  = lambda x : Or([x == StringVal(m) for m in all_msgs])

        # Restrict functions to valid inputs and outputs
        self.s.add(ForAll([c, i], Implies(is_inflow(c, i),
                                          is_flow(inflows(c, i)))))
        self.s.add(ForAll([c, i], Implies(is_outflow(c, i),
                                          is_flow(outflows(c, i)))))
        self.s.add(ForAll([c, i], Implies(is_argtaint(c, i),
                                          is_label(argtaints(c, i)))))
        self.s.add(ForAll(c, Implies(is_comp(c), is_color(lvl(c)))))

        self.s.add(ForAll(f, Implies(is_flow(f), is_message(msg(f)))))
        self.s.add(ForAll(f, Implies(is_flow(f), is_label(label(f)))))

        self.s.add(ForAll(l, Implies(is_label(l), is_color(local(l)))))
        self.s.add(ForAll(l, Implies(is_label(l), is_color(remote(l)))))

        # Add constraints
        oc = lambda f, c, i : And([is_outflow(c, i),
                                   outflows(c, i) == f,
                                   lvl(c) == local(label(f))])
        ic = lambda f, c, i : And([is_inflow(c, i),
                                   inflows(c, i) == f,
                                   lvl(c) == remote(label(f))])
        self.s.add(ForAll(f, Implies(is_flow(f), Exists([c, i], oc(f, c, i)))))
        self.s.add(ForAll(f, Implies(is_flow(f), Exists([c, i], ic(f, c, i)))))

    def solve(self):
        self.status = self.s.check()
        # TODO: repopulate spec with model if new status is sat

    def explain(self, out):
        if self.status != unsat:
            out.write("Cannot explain '{}' status".format(str(self.status)))
            return

        # TODO: explain an unsat result using the unsat core
        out.write("TODO: get unsat core and explain unsat")

    def ppspec(self, out):
        for c in self.model['Components']:
            out.write(str(c) + '\n')
        for f in self.model['Flows']:
            out.write(str(f) + '\n')
        for l in self.model['FlowLabels']:
            out.write(str(l) + '\n')

def getArgs():
    h1 = 'path to file containing application design spec'
    h2 = 'path to file containing flow constraints'
    parser = ArgumentParser(description='Verify a GAPS-CLOSURE design spec.')
    parser.add_argument('s', metavar='spec.json', type=str, help=h1)
    parser.add_argument('r', metavar='rules.json', type=str, help=h2)
    return parser.parse_args()

def main():

    # Parse args
    args = getArgs()

    # Read JSON spec and rules
    print("parsing...")
    with open(args.s) as sp, open(args.r) as r:
        spec = json.load(sp)
        rules = json.load(r)

    # Encode spec
    print("encoding...")
    fs = FlowSolver(spec, rules)

    # Solve
    print("solving...")
    fs.solve()

    # Write results
    with open('results.txt', 'w') as out:
        out.write(str(fs.status) + '\n\n')
        if fs.status == sat:
            fs.ppspec(out)
        else:
            fs.explain(out)
    print("done, check results.txt")

if __name__ == '__main__':
    main()
