# PDG-verifier (PDGv)

Verify that the partitioned program conforms to the conflict-free topology
derived from conflict analysis on the original program.

## Preliminary plan

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

## Additional notes/questions

- Am I correct about where this verifier fits in the toolchain, and what it
should do?

- Where can I find the formal specification for topology.json?

## PDG data structure in Haskell and Z3

TK

## Topology data structure in Haskell

TK

## Mapping of topology elements to SMT-LIB constraints on PDG elements

TK
