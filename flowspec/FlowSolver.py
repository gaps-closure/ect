import itertools
from z3 import *

def error(msg):
    print('encoding error: ' + msg)
    exit(1)

class FlowLabel:

    def __init__(self, id, lvl, remote):
        self.id = id
        self.lvl = lvl
        self.remote = remote

    def __repr__(self):
        i, l, r = self.id, self.lvl, self.remote
        return "FlowLabel(id: {}, lvl: {}, remote: {})".format(i, l, r)

class Flow:

    def __init__(self, id, msg, label):
        self.id = id
        self.msg = msg
        self.label = label

    def __repr__(self):
        i, m, l = self.id, self.msg, self.label.id
        return "Flow(id: {}, msg: {}, label: {})".format(i, m, l)

class Component:

    def __init__(self, id, inflows, outflows, argtaints, lvl):
        self.id = id
        self.inflows = inflows
        self.outflows = outflows
        self.argtaints = argtaints
        self.lvl = lvl

    def __repr__(self):
        il, ol = [it.id for it in self.inflows], [ot.id for ot in self.outflows]
        s = "Component(id: {}, inflows: {}, outflows: {}, lvl: {})"
        return s.format(self.id, il, ol, self.lvl)

class FlowSolver:

    def __init__(self, spec, rules):
        self.s = Solver()
        self.model = None
        self.spec = {}
        self.rules = rules
        self.idToStr = {}
        self.format(spec)
        self.encode()

    def __repr__(self):
        return self.model if self.model else "unsolved"

    def freshId(self, n):
        newId = next(i for i in itertools.count() if i not in self.idToStr)
        self.idToStr[newId] = n
        return newId

    def format(self, spec):
        self.spec = { 'Components': [], 'Flows': [], 'FlowLabels': [] }

        # flow labels
        fkFlowLabel = {}
        fcls = [c for c in spec['cles'] if 'argtaints' not in c['cle-json']['cdf'][0]] # SC
        for cle in fcls: # SC

            # get fields
            name   = cle['cle-label'] # SC
            lvl    = cle['cle-json']['level'] # SC
            remote = cle['cle-json']['cdf'][0]['remotelevel'] # SC

            # add to spec
            id = self.freshId(name)
            new_fl = FlowLabel(id, lvl, remote)
            fkFlowLabel[name] = new_fl # SC
            self.spec['FlowLabels'].append(new_fl)

        # flows
        fkFlow = {}
        for f in spec['flows']: # SC

            # get fields
            name  = str(f['flowId']) # SC
            msg   = f['message'] # SC
            label = fkFlowLabel[f['label']] # SC

            # add to spec
            id = self.freshId(name)
            new_f = Flow(id, msg, label)
            fkFlow[f['flowId']] = new_f # SC
            self.spec['Flows'].append(new_f)

        # components
        for c in spec['topology']: # SC
            cle = [cl['cle-json'] for cl in spec['cles'] if cl['cle-label'] == c['label']][0] # SC

            # get fields
            name     = c['component'] # SC
            inflows  = [fkFlow[fid] for fid in c['inFlows']] # SC
            outflows = [fkFlow[fid] for fid in c['outFlows']] # SC
            taints   = [[fkFlowLabel[t] for t in ts][0] for ts in cle['cdf'][0]['argtaints']] # SC
            lvl      = cle['level'] # SC

            # add to spec
            id = self.freshId(name)
            new_c = Component(id, inflows, outflows, taints, lvl)
            self.spec['Components'].append(new_c)

    def encode(self):
        pass

    def solve(self):
        return None

def getArgs():
    from argparse import ArgumentParser
    h1 = 'path to file containing application design spec'
    h2 = 'path to file containing flow constraints'
    parser = ArgumentParser(description='Verify a GAPS-CLOSURE design spec.')
    parser.add_argument('s', metavar='spec.json', type=str, help=h1)
    parser.add_argument('r', metavar='rules.json', type=str, help=h2)
    return parser.parse_args()

def main():

    args = getArgs()
    with open(args.s) as sp, open(args.r) as r:
        import json
        spec = json.load(sp)
        rules = json.load(r)

    fs = FlowSolver(spec, rules)
    sol = fs.solve()
    print(fs.spec)
    print(fs)

if __name__ == '__main__':
    main()
