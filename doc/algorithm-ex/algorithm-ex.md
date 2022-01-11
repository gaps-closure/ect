## Verification algorithm example machinery

Input: `example1-refactored.c`, `example1-refactored.json`

C file has the `PURPLE` annotation around the `b` variable in `get_b()`:

```
#pragma cle begin PURPLE
  static double b = 1.0;
#pragma cle end PURPLE
```

In LLVM, this shows up in the globals as `@get_b.b` because it's a static
variable:

```
@get_b.b = internal global double 1.000000e+00, align 8, !dbg !15
```

When the LLVM annotations are parsed, we see that `@get_b.b` has an annotation
attached to it, the PURPLE label:

```
@llvm.global.annotations = appending global [3 x { i8*, i8*, i8*, i32 }]
[
  ...,
  { i8*, i8*, i8*, i32 }
  { i8* bitcast (double* @get_b.b to i8*),
    i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0),
    i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0),
    i32 47
  }
```

We examine the json file for the PURPLE label, and see that it has level
"purple" (there is more to encode with labels, but we stick to the level for
this simple example):

```
{
  "cle-label": "PURPLE",
  "cle-json": {
    "level": "purple"
  }
}
```

When we parse the `get_b()` function, we see `@get_b.b` used, meaning there
is a def-use dependency between the definition of `@get_b.b` and the instruction
that uses it:

This forces the entire `get_b()` function to be in the "purple" enclave. Why?

  - If a variable definition is annotated with a label, that definition must
  obviously be in the enclave denoted by the label's "level".
  - If a variable definition annotated with a label is used by some node
  (source lines at partition granularity are called "nodes"), the variable
  definition's enclave assignment must be propagated to that node (so that the
  definition and use are in the same enclave).
  - If any instruction in a function is assigned to an enclave, every node in
  the function, and the function definition, must be assigned to that enclave,
  because splitting is only done at function boundaries.

We can encode these rules and others in a constraint solver as in
`manual-encode.smt2`, using the format given by `formal/z3-verifier.md`.
