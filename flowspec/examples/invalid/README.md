## Description of files

These three files are modifications of the original case1, case2, and case3
in `examples/valid`, such that they are inconsistent and the verifier reports
that they are unsatisfiable.

`case1_edit.json` has a mislabelled CLE: a second "RDR_CLE_LABEL" replaces what
should be "External_CLE_LABEL". This duplicate label is caught by the spec
reader before solving, so no explanation is printed.

`case2_edit.json` has the flow CLE 'ALLOW_GREEN_GREEN' incorrectly use
remotelevel 'orange'.

`case3_edit.json` has an extra inflow, '2401', assigned to the 'MPU' component.
