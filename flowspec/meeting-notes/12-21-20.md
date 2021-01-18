## Object model of application

```
topology:
    component: String
    label: String (== cles->cle-label)
    inflows: [Int (== flows->flowId)]
    outflows: [Int (== flows->flowId)]

flows:
    flowId: Int (== topology->inflows || topology->outflows)
    label: String (== cles->cle-label)
    message: String (== messages->name)

messages:
    name: String (== flows->message)
    topic: Bool
    schemaFile: String
    schemaJSON: String

cles:
    cle-label: String (== flows->label || topology->label)
    cle-json:
        level: String (== "orange" || "purple")
        cdf: [] of
            remotelevel: String (== "orange" || "purple")
            direction: String (== "ingress" || "egress")
            guarddirective:
                operation: String (== "allow" || "deny" || "redact")
                oneway: Bool
            argtaints: [[String (== flows->label)]]
            codtaints: []
            rettaints: []
```

## Informal description of application

Inflows and outflows of components form a graph, where each component is a
node and an edge from A to B with flow ID X <=> component A has outflow X
and component B has inflow X.

Each flow is associated with a message. The same message can be passed on
multiple different flows, but each flow has its own cross-domain requirements,
given by the CLE.

Every component and flow has a label corresponding to a CLE.

A flow CLE gives the cross domain requirements for that flow. It has a level,
and a list of remote levels which are allowed, denied, or redacted
("direction" and "oneway" are ignored for now). For now, "redact" is treated
as identical to "allow".

A component CLE gives the cross domain requirements for that component. It has
a level, and a list of CDFs. Each CDF has a remote level, and a set of argtaints
(direction, codtaints, and rettaints are ignored for now. The guarddirective for
all component CDFs is assumed to be "allow").

The cdf for a node additionally has a set of argtaints, which give the labels of
edges. (labels allowed on inflows, followed by labels allowed on outflows).
C.argtaints is a list corresponding to C.inflows ++ C.outflows, that is,
argtaints[0] is a list of acceptable taints for C.inflows[0].

If a CLE is silent on an intra-domain flow, it is allowed. If a CLE is silent
on a cross-domain flow, it is denied.

## First: sanity checking

While the model is being encoded, the python will sanity check the
application model and report errors with "error during encoding: foobar".
Here is a non-exhaustive list of sanity checks.

1. in topology, all elements must have component field, and component values must be unique
2. each topology element (component) must have a CLE label
3. each component has inFlows and outFlows
4. in messages, all elements must have a name field, and the name values must be unique
5. each element of messages must have a topic, schemaType, and schemaFile (these are otherwise ignored by the checker)
6. in cles, all elements must have a cle-label field, whose value must be unique
7. in cles, all elements must have a cle-json field (for CLE-JSON portion there is a schema, see https://github.com/gaps-closure/mules/blob/develop/cle-spec/schema/cle-schema.json, but no schema defined yet for overall design spec)
8. every element of flows, must have a flowID, a message, and a cle label
9. all foreign keys (e.g., flow id, message name, cle label used anywhere) must exist (e.g., respectively in flows, messages, cles)
10. a single flow id is used as an inflow exactly once and an outflow exactly once
11. flow CLEs don't have taints, while component CLEs do
12. XXX: cle label corresponds properly to message name, level, and remotelevel --> label can be anything, but cle-json must be sane
13. for each topology element (component), the length of argtaints in its component CLEs should match length(inflows ++ outflows) of the component
14. for each topology element (component), the codtaints and rettaints in the cle-json corresponding to its label must be empty
15. cdf elements in a cle-json should have different remote levels
16. warn (but not prohibit) levels/remote-levels that are defined and never used (no component is in that level)
17. warn (but not prohibit) messages that are defined and never used (in any flow)
18. warn (but not prohibit) labels that are defined and never used (in any component or flow)

## Second: consistency and minimum required ruleset

Once the model is encoded, a set of consistency assertions should be added to
the solver to generate a model for which there exists one or more rulesets under which
the application can work (if the application is inconsistent, no such ruleset
will exist, and the solver will report unsat). The consistency requirements on flows
and components are listed below (TODO: not comprehnesive, more to come).

### Flow consistency

1. Intra-domain message flow cannot be denied, not enforceable
2. The level and remotelevel of flowCLEs are consistent with the levels of the components that have it as inflow/outflow
3. Message allowed from one enclave to another by label on one flow, but exchange of the same message across the same domains is disallowed by label on another flow (see example below)

Sample inconsistency is as follows:

F1: C1 --> C2
F2: C3 --> C4

F1.message == F2.message

C1.color == C3.color
C2.color == C4.color

F1.cle allows C1.color -> C2.color
F2.cle denies/is silent on C3.color -> C4.color

conflict! because F1 and F2 have the same message, and the message is both
denied and allowed from C1.color -> C2.color

There is no set of rules which can enforce this - i.e. the system is
infeasible/not consistent

### Component annotation consistency
1. For each argtaint in component C, C.inflows[i] must have a label which is
in C.argtaints[i].
2. For each argtaint in component C, C.outflows[i] must have a label which
is in C.argtaints[len(C.inflows) + i].
3. For each argtaint in component C corresponding to an inflow, the
inflow's remote level must be C.level, and for each argtaint in C corresponding
to an outflow, the outflow's level must be C1.level.

## Third: checking against the provided rules

The rules JSON file gives the set of cross-domain flows which are allowed (all
intra-domain flows are automatically allowed) It's ok for the rules to allow
a flow which is unneeded by the application (overly permissive). But it's
not ok for the rules to deny a cross-domain flow that is necessary for the
application (not permissive enough).

Rules are flow-level. "msg": orange -> green, means all flows carrying "msg" are
allowed to have level == "orange", and remotelevel == "green" in their CLEs
(again, intra-domain flows are allowed by default). Any cross-domain flow which
is not in the rules is denied.

The rules should be checked against the application after the self-consistency
of the application is enforced and a minimal required ruleset is found. Checking
the correctness of the rules/application means checking: is the ruleset ALLOWING
the necessary flows in order for the application to work? i.e. it does not deny
any message flows that exist in the minimal required ruleset.

## Beyond consistency checking

Later (post February demo) we may extend this checker to accept inputs in which only a subset of the components and flows are assigned a label, and have the checker find a satisfying assignment using the available cles. This will require relaxing the sanity checker to allow missing labels. We can further extend this to include optimization criteria that limit the number of messages that go cross-domain, while honoring the labels on the components that are pinned.

## On Component CDF Design

The application model is incorrectly specified right now. As an example, the
ISRM CLE should look like this eventually, where there are multiple cdfs, one
for each remote level, and the argtaints only include matching level/remotelevel
messages.

```
{
    "cle-label": "ISRM_CLE_LABEL",
    "cle-json": {
        "level": "purple",
        "cdf": [
            {
                "remotelevel": "orange",
                "direction": "egress",
                "guarddirective": {
                    "operation": "allow"
                },
                "argtaints": [
                    [ "COMPONENT_HEARTBEATS_ORANGE_PURPLE" ],
                    [ "UPDATE_MISSION_PLAN_ORANGE_PURPLE" ],
                    [ "REQUEST_ISRM_DETECTIONS_ORANGE_PURPLE" ],
                    [ "COMPONENT_HEARTBEATS_ORANGE_PURPLE" ],
                    [ ],
                    [ ],
                    [ ],
                    [ ],

                    [ ],
                    [ ],
                    [ "RECEIVE_ISRM_DETECTIONS_PURPLE_ORANGE" ],
                    [ "COMPONENT_HEARTBEATS_PURPLE_ORANGE" ],
                    [ "COMPONENT_HEARTBEATS_PURPLE_ORANGE" ],
                    [ ],
                    [ ]
                ],
                "codtaints": [
                ],
                "rettaints": [
                ]
            },
            {
                "remotelevel": "purple",
                "direction": "egress",
                "guarddirective": {
                    "operation": "allow"
                },
                "argtaints": [
                    [ ],
                    [ ],
                    [ ],
                    [ ],
                    [ "RECEIVE_EOIR_DETECTIONS_PURPLE_PURPLE" ],
                    [ "COMPONENT_HEARTBEATS_PURPLE_PURPLE" ],
                    [ "RECEIVE_RDR_DETECTIONS_PURPLE_PURPLE" ],
                    [ "COMPONENT_HEARTBEATS_PURPLE_PURPLE" ],

                    [ "REQUEST_EOIR_DETECTIONS_PURPLE_PURPLE" ],
                    [ "REQUEST_RDR_DETECTIONS_PURPLE_PURPLE" ],
                    [ ],
                    [ ],
                    [ ],
                    [ "COMPONENT_HEARTBEATS_PURPLE_PURPLE" ],
                    [ "COMPONENT_HEARTBEATS_PURPLE_PURPLE" ]
                ],
                "codtaints": [
                ],
                "rettaints": [
                ]
            }
        ]
    }
```

Prepare an example that takes this into account, but comment it out. Use union
of all argtaints across cdfs in general, since that will still make sense for
one cdf.

## TODO list

1. In the application json, replace "purple" -> "green" and "PURPLE" -> "GREEN".
2. Build a json file "case1_rules.json" for the ruleset.
3. Write sanity checks and preliminary encoding.
3. Start by just handling flow CLEs, and checking them against the rules. Then
add argtaints/components. Check the rules and make sure they are SAT (i.e.
they give those permissions AT LEAST). Then comment out last line of rules,
and make sure it's UNSAT.
4. Make sure the application json, including component CLEs is consistent, and
get a minimum required ruleset.
