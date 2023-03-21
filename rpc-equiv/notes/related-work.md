## Related work

Since this is interesting stuff, there is probably a lot of cutting edge work on it! We want the reading list to cover general semantic analysis of RPC code or concurrent code, general code analysis via SMT, and their intersection.

## Terms

- component based software engineering
- software components
- glue code
- marshalling, unmarshalling
- compositional verification

## Papers

- https://dl.acm.org/doi/pdf/10.1145/3573105.3575684 (MSR folks, use case of F* and EverParse)
- https://rtg.cis.upenn.edu/HACMS/report.pdf (Weirich at UPenn - They did it! They proved the generator! Using VST. So VST is a viable option, if I can figure out how to use it. Also, what is our contribution atop this paper? Inclusion of a network? I suppose.)
- https://drops.dagstuhl.de/opus/volltexte/2021/13927/pdf/LIPIcs-ITP-2021-32.pdf (CertikOS folks + Penn folks, ITrees and VST use case)
- C semantics in z3: https://people.csail.mit.edu/stellal/papers/masters-thesis.pdf
- https://www.cse.unsw.edu.au/~ikuz/publications/fm.15.pdf (M Fernandez, J Andronick, G Klein, I Kuz). "The main challenge of this work is in generating an Isabelle/HOL proof script that corresponds to a generated implementation. Since the implementation is derived from a system architecture description, and the existing code generator is largely string- and template-based, it is infeasible to provide a single proof for the correctness of any possible glue code (that is, to verify the generator itself). Instead, we use a translation validation approach and build on our previous work that demonstrated the absence of undefined behaviour in component platform glue code"

## Backburner

- Serval tool (Ronghui)
- Aarti gupta, sat modulo graph reachability
- Z3/pb_solver.cpp
- Clemens eisenhofer
- Jeff huang texas AM
- Satisfiability modulo ordering consistency theory for multithreaded program verification
- Feihe.github.io
- Mat.tepper.cmu.edu/TOURN
- Rise4fun
- Alex Nadel
- Backing backtracking
- Sat/sat_solver.cpp
- Umut A Acar’s thesis
- Expression Continuity and the formal differentiation of algorithms
- Synthesis of constraint based local search algorithms from high level models
- Implementing additional reasoning into an efficient look ahead sat solver
- User Propagators for Custom Theories in SMT Solving bjorner clemens 2022
- AAAI Pascal 2007 paper: code generation for propagators - one research angle

## What's already been done?

- Automatic RPC stub generation verification via Isabelle/HOL for co-located components on SeL4.
- Deep verification using VST of a generic key-value server.

## What are the weaknesses / extension opportunities?

- Extend specific case to generated case
- Enforce strong memory isolation
- Extend to a network context
- Extend to platform independent C/LLVM
- Use Alive/SMT instead of Isabelle/HOL