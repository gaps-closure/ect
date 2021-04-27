# PDG-verifier (PDGv)

TODO: Description.

## Requirements

- TODO: Write a starter formal requirements document, based on
capo/formal/ontology/conflict_analyzer.md and the verifier doc that mike
emailed (and the PDG spec).

## Preliminary plan (outdated)

- Take in partitioned program as LLVM IR parsed to LLVM.AST, as in the ECT.

- Parse LLVM ASTs to a single PDG data structure in Haskell, which conforms
to the PDG specification detailed at
https://github.com/ARISTODE/program-dependence-graph/wiki

- Take in topology.json as a Haskell Topology data structure which captures the
topology.

- Link topology elements to PDG nodes in Haskell.

- Encode PDG data structure in Z3 using Haskell's Z3.Monad library.

- Encode the topology in Z3, by adding a 'color' property to each PDG node, and
mapping each constructor for a topology element to a set of constraints on the
graph coloring. Each node can only have one color, so a valid, correct
partition must assign colors to nodes consistently.

- Check validity with Z3 to verify. Output validity and, if invalid,
an explanation of why.

#### PDG data structure in Haskell and Z3

TK

#### Topology data structure in Haskell

TK

#### Mapping of topology elements to SMT-LIB constraints on PDG elements

TK
