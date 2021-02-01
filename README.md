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
3. Z3 version 4.8.8, whose header files and libraries ECT assumes are in the directory named `z3-4.8.8-x64-ubuntu-16.04`

Using Template Haskell exposed a linking issue: `LD_LIBRARY_PATH` needs to be specified during the build process:


```
wget -qO- https://get.haskellstack.org/ | sh
apt install llvm-9 llvm-9-dev
wget https://github.com/Z3Prover/z3/releases/download/z3-4.8.8/z3-4.8.8-x64-ubuntu-16.04.zip
unzip z3-4.8.8-x64-ubuntu-16.04.zip
LD_LIBRARY_PATH=z3-4.8.8-x64-ubuntu-16.04/bin stack build
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

The program expects three filenames: the refactored .ll file and two partitioned .ll files, e.g.,

```
stack run -- examples/example1/example1-refactored-9.ll examples/example1/example1-orange-9.ll examples/example1/example1-purple-9.ll
stack run -- --entry-function ewma_main examples/example1/example1-refactored-9.ll examples/example1/example1-purple-9.ll examples/example1/example1-orange-9.ll
stack run -- --entry-function ewma_main examples/example1/example1-refactored-9.ll examples/example1/example1-purple-9-newbb3.ll examples/example1/example1-orange-9.ll
```

## Running HLint

This is a Haskell style checker

```
stack install hlint
hlint src --report
```
