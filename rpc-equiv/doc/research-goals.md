## Goals

One of the major weaknesses of our OOPSLA submission was the inability to say anything interesting about RPC communication, the area where most of the new (potentially buggy) code is generated.

We would like to prove that this code "doesn't do anything". A program with RPC replacement should behave the same as a program without the RPC replacement. We can call this "equivalence under RPC". This is an obvious barrier to the verification of any program partitioner in any language, so it is rather easy to motivate, from the perspective of DARPA and the GAPS project. We can extend it to FFI boilerplate if we want a more general use-case to motivate research.