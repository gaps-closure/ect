# Compliance Verifier Requirements

Documenting the formal requirements of the compliance verifier.

## Inputs

- Original program LLVM IR with security annotations (`refactored.ll`).
- Partitioned program LLVM IR with security annotations (`orange.ll`, `purple.ll`).
- CLE-JSON describing security rules (`all.clemap.json`).

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
