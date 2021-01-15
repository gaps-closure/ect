from argparse import ArgumentParser
import itertools
import json

from z3 import *

def err(msg):
    print("error: " + msg)
    exit(1)

def warn(msg):
    print("warning: assumption violated: {}".format(msg))

def get(d, k):
    if k in d:
        return d[k]
    else:
        err("missing '{}' key in {}".format(k, d))

class FlowLabel:

    def __init__(self, id, name, local, remote):
        self.id = id
        self.name = name
        self.local = local
        self.remote = remote
        #print("FlowLabel {}: {}".format(name, id))

    def __repr__(self):
        n, l, r = self.name, self.local, self.remote
        return "Label: {}\n    local: {}\n    remote: {}\n".format(n, l, r)

class Flow:

    def __init__(self, id, name, msg, label):
        self.id = id
        self.name = name
        self.msg = msg
        self.label = label
        #print("Flow {}: {}".format(name, id))

    def __repr__(self):
        n, m, l = self.name, self.msg, self.label.name if self.label else "None"
        return "Flow: {} | message: {} | label: {}\n".format(n, m, l)

class Component:

    def __init__(self, id, name, inflows, outflows, argtaints, lvl):
        self.id = id
        self.name = name
        self.inflows = inflows
        self.outflows = outflows
        self.argtaints = argtaints
        self.lvl = lvl
        #print("Component {}: {}".format(name, id))

    def __repr__(self):
        n, l = self.name, self.lvl
        i, o = [x.name for x in self.inflows], [x.name for x in self.outflows]
        a = [x.name for x in self.argtaints]
        s = ("Component: {}\n    inflows: {}\n    outflows: {}\n    " +
             "argtaints: {}\n    level: {}\n")
        return s.format(n, i, o, a, l)

class FlowSolver:

    def __init__(self, spec):

        self.model = self.toModel(spec)
        self.status = "unsolved"
        self.s = Solver()
        self.mkRelations()
        self.encodeModel()
        self.encodeConstraints()

    def toModel(self, spec):
        m = { 'Components': [], 'Flows': [], 'FlowLabels': [] }
        freshId = itertools.count()

        # Flow labels
        fkFlowLabel = {}
        cles      = get(spec, 'cles')
        cle_jsons = [get(c, 'cle-json') for c in cles]
        cdfs      = [get(j, 'cdf') for j in cle_jsons]
        cdf_err   = 'cle with empty cdf list'
        cdf_warn  = 'cle with multiple cdfs'
        if any([len(cdf) == 0 for cdf in cdfs]): err(cdf_err)
        if any([len(cdf) > 1 for cdf in cdfs]): warn(cdf_warn)
        fcls = [c for (c, cdf) in zip(cles, cdfs) if 'argtaints' not in cdf[0]]
        for cle in fcls:

            # Get fields
            name = get(cle, 'cle-label')

            local = None
            if 'level' in cle['cle-json']:
                local = cle['cle-json']['level']

            remote = None
            cdf = cle['cle-json']['cdf'][0]
            if 'remotelevel' in cdf:
                remote = cdf['remotelevel']

            # Add to spec
            id = next(freshId)
            new_fl = FlowLabel(id, name, local, remote)
            if name in fkFlowLabel:
                err("duplicate cle label '{}'".format(name))
            fkFlowLabel[name] = new_fl
            m['FlowLabels'].append(new_fl)

        # Flows
        fkFlow = {}
        flows = get(spec, 'flows')
        for f in flows:

            # Get fields
            name = str(get(f, 'flowId'))

            msg = None
            if 'message' in f:
                msg = f['message']

            label = None
            if 'label' in f:
                if f['label'] in fkFlowLabel:
                    label = fkFlowLabel[f['label']]
                else:
                    label_err = "flow {} references nonexistent label '{}'"
                    err(label_err.format(name, f['label']))

            # Add to spec
            id = next(freshId)
            new_f = Flow(id, name, msg, label)
            if f['flowId'] in fkFlow:
                err("duplicate flow ID '{}'".format(name))
            fkFlow[f['flowId']] = new_f
            m['Flows'].append(new_f)

        # Components
        fkComponent = {}
        topo = get(spec, 'topology')
        for c in topo:

            # find cle
            l = get(c, 'label')
            cls = spec['cles']
            lbs = [get(cl, 'cle-label') for cl in cls]
            matches = [cl['cle-json'] for (lb, cl) in zip(lbs, cls) if lb == l]
            if not matches:
                err("component label '{}' has no matching cle".format(l))
            elif len(matches) > 1:
                err("duplicate cle label '{}'".format(l))
            cle = matches[0]

            # Get fields
            name = get(c, 'component')

            inf = get(c, 'inFlows')
            out = get(c, 'outFlows')
            if len(set(inf)) != len(inf):
                err("component '{}' contains duplicate inflows".format(name))
            if len(set(out)) != len(out):
                err("component '{}' contains duplicate outflows".format(name))
            if any([fid not in fkFlow for fid in inf]):
                err("component '{}' contains nonexistent inflow".format(name))
            if any([fid not in fkFlow for fid in out]):
                err("component '{}' contains nonexistent outflow".format(name))
            inflows = [fkFlow[fid] for fid in inf]
            outflows = [fkFlow[fid] for fid in out]

            taints = get(cle['cdf'][0], 'argtaints')
            if any([any([t not in fkFlowLabel for t in ts]) for ts in taints]):
                err("cle '{}' containts nonexistent argtaint".format(l))
            if any([len(ts) > 1 for ts in taints]):
                taint_warn = "cle '{}' has an argtaint with multiple options"
                warn(taint_warn.format(l))
            taint_labels = [[fkFlowLabel[t] for t in ts][0] for ts in taints]

            lvl = None
            if 'level' in cle:
                lvl = cle['level']

            # Add to spec
            id = next(freshId)
            new_c = Component(id, name, inflows, outflows, taint_labels, lvl)
            if name in fkComponent:
                err("duplicate component '{}'".format(name))
            fkComponent[name] = new_c
            m['Components'].append(new_c)

        return m

    def mkRelations(self):

        # Sorts
        id      = IntSort()
        index   = IntSort()
        size    = IntSort()
        color   = StringSort()
        message = StringSort()

        # Relations
        self.inflows     = Function('c_inflows', id, index, id)
        self.outflows    = Function('c_outflows', id, index, id)
        self.argtaints   = Function('c_argtaints', id, index, id)
        self.n_inflows   = Function('c_n_inflows', id, size)
        self.n_outflows  = Function('c_n_outflows', id, size)
        self.n_argtaints = Function('c_n_argtaints', id, size)
        self.lvl         = Function('c_lvl', id, color)

        self.msg   = Function('f_msg', id, message)
        self.label = Function('f_label', id, id)

        self.local  = Function('l_local', id, color)
        self.remote = Function('l_remote', id, color)

    def encodeModel(self):

        for c in self.model['Components']:
            def addList(fxn, xs):
                for i in range(len(xs)):
                    # print("{} {} -> {}".format(c.id, i, xs[i].id))
                    self.s.add(fxn(c.id, i) == xs[i].id)
            if c.inflows != None:
                addList(self.inflows, c.inflows)
                self.s.add(self.n_inflows(c.id) == len(c.inflows))
            if c.outflows != None:
                addList(self.outflows, c.outflows)
                self.s.add(self.n_outflows(c.id) == len(c.outflows))
            if c.argtaints != None:
                addList(self.argtaints, c.argtaints)
                self.s.add(self.n_argtaints(c.id) == len(c.argtaints))
            if c.lvl:
                self.s.add(self.lvl(c.id) == StringVal(c.lvl))

        for f in self.model['Flows']:
            if f.msg != None:   self.s.add(self.msg(f.id) == StringVal(f.msg))
            if f.label != None: self.s.add(self.label(f.id) == f.label.id)

        for fl in self.model['FlowLabels']:
            if fl.local:  self.s.add(self.local(fl.id) == StringVal(fl.local))
            if fl.remote: self.s.add(self.remote(fl.id) == StringVal(fl.remote))

    def encodeConstraints(self):

        # Helpers for identifying valid ids and strings in z3
        f, c, l, i  = Ints('f c l i')
        is_id_of    = lambda x, s : Or([x == t.id for t in self.model[s]])
        is_comp     = lambda x : is_id_of(x, 'Components')
        is_flow     = lambda x : is_id_of(x, 'Flows')
        is_label    = lambda x : is_id_of(x, 'FlowLabels')
        in_bounds   = lambda c, i, fn : And([is_comp(c), i >= 0, i < fn(c)])
        is_inflow   = lambda c, i : in_bounds(c, i, self.n_inflows)
        is_outflow  = lambda c, i : in_bounds(c, i, self.n_outflows)
        is_argtaint = lambda c, i : in_bounds(c, i, self.n_argtaints)
        is_color    = lambda x : Or([x == StringVal('orange'),
                                     x == StringVal('green')])
        all_msgs    = { f.msg for f in self.model['Flows'] }
        is_message  = lambda x : Or([x == StringVal(m) for m in all_msgs])

        # Restrict functions to valid inputs and outputs
        self.s.add(ForAll([c, i], Implies(is_inflow(c, i),
                                          is_flow(self.inflows(c, i)))))
        self.s.add(ForAll([c, i], Implies(is_outflow(c, i),
                                          is_flow(self.outflows(c, i)))))
        self.s.add(ForAll([c, i], Implies(is_argtaint(c, i),
                                          is_label(self.argtaints(c, i)))))
        self.s.add(ForAll(c, Implies(is_comp(c), is_color(self.lvl(c)))))

        self.s.add(ForAll(f, Implies(is_flow(f), is_message(self.msg(f)))))
        self.s.add(ForAll(f, Implies(is_flow(f), is_label(self.label(f)))))

        self.s.add(ForAll(l, Implies(is_label(l), is_color(self.local(l)))))
        self.s.add(ForAll(l, Implies(is_label(l), is_color(self.remote(l)))))

        # Add constraints
        oc = lambda f, c, i : And([is_outflow(c, i),
                                   self.outflows(c, i) == f,
                                   self.lvl(c) == self.local(self.label(f))])
        ic = lambda f, c, i : And([is_inflow(c, i),
                                   self.inflows(c, i) == f,
                                   self.lvl(c) == self.remote(self.label(f))])
        self.s.add(ForAll(f, Implies(is_flow(f), Exists([c, i], oc(f, c, i)))))
        self.s.add(ForAll(f, Implies(is_flow(f), Exists([c, i], ic(f, c, i)))))

    def solve(self):
        self.status = self.s.check()
        if self.status == sat:
            m = self.s.model()

            for c in self.model['Components']:
                if not c.lvl:
                    c.lvl = m.evaluate(self.lvl(c.id))

            for f in self.model['Flows']:
                if not f.msg:
                    f.msg = m.evaluate(self.msg(f.id))
                if not f.label:
                    lid = m.evaluate(self.label(f.id))
                    match = [l for l in self.model['FlowLabels'] if l.id == lid]
                    f.label = match[0]

            for l in self.model['FlowLabels']:
                if not l.local:
                    f.local = m.evaluate(self.local(l.id))
                if not l.remote:
                    f.remote = m.evaluate(self.remote(l.id))

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
    fs = FlowSolver(spec)

    # Solve
    print("solving...")
    fs.solve()

    print(fs.s.sexpr())

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
