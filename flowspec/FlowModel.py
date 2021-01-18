import itertools
import sys

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

class FlowModel:

    def __init__(self, components, flows, labels):
        self.components = components
        self.flows = flows
        self.labels = labels

    def __repr__(self):
        elems = self.components + self.flows + self.labels
        return '\n'.join([str(e) for e in elems])

    def populate(self, m, lvl, msg, label, local, remote):
        for c in self.components:
            if not c.lvl:
                c.lvl = m.evaluate(lvl(c.id))

        for f in self.flows:
            if not f.msg:
                f.msg = m.evaluate(msg(f.id))
            if not f.label:
                lid = m.evaluate(label(f.id))
                match = [l for l in self.labels if l.id == lid]
                f.label = match[0]

        for l in self.labels:
            if not l.local:
                f.local = m.evaluate(local(l.id))
            if not l.remote:
                f.remote = m.evaluate(remote(l.id))

def fromSpec(spec):
    components = []
    flows = []
    labels = []

    # Helpers
    get  = lambda d, k: d[k] if k in d else err("no '{}' key: {}".format(k, d))
    warn = lambda msg: print("warning: assumption violated: {}".format(msg))
    err  = lambda msg: sys.exit("error: " + msg)
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
        labels.append(new_fl)

    # Flows
    fkFlow = {}
    specflows = get(spec, 'flows')
    for f in specflows:

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
        flows.append(new_f)

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
        components.append(new_c)

    return FlowModel(components, flows, labels)
