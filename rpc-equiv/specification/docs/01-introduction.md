# Introduction

## The GAPS project, the CLOSURE toolchain, and XDCOMMS

DARPA’s Guaranteed Architecture for Physical Systems (GAPS) is a research program that addresses software and hardware for compartmentalized applications where multiple parties, each with strong physical isolation of their computational environment, have specific constraints on the sharing of data (possibly including redaction requirements) with other parties, and any data exchange between the parties is mediated through a guard that enforces the security requirements.

Peraton Labs’ Cross-domain Language extensions for Optimal SecUre Refactoring and Execution (CLOSURE) project is building a toolchain to support the development, refactoring, and correct-by-construction partitioning of applications and configuration of the guards. Using the CLOSURE approach and toolchain, developers express security intent through annotations applied to the program, which drive the program analysis and partitioning required by a GAPS application (A more detailed overview of the GAPS project and the CLOSURE toolchain can be found [here](https://gaps-closure.github.io/cdoc.html)).

One of CLOSURE's key submodules is the Conflict Analyzer Partition Optimizer (CAPO). CAPO includes the constraint-based conflict analysis tools to determine if a partitioning is feasible for an application. Once a partition is found, CAPO automatically generates the additional code needed to make a program cross-domain enabled: datatype marshalling/serialization, RPCs for cross-domain data exchange, interfaces to the device drivers of cross-domain guards, and DFDL [2] and rule generation. This collection of code is referred to in this document as XDCOMMS, and this step of CAPO, *XDCOMMS auto-generation*.

## A verified XDCOMMS auto-generation

Dividing a program and composing it with the XDCOMMS code creates a new, distributed program. CAPO must guarantee that this new program behaves equivalently to the original, and complies with developer security annotations. 

Currently, CAPO includes a post-partitioning verifier which checks that the partitioned program is functionally identical to the original when RPC function invocations calls are substituted for their original counterparts. This check is fast and scalable because it is largely syntactic, and it succeeds in verifying that the divided code was not changed and that globally visible XDCOMMS headers and configuration do not disrupt the application's behavior. It elides, however, the possibility that the RPC wrapper functions that marshall, serialize, send, and receive data contain bugs. Buggy RPC wrapper code may send incorrect data, send data to the wrong endpoint, or handle requests in ther wrong order.

Proving that the XDCOMMS code behaves as it should requires its semantics to be formally verified against a set of correctness properties which are preserved under compilation, using trusted program verification toolchains.

## About this document

A formal verification of XDCOMMS requires a complete, formal specification of its design and the desired correctness properties. This document serves as that specification.

The code used for cross-domain communication is unique to the applications and device drivers for which it is generated. Therefore, our specification of the XDCOMMS code is paramaterized over the inputs to XDCOMMS auto-generation, and the inputs and outputs to the generator are also formally modeled. One verification approach might be similarly parameterized to prove that individual generator outputs (i.e. concrete instances of XDCOMMS code) are correct, while another might verify that the generator itself always outputs correct XDCOMMS code; in either case, the specification provides the necessary understanding of what "correct XDCOMMS code" entails; it is agnostic to which verification approach is used.

The rest of the document is divided into five sections:

- Section 2 summarizes the design and purpose of XDCOMMS, module-by-module, and informally states the correctness properties that XDCOMMS must enforce as a whole.
- Section 3 describes XDCOMMS auto-generation and formally models the inputs and outputs of the generator.
- Section 4 formally models the XDCOMMS datatypes and system design.
- Section 5 specifies the XDCOMMS initialization code, the control flow of XDCOMMS when a RPC wrapper function is called by the host application or a handler receives a message from another application, and the desired pre-conditions, behavior, and post-conditions for each relevant function.
- Section 6 lays out the formal correctness guarantees that XDCOMMS must satisfy, and argues that these guarantees are implied by the control flow and function contracts from the previous section.