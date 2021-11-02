# Notes

## General

Use SecDesk to motivate the construction of "dumb" distributed systems from
serial programs that perhaps sacrifice efficiency for security. Take us at face
value here and enjoy the rest of the paper.

For a theoretical undergirding, the analogy to type systems provides a strong
mathematical foundation. Type-checking but with optimization! (optimization in
the sense that we want a specific partition with a minimum number of cuts).

Our idea sounds a lot like Viaduct. Can we turn it into something like,
"Approach to verifying compilation procedures of compilers like Viaduct?"

The equivalence problem is fundamentally difficult to make interesting, even
though that's the bulk of what the ECT does. It's current functionality is just
a diff with some bells and whistles, and it will continue to be so as we develop
the ECT in the direction needed by the GAPS project.

In the context of the GAPS project, while the necessity of the equivalence
problem is easy to motivate, expanding our treatment of the equivalence problem
into something worth publishing will not make any progress on the GAPS project
and is thus a lesser candidate for a DARPA sponsored paper.

What will become increasingly complex with time is the compliance problem.
Compliance is also not just a verification issue, but a security issue which
falls into the "formal methods for security" research space that Rajesh is
encouraging us to target. Compliance should be the focus of a paper which DARPA
has its stamp on.

The GAPS project as a whole is really about the design of special, extremely
security critical distributed systems in an effective and verifiable way. The
Peraton folks are working on making it effective; the programmer can describe a
distributed system in the form of a single program, while still being explicit
about what functionality lies in each distributed piece. This is effective,
simplified distributed system design. Our contribution, at a bird's eye view,
should be about making the effectively-constructed distributed system carry
security guarantees. That is, it is "secure by construction". So our work
broadly falls into the "making distributed systems secure by construction using
formal methods" research space and our paper should position itself as such.

## chong2016report

pg.4) SVA, KCoFI, CPI, Verve. Apparently one of these verifies "control flow
integrity". I should look into that, sounds relevant to us.

pg.4) "Formal methods also provide secure-by-construction methods for building
systems, including program synthesis" Can partitioning be cast as a
secure-by-construction method for building a system? If the partitioning
procedure is verified?

pg.5) "Differential privacy [43, 41, 42] provides a strong compositional formal
notion of privacy". Definitely investigate

Hard for us to target theoretical rigor, so instead target "transition to
practice", "interoperability", and good "abstractions"

pg.18) Verifying S3? How was this done?

pg.19) Distributed systems should be verified incrementally. Ours is a
distributed system, and we tackle one piece of it.
