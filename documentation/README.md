# Compliance Verifier Requirements (OUTDATED)

Documenting the formal requirements of the compliance verifier.

## Inputs

- Original program LLVM IR with security annotations (`refactored.ll`).
- Partitioned program LLVM IR with security annotations (`orange.ll`, `purple.ll`).
- CLE-JSON describing security rules for original program (`all.clemap.json`).
- CLE-JSON for each file in the partitioned program (`orange.json`, `purple.json`).

## Outputs (in computed order)

1. Assertion of the sanity of the CLE-JSON input, accompanied by:
    - Violations, if any.
    - Expected input format for a valid CLE-JSON file, if any violations.

2. Assertion of the validity of the input original program, accompanied by:
    - A human-readable listing of any missing or incomplete annotations (e.g.
    all variables involved in cross-domain calls need annotations). Missing
    or incomplete annotations are invalid.
    - (Internal) Mapping between annotations and program variables/statements,
    which is passed to step 3.

3. Assertion of whether the original program is compliant with the CLE-JSON,
accompanied by:
    - A human-readable output of formal checks passed/failed for each
    annotation/label (`non_compliance == any(failed_checks)`).
    - A machine-checkable formal proof of compliance or lack thereof.
    - A human-readable listing of differences between the program annotations
    and the CLE-JSON (i.e. functions/annotations with no relevant CLE labels,
    and CLE labels which are unused).

4. Assertion of the validity of the partitioned program, accompanied by:
    - A human-readable listing of annotations dropped fron the original program,
    if any (dropped annotations are invalid).
    - A human-readable listing of annotations non-trivially modified from the
    original program, if any (modified annotations are invalid).
    - A human-readable listing of annotations added in the partitioned program,
    if any.
    - A human-readable listing of any missing or incomplete annotations (e.g.
    all variables involved in cross-domain calls need annotations). Missing or
    incomplete annotations are invalid.
    - (Internal) Mapping between annotations and program variables/statements,
    which is passed to step 5.

5. Assertion of whether the partitioned program is compliant with the CLE-JSON,
accompanied by:
    - A human-readable output of formal checks passed/failed for each
    annotation/label (`non_compliance == any(failed_checks)`).
    - A machine-checkable formal proof of compliance or lack thereof.
    - A human-readable listing of differences between the program annotations
    and the CLE-JSON (i.e. functions/annotations with no relevant CLE labels,
    and CLE labels which are unused).
    - A human-readable listing of all data which flows across the cut, and
    the provenance of that data.

6. (Extra) A graph visualizing the cut.

## Compliance checks

Here we describe the formal checks made for outputs 3) and 5) above. In general,
there are three sources of security information:

1. The CLE-JSON
2. The program annotations
3. The program itself

For both the original program and the partitioned program, we need formal
proof that:

1. The set of security properties captured by the CLE labels is equivalent
to the set of security properties captured by the program annotations.
2. That set of security properties is actually enforced by the code (this
requires more formal control flow and dataflow analysis).

The formal compliance checks for outputs 3) and 5) must be sufficient to prove
both of these.

For point 1:

- Translate annotations and cle-labels to the same constraint-solver format and
assert their equality.

For point 2:

- Each annotation may directly or indirectly assert one or more assignments of
variables/functions to enclaves.
- From the control flow and dataflow of the program we can derive rules for
how assignments cascade between functions and variables.
- These assertions and rules, given to a constraint solver, must be satisfiable.

The constraints and language for formulating them are described in
capo/formal/ontology/conflict_analyzer.md.

## Limitations

- No function pointers.
- ...etc.

## Meeting notes 05/04/21

- Separate CLE-JSON for each file (refactored, orange, purple)
- Semantics are not reflected by annotations, only by JSON - no need to 'compare'
annotations to CLE-JSON. Annotations are only CLE labels.
- DO need to compare orange/purple CLE-JSON to original CLE-JSON to make sure
they express the same things, and that they are sane.
- The CLE labels in `orange.json` and `purple.json` should together, contain all of
the CLE lables in `original.json`, where every label in `original.json` with level
`orange` appears in `orange.json`, and every label in `original.json` with level
`purple` appears in `purple.json`. Update: FALSE.
- The only labels in `orange.json` and `purple.json` that don't appear in
`original.json` will be TAGS, which must differ only in their level.
- Variables and functions that are annotated in the original must have a matching
annotation in the partitioned code.
- Once JSON agreement is determined, code w/ annotations
is checked to see if it complies to security rules via dataflow/control flow
analysis, using constraint solving documented in conflict_analyzer.md.

- For meeting with Mike: need a machine with Ubuntu 20.04, vscode, and docker.

## New steps

- Is each JSON individually sane (i.e. formatted correctly, levels OK)?
    - TODO: checks
- Do the orange and purple tags agree? Are orange and purple consistent with
each other?
    - TODO: checks
- Are the orange and purple JSONs, together, consistent with the original JSON?
Is all of the necessary information from the original preserved?
    - TODO: checks
- Is each `code.ll` file consistent with it's matching JSON? Do all annotations
have a corresponding label in the JSON? Are there any labels in the JSON that
go unused in the code?
    - TODO: checks
- Is the original program semantically consistent with its annotations? That is,
can the original program be partitioned (each function/instruction assigned to
exactly one enclave, plus other security rules) in a way that conforms to the
annotations/JSON?
    - For checks, see conflict_analyzer.md
- Likewise for the partitioned program.
    - For checks, see conflict_analyzer.md
- Variables and functions that are annotated in the original must have a matching
annotation in the partitioned code.
- Output formal machine-checkable proof and graph of the cut.

## Meeting notes 05/25/21

- Q: Bidirectional vs ingress/egress?
- Q: Distinguish between tags and labels? E.g. do labels always have certain
fields, tags don't. Is my way of differentiating tags and labels sensible?
- Q: Do tags have ever add semantic meaning from a security perspective?
- Q: Is my method for inter-json checks sound? Check refactored is subset, then
compare tags. Is refactored always subset?
- Q: Can you tell enclave by looking at the level of the tags?
- Q: Refactored json for example1? No tags? Where is TAG_RESPONSE_GET_A?
- Q: Difference between ingress and egress for case1 xdcc?
- Q: What are gapstags?
- Q: Will we ever see a non-allow guarddirective? When?
- Q: What does oneway do?
- Q: What does ingress/egress do?

- For Stephen: We need to unify our approach to JSON agreement with our
approach to llvm agreement. Enclave namespaces must be separate. First
validation checks, then inter-agreement within a reference environment which
is constant for each participant in the agreement. Agreement is subject to
rules which are encoded in Z3.

- During ProveEquiv, construct both PDGs (partitioned and refactored), with
annotations pointing to labels, and enclave assignments. Once proveEquiv is
done, encode each PDG into Z3 (separately), encode PDG rules from,
conflict_analyzer.md, encode label definitions from validated cle-json
specific to this PDG, and check. PDG nodes have enclave assignment attribute,
which the rules constrain, and which is already filled for partitioned PDG,
not for refactored. This covers the JSON<->LLVM check for the refactored and
partitioned program.

- Inter-PDG checks: how? If names can change, how do we match up variables
between original/refactored? This is the LLVM<->LLVM check between the
refactored and partitioned program.
