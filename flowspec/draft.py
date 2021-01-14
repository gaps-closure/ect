import sys
import json

from z3 import *

def getArgs():
    from argparse import ArgumentParser
    h1 = 'path to file containing application design spec'
    h2 = 'path to file containing flow constraints'
    parser = ArgumentParser(description='Verify a GAPS-CLOSURE design spec.')
    parser.add_argument('s', metavar='spec.json', type=str, help=h1)
    parser.add_argument('r', metavar='rules.json', type=str, help=h2)
    return parser.parse_args()

def noDuplicates(xs):
    return all(xs.count(x) == 1 for x in xs)

def keysExist(objs, fields, primary=None):
    for o in objs:
        assert all([f in o for f in fields])
    if primary:
        assert noDuplicates([o[primary] for o in objs])

def sanityCheck(spec):

    # Validate top-level key existence and primary key uniqueness
    keysExist(spec['topology'], ['component', 'label', 'inFlows', 'outFlows'], primary='component')
    keysExist(spec['messages'], ['name', 'topic', 'schemaType', 'schemaFile'], primary='name')
    keysExist(spec['flows'], ['flowId', 'message', 'label'], primary='flowId')
    keysExist(spec['cles'], ['cle-label', 'cle-json'], primary='cle-label')

    # Validate components
    cle_labels = [cle['cle-label'] for cle in spec['cles']]
    for c in spec['topology']:
        assert c['label'] in cle_labels
        assert c['component'] + '_CLE_LABEL' == c['label']
        for fid in c['inFlows'] + c['outFlows']:
            assert fid in [f['flowId'] for f in spec['flows']]

    # Validate flows
    flat = lambda t: [item for sublist in t for item in sublist]
    inflows = flat([c['inFlows'] for c in spec['topology']])
    outflows = flat([c['outFlows'] for c in spec['topology']])
    msgs = [m['name'] for m in spec['messages']]
    for f in spec['flows']:
        assert f['label'] in cle_labels
        assert f['message'] in msgs
        assert inflows.count(f['flowId']) == 1
        assert outflows.count(f['flowId']) == 1

    # Validate CLEs
    component_labels = [c['label'] for c in spec['topology']]
    flow_labels = [f['label'] for f in spec['flows']]
    for cle in spec['cles']:

        # Rules for all CLEs
        keysExist([cle['cle-json']], ['level', 'cdf'])
        keysExist(cle['cle-json']['cdf'], ['remotelevel', 'direction', 'guarddirective'])
        assert noDuplicates([cdf['remotelevel'] for cdf in cle['cle-json']['cdf']])
        for cdf in cle['cle-json']['cdf']:
            assert cdf['direction'] in ['ingress', 'egress']
            assert cdf['guarddirective']['operation'] in ['allow', 'deny', 'redact']

        # Rules for flow CLEs
        lb = cle['cle-label']
        taints = lambda cdf: ['argtaints' in cdf, 'codtaints' in cdf, 'rettaints' in cdf]
        if lb in flow_labels:
            assert lb not in component_labels
            for cdf in cle['cle-json']['cdf']:
                assert 'oneway' in cdf['guarddirective']
                assert not any(taints(cdf))

        # Rules for component CLEs
        if lb in component_labels:
            assert lb not in flow_labels
            comp = [c for c in spec['topology'] if c['label'] == lb][0]
            num_taints = len(comp['inFlows']) + len(comp['outFlows'])
            for cdf in cle['cle-json']['cdf']:
                assert not 'oneway' in cdf['guarddirective']
                assert all(taints(cdf))
                assert cdf['codtaints'] == []
                assert cdf['rettaints'] == []
                assert len(cdf['argtaints']) == num_taints

        # TODO: 16, 17, 18 warnings

def compLevelsForFlow(spec, fid):
    inComp = None
    outComp = None
    for c in spec['topology']:
        for inf in c['inFlows']:
            if inf == fid:
                inComp = c
        for otf in c['outFlows']:
            if otf == fid:
                outComp = c

    inLevel = [cle['cle-json']['level'] for cle in spec['cles'] if cle['cle-label'] == inComp['label']][0]
    outLevel = [cle['cle-json']['level'] for cle in spec['cles'] if cle['cle-label'] == outComp['label']][0]
    return inLevel, outLevel

def flowLevels(spec, fid):
    f = [f for f in spec['flows'] if f['flowId'] == fid][0]
    cle = [cl['cle-json'] for cl in spec['cles'] if cl['cle-label'] == f['label']][0]
    level = cle['level']
    remotes = [cdf['remotelevel'] for cdf in cle['cdf'] if cdf['guarddirective']['operation'] != 'deny']
    return level, remotes

def consistencyCheck(spec):

    # maps message to colors
    rules = {}

    # the level and remotelevel of flowCLEs are consistent with the levels
    # of the components that have it as inflow/outflow
    flat = lambda t: [item for sublist in t for item in sublist]
    inflows = flat([c['inFlows'] for c in spec['topology']])
    outflows = flat([c['outFlows'] for c in spec['topology']])
    for f in spec['flows']:
        fid = f['flowId']
        inFlowLevel, outFlowLevel = compLevelsForFlow(spec, fid)
        level, remotes = flowLevels(spec, fid)
        assert outFlowLevel == level
        try:
            assert inFlowLevel in remotes
        except:
            print("flow {} | inflow component _ has level {} which is not in remote levels {}".format(fid, inFlowLevel, remotes))

        cross_flows = { (level, rlevel) for rlevel in remotes if level != rlevel }
        msg = f['message']
        if msg not in rules:
            print("flow {} | INSERT  | {} : {}".format(fid, msg, str(cross_flows)))
            rules[msg] = cross_flows
        else:
            if not cross_flows.issubset(rules[msg]):
                rules[msg] |= cross_flows
                print("flow {} | UNION   | {} : {}".format(fid, msg, str(rules[msg])))
            # if rules[msg] != cross_flows:
            #     print("flow {} | CONFLICT | {} : {} / {}".format(fid, msg, str(rules[msg]), str(cross_flows)))

    # taint consistency
    # for c in spec['topology']:
    #     cle = [cl['cle-json'] for cl in spec['cles'] if cl['cle-label'] == c['label']][0]
    #     fids = c['inFlows'] + c['outFlows']
    #     level = cle['level']
    #
    #     remote = cle['cdf'][0]['remotelevel'] # TODO: wrong
    #     cdfs = [cdf['argtaints'] for cdf in cle['cdf']]
    #     alltaints = [[] for _ in range(len(fids))]
    #     for cdf in cdfs:
    #         for i in range(len(cdf)):
    #             alltaints[i] += cdf[i]
    #
    #     for i in range(len(alltaints)):
    #         fid = fids[i]
    #         flabel = [f['label'] for f in spec['flows'] if f['flowId'] == fid][0]
    #         flevel, fremotes = flowLevels(spec, fid)
    #         taints = alltaints[i]
    #         assert flabel in taints
    #
    #         type = 'in' if i < len(c['inFlows']) else 'out'
    #         TODO: check levels based on type

    return rules

def printRules(rules):
    print("\nThe following cross-domain messages are allowed by the guard, and the rest are blocked.\n")
    for msg, cross_flows in rules.items():
        if cross_flows:
            print("Message: " + msg)
            for level, rlevel in cross_flows:
                print("{} -> {}".format(level, rlevel))
            print()

def main():

    # load json
    args = getArgs()
    with open(args.s) as sp, open(args.r) as r:
        spec = json.load(sp)
        rules = json.load(r)

    # The sanity check validates the json input in order to detect simple
    # errors, but can be omitted - the expression passed to the solver gives
    # the complete correctness requirements, but assumes sanitized input
    sanityCheck(spec)

    # Python version of encoding
    r = consistencyCheck(spec)
    printRules(r)

    # TODO: solver
    # solver should check everything in the sanity check as well
    # first encode model
    # then add constraints
    # s = Solver()
    # print(s.check())

if __name__ == "__main__":
    main()
