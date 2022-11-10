## Goals

One of the major weaknesses of our OOPSLA submission was the inability to say anything interesting about RPC communication, the area where most of the new (potentially buggy) code is generated.

We would like to prove that this code "doesn't do anything". A program with RPC replacement should behave the same as a program without the RPC replacement. We can call this "equivalence under RPC". This is an obvious barrier to the verification of any program partitioner in any language, so it is rather easy to motivate, from the perspective of DARPA and the GAPS project. We can extend it to FFI boilerplate if we want a more general use-case to motivate research.

In order to prove this, we need several things:

- A small and well-defined abstraction layer representing network communication, which doesn't do anything for us except establish connections, send bits over the network, and receive bits. The ZMQ library may be able to fulfill this role.
- A precise definition of what exactly equivalence means in this context. The two applications are obviously not going to be equivalent in the sense of their outputs and effects on memory being the same. So what are we actually talking about?
- A semantic model which works over multiple programs that run concurrently, or else a way to sidestep this issue. You need two running processes to communicate via RPC, so concurrency necessarily gets involved! The model is going to be a superset of a language model for the target language. Assuming an SMT approach, the best way to bootstrap the kind of language model we want will be to extend Alive (I'm guessing).
- An automated analysis over the semantic model which determines equivalence, or determines that a particular set of operations "does nothing".

I want to do this with SMT (z3) because it's what I know, and there's proof that it can be useful (Alive).Gotta start somewhere!

## Paper plan

TK