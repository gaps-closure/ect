## Example verification steps: simple example

Input: `example1-refactored.c`, `example1-refactored.json`

Assume there is at least one pass over the entire LLVM AST.

This example is missing some info that needs to be culled from the label
definition in the json file, based on the name of the label.

- C file has PURPLE annotation around b variable in `get_b()`.
- In LLVM, this shows up in the globals as `@get_b.b` because it's a static variable.
- As we parse the LLVM, we see this global and remember it as a VAR_STATICFUNCTION
from the view of the PDG.
- When the LLVM annotations are parsed, we see that `@get_b.b` has an annotation
attached to it, the PURPLE label. We remember/encode that the label is assigned
to the definition.
- We examine the json file for the PURPLE label, and see that it has level "purple"
(among other potentially useful info, that will also need to be encoded for
more complex cases).
- We assign the node defining `@get_b.b` to the "purple" enclave.
- When we parse the `get_b()` function, we see `@get_b.b` used, meaning there
is a DATADEP_DEFUSE edge between the definition of `@get_b.b` and each INST
node that uses the variable.
- This forces the entire `get_b()` function to be in the "purple" enclave. Why?
  - If a variable definition annotated with a label is used at some INST node,
  the label's enclave assignment is propagated to that node.
  - If any INST node in a function is assigned to an enclave, every node in
  the function, and the function definition, must be assigned to that enclave,
  because splitting is only done at function boundaries.
- We can encode these rules in a constraint solver like so (assume we have
  a mapping between integer ids and PDG nodes):

```
;;; enclave assignment function
(declare-fun enclave (Int) String) ; string for readability, but this should be an integer

;;; edge functions
(declare-fun datadep-defuse (Int Int) Bool)
(declare-fun controldep-entry (Int Int) Bool)

;;; rules

; enclave domain
(assert (forall ((x Int)) (or (= (enclave x) "purple") (= (enclave x) "orange"))))

; function definitions must be in the same enclave as their instructions
(assert (forall ((x Int) (y Int)) (=> (controldep-entry x y) (= (enclave x) (enclave y)))))

; two instructions in the same function must be in the same enclave
(assert (forall ((x Int) (y Int) (z Int))
                (=> (and (controldep-entry x y) (controldep-entry x z))
                    (= (enclave y) (enclave z)))))

; instructions connected to a definition by a DATADEP_DEFUSE must be in the same
; enclave as their definition
(assert (forall ((x Int) (y Int)) (=> (datadep-defuse x y) (= (enclave x) (enclave y)))))

; let: 123 be the id of the VAR_STATICFUNCTION node which defines @get_b.b
;      456 be the FUNCTIONENTRY node which defines get_b()
;      789 be an INSTR node which uses @get_b.b

;;; partial enclave assignments derived from labels
(assert (= (enclave 123) "purple"))

;;; PDG edges determined by parsing LLVM
(assert (datadep-defuse 123 789))
(assert (controldep-entry 456 789))
; plus (controldep-entry 456 X) edges for all nodes X in get_b()

(check-sat)
(get-model)
```

- The `enclave` function serves as an assignment of PDG nodes to enclaves -
checking the assignment of each node in the model in this case would result in
all nodes in `get_b()` being assigned to PURPLE.

## Harder example

Chasing the `ewma` variable in `ewma_main()`.
