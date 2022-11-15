## Related work

Since this is interesting stuff, there is probably a lot of cutting edge work on it! We want the reading list to cover general semantic analysis of RPC code or concurrent code, general code analysis via SMT, and their intersection.

## Terms

- component based software engineering
- software components
- glue code
- marshalling, unmarshalling
- compositional verification

## Papers

- https://rtg.cis.upenn.edu/HACMS/report.pdf (Weirich at UPenn - check out!)
- https://www.cse.unsw.edu.au/~ikuz/publications/fm.15.pdf (M Fernandez, J Andronick, G Klein, I Kuz)
- https://apps.dtic.mil/sti/pdfs/AD1039782.pdf (the above paper is mentioned in this big overview of a DARPA-adjacent project)
- https://drops.dagstuhl.de/opus/volltexte/2022/16736/pdf/LIPIcs-ITP-2022-27.pdf (integration in larger project?)
- https://drops.dagstuhl.de/opus/volltexte/2021/13927/pdf/LIPIcs-ITP-2021-32.pdf (suggested approach to model from Ben)

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

## What are the weaknesses / extension opportunities?

- Enforce strong memory isolation
- Extend to a network context
- Extend to platform independent C/LLVM
- Use Alive/SMT instead of Isabelle/HOL