## Function-level contracts

==TODO==

### `Wrapper.marshall()`

The `marshall()` function is called by the `Wrapper` to marshall the incoming arguments (the arguments to the cross-domain function in the original, unpartitioned program) into one serializable data structure with error correction and a sequence number.

Arguments: `d :: Data`, `req_counter: int` (d is unpacked and may represent multiple or no arguments)

Return value: `m :: Marshalled`

Pre-conditions:

- The value of req_counter is either non-negative or `INT_MIN`.
- The `Marshalled` struct defines, in the same order as the arguments to `marshall(}`, one field of the same type and name as each argument, followed by a `Trailer`.

Post-conditions:

- For each incoming argument, the corresponding field in `m` is set to the value of that argument.
- The trailer of `m` has its `seq` field set to the value of `req_counter`.
