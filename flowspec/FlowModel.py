import itertools
import sys
import json

from z3 import *

msgToId = {}
idToMsg = {}

def colorToId(c):
    if c not in ['orange', 'green']:
        sys.exit("error: invalid color->id conversion: {}".format(c))
    return 998 if c == 'orange' else 999

def idToColor(i):
    if i not in [998, 999]:
        sys.exit("error: invalid id->color conversion: {}".format(i))
    return 'orange' if i == 998 else 'green'

class FlowLabel:

    def __init__(self, id, name, local, remote):
        self.id = id
        self.name = name
        self.local = colorToId(local) if local != None else None
        self.remote = colorToId(remote) if remote != None else None

    def __repr__(self):
        n, l, r = self.name, idToColor(self.local), idToColor(self.remote)
        return "Label: {}\n    local: {}\n    remote: {}\n".format(n, l, r)

class Flow:

    def __init__(self, id, name, msg, label):
        self.id = id
        self.name = name
        self.msg = msg
        self.label = label

    def __repr__(self):
        n, m, l = self.name, self.msg, self.label.name if self.label else "None"
        return "Flow: {} | message: {} | label: {}\n".format(n, idToMsg[m], l)

class Component:

    def __init__(self, id, name, inflows, outflows, argtaints, level, rl):
        self.id = id
        self.name = name
        self.inflows = inflows
        self.outflows = outflows
        self.argtaints = argtaints
        self.level = colorToId(level) if level != None else None
        self.remotelevel = colorToId(rl) if rl != None else None

    def __repr__(self):
        n, l, r = self.name, idToColor(self.level), idToColor(self.remotelevel)
        i, o = [x.name for x in self.inflows], [x.name for x in self.outflows]
        a = [x.name for x in self.argtaints]
        s = ("Component: {}\n    inflows: {}\n    outflows: {}\n    " +
             "argtaints: {}\n    level: {}\n    remotelevel: {}\n")
        return s.format(n, i, o, a, l, r)

class FlowModel:

    def __init__(self, components, flows, labels, rules):
        self.components = components
        self.flows = flows
        self.labels = labels
        self.rules = rules

    def modelToString(self):
        elems = self.components + self.flows + self.labels
        return '\n'.join([str(e) for e in elems])

    def rulesToString(self):
        rules = ""
        if self.rules:
            for msg in self.rules:
                rules += "{}: \n".format(idToMsg[msg])
                for (c1, c2) in self.rules[msg]:
                    o, g = idToColor(c1), idToColor(c2)
                    rules += "    {} -> {}\n".format(o, g)
        return rules

    def modelToJson(self, spec):
        json_model = {'topology': [], 'flows': [], 'messages': [], 'cles': []}
        json_model['comment'] = spec['comment']
        json_model['messages'] = spec['messages']

        # topology and component cles
        for c in self.components:
            topo = spec['topology']
            lbl = [t['label'] for t in topo if t['component'] == c.name][0]
            json_model['topology'].append({
                'component': c.name,
                'label': lbl,
                'inFlows': [int(i.name) for i in c.inflows],
                'outFlows': [int(o.name) for o in c.outflows]
            })

            cle = [cl for cl in spec['cles'] if cl['cle-label'] == lbl]
            json_model['cles'].append({
                'cle-label': lbl,
                'cle-json': {
                    'level': idToColor(c.level),
                    'cdf': [{
                        'remotelevel': idToColor(c.remotelevel),
                        'direction': 'egress',
                        'guarddirective': {'operation': 'allow'},
                        'argtaints': [[fl.name] for fl in c.argtaints],
                        'codtaints': [],
                        'rettaints': []
                    }]
                }
            })

        # flows
        for f in self.flows:
            json_model['flows'].append({
                'flowId': int(f.name),
                'message': idToMsg[f.msg],
                'label': f.label.name
            })

        # flow cles
        for fl in self.labels:
            json_model['cles'].append({
                'cle-label': fl.name,
                'cle-json': {
                    'level': idToColor(fl.local),
                    'cdf': [{
                        'remotelevel': idToColor(fl.remote),
                        'direction': 'egress',
                        'guarddirective': {'operation': 'allow', 'oneway': True}
                    }]
                }
            })

        # convert to JSON string
        return json.dumps(json_model, indent=4)

    def rulesToJson(self):
        json_rules = {'rules': []}
        toList = lambda c1, c2: [idToColor(c1), idToColor(c2)]
        for msg in self.rules:
            json_rules['rules'].append({
                'message': idToMsg[msg],
                'cdf': [toList(c1, c2) for (c1, c2) in self.rules[msg]]
            })

        # convert to JSON string
        return json.dumps(json_rules, indent=4)

def fromSpec(spec, rjson):
    global msgToId, idToMsg

    components = []
    flows = []
    labels = []
    rules = None

    # Helpers
    clrs = ['green', 'orange']
    err  = lambda msg: sys.exit("error: " + msg)
    get  = lambda d, k: d[k] if k in d else err("no '{}' key: {}".format(k, d))
    warn = lambda msg: print("warning: assumption violated: {}".format(msg))
    vc   = lambda s: err(s + " is not a valid color") if s not in clrs else s
    freshId = itertools.count()

    # Messages
    msgs = get(spec, 'messages')
    names = [get(m, 'name') for m in msgs]
    for n in names:
        msg_id = next(freshId)
        msgToId[n] = msg_id
        idToMsg[msg_id] = n

    # Rules
    if rjson:
        rules = {}
        for data in rjson['rules']:
            msg_id = msgToId[data['message']]
            rules[msg_id] = []
            for c in data['cdf']:
                if len(c) != 2:
                    err("every rule in rules.json must have list length == 2")
                o = vc(c[0])
                g = vc(c[1])
                if o == g:
                    err("intra-domain rule {}->{} not enforceable".format(o, g))
                rules[msg_id].append((colorToId(o), colorToId(g)))

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
            vc(local)

        remote = None
        cdf = cle['cle-json']['cdf'][0]
        if 'remotelevel' in cdf:
            remote = cdf['remotelevel']
            vc(remote)

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
            msg = msgToId[f['message']]

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
        if len(taint_labels) != len(inflows) + len(outflows):
            e = "cle '{}' has len(argtaints) != len(inflows) + len(outflows)"
            err(e.format(name))

        level = None
        if 'level' in cle:
            level = cle['level']
            vc(level)

        rl = None
        if 'remotelevel' in cle['cdf'][0]:
            rl = cle['cdf'][0]['remotelevel']
            vc(rl)

        # Add to spec
        id = next(freshId)
        new_c = Component(id, name, inflows, outflows, taint_labels, level, rl)
        if name in fkComponent:
            err("duplicate component '{}'".format(name))
        fkComponent[name] = new_c
        components.append(new_c)

    # Some additional warnings/errors
    flatten = lambda t: [item for sublist in t for item in sublist]
    all_inflows = flatten([c['inFlows'] for c in spec['topology']])
    all_outflows = flatten([c['outFlows'] for c in spec['topology']])
    for f in spec['flows']:
        fid = f['flowId']
        used_in = all_inflows.count(fid)
        used_out = all_outflows.count(fid)
        if used_in != 1:
            err("flow '{}' must occur exactly once in all inflows".format(fid))
        if used_out != 1:
            err("flow '{}' must occur exactly once in all outflows".format(fid))

    return FlowModel(components, flows, labels, rules)
