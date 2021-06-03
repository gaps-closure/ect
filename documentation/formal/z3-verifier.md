This document describes how an annotated LLVM file can be solved for a valid
partition of its source code into two separate enclaves which communicate via
RPC.

## Definitions

Derived from the PDG specification and `formal/cle.md`.

#### Nodes

In this document, a `Node` refers to any line in the source file which can be
assigned to an enclave. This can be a function definition, an instruction, a
global variable, etc. In this formalization, nodes are identified by a unique
integer, so they have no datatype declaration in z3.

#### Colors / Enclaves

A `Color` is a scalar type which is either `Purple` or `Orange`:

```
(declare-datatypes () ((Color Orange Purple)))
```

The end goal of solving is to assign a `Color` to each `Node`, corresponding to
its assigned enclave in the partition:

```
(declare-fun enclave (Int) Color) ; Node -> Color
```

Thus, once a model is established, the `enclave` function can be queried to
determine the partition.

#### Labels

Each `Node` is optionally labeled:

```
(declare-fun labeled (Int) Bool) ; Node -> Bool
```

Labels correspond to CLE labels (see `formal/cle.md`) and confer a number of
properties on labeled nodes. For the time being, we omit all properties except
the `level` and `remotelevel` of the label and assume there is only one CDF,
to simplify this first-draft formalization.

```
(declare-fun level       (Int) Color) ; Label -> Color
(declare-fun remotelevel (Int) Color) ; Label -> Color
```

#### Dependencies

Nodes may have control or data dependencies between each other, which can
propagate enclave assignments. These dependencies are conceptualized as directed
graph edges:

```
;;; Node -> Node
(declare-fun ctrldep-callinv (Int Int) Bool)
(declare-fun ctrldep-callret (Int Int) Bool)
(declare-fun ctrldep-entry   (Int Int) Bool)
(declare-fun ctrldep-br      (Int Int) Bool)
(declare-fun ctrldep-other   (Int Int) Bool)
(declare-fun datadep-defuse  (Int Int) Bool)
(declare-fun datadep-raw     (Int Int) Bool)
(declare-fun datadep-ret     (Int Int) Bool)
(declare-fun datadep-alias   (Int Int) Bool)
```

## Rules

Adapted from `capo/formal/ontology/conflict_analyzer.md`.

#### Basic

A labeled node must be in the enclave given by the label:

```
(assert (forall ((x Int))
  (=> (labeled x) (= (level x) (enclave x)))
))
```

#### Control dependencies

Control dependencies which are not function calls or returns must be between
two nodes in the same enclave.

```
(assert (forall ((x Int) (y Int))
  (=>
    (not (or (ctrldep-callinv x y) (ctrldep-callret x y)))
    (= (enclave x) (enclave y))
  )
))
```

Two nodes involved in a function call control dependency may only be in
different enclaves if the function being called is labeled, and the level of
the label matches the callee enclave and the remotelevel of the label matches
the function definition enclave.

```
(assert (forall ((x Int) (y Int))
  (=>
    (ctrldep-callinv x y)
    (ite
      (labeled y)
      (and (= (enclave x) (remotelevel y)) (= enclave y (level y)))
      (= (enclave x) (enclave y))
    )
  )
))
```

#### Data dependencies

Instructions which refer to definitions (def-use dependency) must be in the
same enclave as those definitions:

```
(assert (forall ((x Int) (y Int))
  (=> (datadep-defuse x y) (= (enclave x) (enclave y)))
))
```

TODO

#### Taint propagation

TODO

## Implementation notes

Use haskell, tag on to existing main.hs, but only operate on refactored file
and refactored json.

Encode base environment and constraints as above. Pass over LLVM AST, assign
each node an integer, encode labels and dependencies over integers. Remember
to encode negations as well (i.e. labeled is false for all unlabeled nodes) to
prevent any z3 shenanigans.
