# Introduction

## About xdcomms and the CLOSURE toolchain

A more detailed overview of the GAPS project and the CLOSURE toolchain can be found [here](https://gaps-closure.github.io/cdoc.html).

DARPA’s Guaranteed Architecture for Physical Systems (GAPS) is a research program that addresses software and hardware for compartmentalized applications where multiple parties, each with strong physical isolation of their computational environment, have specific constraints on the sharing of data (possibly including redaction requirements) with other parties, and any data exchange between the parties is mediated through a guard that enforces the security requirements.

Peraton Labs’ Cross-domain Language extensions for Optimal SecUre Refactoring and Execution (CLOSURE) project is building a toolchain to support the development, refactoring, and correct-by-construction partitioning of applications and configuration of the guards. Using the CLOSURE approach and toolchain, developers will express security intent through annotations applied to the program, which drive the program analysis, partitioning, and code auto-generation required by a GAPS application. The CLOSURE compiler toolchain interprets annotation directives and performs program analysis of the annotated program and produces a correct-by-construction partition if feasible. CLOSURE automatically generates and inserts serialization, marshalling, and remote-procedure call code for cross-domain interactions between the program partitions.

One of CLOSURE's key submodules is the Conflict Analyzer Partition Optimizer (CAPO). CAPO includes the constraint-based conflict analysis tools to determine if a partitioning is feasible. Additional tools in CAPO auto-generate the additional logic needed to make a program cross-domain enabled (i.e., data type marshalling/serialization, RPCs for cross-domain data exchange, interfacing to the device drivers of cross-domain guards, DFDL [2] and rule generation, among others).

==TODO== reword. CAPO also includes a post-partitioning verifier which checks that the partitioned program including auto-generated code is functionally equivalent to complies with developer security annotations. ==TODO== introduce xdcomms as a part of CAPO.

==TODO== Explain the need for xdcomms to be verified and to have a formal specification.

## About this document

==TODO== This document is a spec. Intended purpose: Lay down the rules and aid verification experts in understanding the problem and how to create a verified result.

==TODO== Document structure.