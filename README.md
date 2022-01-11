# Equivalence Checking Tool (ECT)
![alt-text](ect-workflow.png)

This tool verifies the equivalence between the refactored program and
those in the various enclaves by checking, function-by-function, that
the generated code has been paritioned without undue modification and
will thus behave like the refactored code.  The tool, written in
[Haskell](https://www.haskell.org/), loads both programs then starts
establishing their equivalence.  As it proceeds, it construct a
modular, bottom-up proof in the
[Z3](https://github.com/Z3Prover/z3/wiki) theorem prover that is both
checked as the tool proceeds and written out in
[SMT-LIB](http://smtlib.cs.uiowa.edu/) format, a human- and
machine-readable format suitable for auditing.

## Building

ECT has been developed under Ubuntu 19.10 x86_64 Linux. It builds
under the [Haskell Tool
Stack](https://docs.haskellstack.org/en/stable/README), which is
designed for reproducible builds by allowing the user to specify
specific versions of the compiler an libraries and has three main
dependencies:

1. LLVM 9.0.0, installed under Ubuntu with `apt install llvm-9 llvm-9-dev`
2. The [llvm-hs](https://hackage.haskell.org/package/llvm-hs) and [llvm-hs-pure](https://hackage.haskell.org/package/llvm-hs-pure) packages, which stack downloads and compiles against the LLVM library it finds through `llvm-config-9` or `llvm-config` (The exact procedure is in [llvm-hs/Setup.hs](https://github.com/llvm-hs/llvm-hs/blob/llvm-9/llvm-hs/Setup.hs))
3. Z3 version 4.8.8, whose header files and libraries ECT assumes are in the directory named `z3-4.8.8`

Using Template Haskell exposed a linking issue: `LD_LIBRARY_PATH` needs to be specified during the build process:

```
LD_LIBRARY_PATH=z3-4.8.8/bin stack build
stack install
```

If the LLVM library builds or links improperly, you may remove it to force a rebuild with

```
stack exec -- ghc-pkg unregister --force llvm-hs
```

Generate documentation with

```
LD_LIBRARY_PATH=z3-4.8.8-x64-ubuntu-16.04/bin stack build --haddock
```

The documentation is built deep under the .stack-work directory under doc/ect-0.1.0.0/. Find it with

```
chromium-browser $(stack path --local-doc-root)/ect-0.1.0.0/index.html
```

## Running

ECT accepts `N+1` directory names, followed by `N+1` filenames, 
where `N` is the number of hardware enclaves in the partitioned program.
The first `N` directory names should point to directories containing the 
`.ll` files for each hardware enclave. The final directory name should 
hold the `.ll` files for the refactored program. The following `N+1`
arguments should be the JSON files, in order, which give the set of CLE
labels for each hardware enclave, and the refactored program.

An entry function to start checking equivalence from may be given as an
optional argument. ECT defaults to `main` otherwise.

```
stack run -- stack run -- \
examples/example1/llvm/orange \
examples/example1/llvm/purple \
examples/example1/llvm/refactored \
examples/example1/clemaps/orange.json \
examples/example1/clemaps/purple.json \
examples/example1/clemaps/refactored.json

stack run -- --entry-function ewma_main \
examples/example1/llvm/orange \
examples/example1/llvm/purple \
examples/example1/llvm/refactored \
examples/example1/clemaps/orange.json \
examples/example1/clemaps/purple.json \
examples/example1/clemaps/refactored.json
```

You can also run any example in the `examples` directory using the `run_ex.sh`
script:

```
scripts/run_ex.sh example1
```

The `.ll` and `.json` files given as input to ECT can be automatically 
generated from the C source through a number of preprocessing steps. To 
re-run this process and generate the appropriate `clemaps` and `llvm`
directories given an example in `examples` containing at least the C 
source files, use the `build_ex.py` script:

```
scripts/build_ex.py example1
```

This step additionally depends on a number of Python packages and assumes
ECT is installed as part of the [CLOSURE Toolchain](https://github.com/gaps-closure). See [CAPO](https://github.com/gaps-closure/capo/tree/master).

## Running HLint

This is a Haskell style checker

```
stack install hlint
hlint src --report
```
