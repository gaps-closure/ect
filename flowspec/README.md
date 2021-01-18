## What is this?

This is a z3-backed solver/verifier for GAPS-CLOSURE application design
specifications. It verifies that specifications are self-consistent and can
find satisfying values for fields which are omitted from the specification,
such as component levels or flow labels.

In the near future, it will also be able to check specifications against
provided cross-domain message policies for correctness, and also derive minimal
versions of those policies given only the specification.

## Assumptions

The solver currently makes a number of simplifying assumptions about the
specification, as it is currently in development. I document those assumptions
here.

The simplified specification, explained below, has the following form:

```
Component
    id:          Int
    inflows:     [Flow]
    outflows:    [Flow]
    argtaints:   [FlowLabel]
    lvl:         Enum(Orange | Green)

Flow:
    id:        Int
    msg:       String
    label:     FlowLabel

FlowLabel:
    id:        Int
    local:     Enum(Orange | Green)
    remote:    Enum(Orange | Green)
```

CLE labels are split between labels for components and labels for flows - it
is assumed that no CLE label is used for both a flow and a component.

Further, the solver assumes that each component has one unique CLE label -
thus, the label information is merged with the component information, and the
only CLE labels the solver tracks explicitly are flow labels.

Message data beyond the name (`topic`, `schemaType`, and `schemaFile`) is
ignored, so the solver does not track message objects, only the message string
used by each flow.

A number of fields are omitted: `codtaints`, `rettaints`, `direction`, `oneway`,
and `guarddirective`. All directions are assumed to be `egress`, and all
operations are assumed to be `allow`.

It is assumed that the `cdf` field in each CLE label is a singleton list, and
that each argtaint is a singleton list. Finally, the solver assumes that there
are exactly two levels, `orange` and `green`.

Internally, the solver passes integer IDs to z3 and converts between IDs and
component/flow/label names, because z3 works far more quickly with integers.
Thus each component, flow, and flow label has an ID.

These assumptions will be gradually phased out as the solver matures.

## Formulas

Relationships between Components, Flows, and FlowLabels, and their fields, are
modeled as integers and functions mapping integers to other integers.

TK: The set of mathematical formulas checked by the solver.

## Testing

Several example application design specs, and the results given by the solver,
are provided in the `examples` folder, with descriptions in the respective
`README.md` files.

This solver requires z3. To install z3 for python, run:

`pip3 install z3-solver`

To use the solver, in the `flowspec` directory run:

`python3 FlowSolver.py examples/valid/case1.json`

To see all options, use:

`python3 FlowSolver.py -h`
