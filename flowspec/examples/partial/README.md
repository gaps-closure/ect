## Description of files

These two examples are modifications of `examples/valid/case1.json` where some
fields are omitted and the verifier is expected to fill them with correct
values.

`case1_valid.json` has every flow label omitted, and the level of the MPU_CLE_LABEL
omitted. The verifier finds a correct solution which is identical to `case1.json`,
and writes it to results.txt.

`case1_invalid.json` has the flow label of 1201 omitted, and the level of
MPU_CLE_LABEL changed to green. This is invalid, because MPU must be in the
'orange' enclave. The verifier determines that the problem is unsatisfiable and
writes the explanation to results.txt. That explanation is reprinted for
convenience in `case1_invalid_explanation.json`.
