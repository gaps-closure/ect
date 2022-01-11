#ifndef H_FIOBJ_NUMBERS_H
#define H_FIOBJ_NUMBERS_H
/*
Copyright: Boaz Segev, 2017-2019
License: MIT
*/

#include <fiobject.h>

#ifdef __cplusplus
extern "C" {
#endif

/* *****************************************************************************
Numbers API (Integers)
***************************************************************************** */

/** Creates a Number object. Remember to use `fiobj_free`. */

/** Creates a temporary Number object. Avoid using `fiobj_free`. */

/* *****************************************************************************
Float API (Double)
***************************************************************************** */

/** Creates a Float object. Remember to use `fiobj_free`.  */

/** Mutates a Float object's value. Effects every object's reference!  */

/** Creates a temporary Float object. Avoid using `fiobj_free`. */

/* *****************************************************************************
Numerical Helpers: not FIOBJ specific, but included as part of the library
***************************************************************************** */

/**
 * A helper function that converts between String data to a signed int64_t.
 *
 * Numbers are assumed to be in base 10.
 *
 * The `0x##` (or `x##`) and `0b##` (or `b##`) are recognized as base 16 and
 * base 2 (binary MSB first) respectively.
 *
 * The pointer will be updated to point to the first byte after the number.
 */

/** A helper function that converts between String data to a signed double. */

/**
 * A helper function that converts between a signed int64_t to a string.
 *
 * No overflow guard is provided, make sure there's at least 66 bytes available
 * (for base 2).
 *
 * Supports base 2, base 10 and base 16. An unsupported base will silently
 * default to base 10. Prefixes aren't added (i.e., no "0x" or "0b" at the
 * beginning of the string).
 *
 * Returns the number of bytes actually written (excluding the NUL terminator).
 */

/**
 * A helper function that converts between a double to a string.
 *
 * No overflow guard is provided, make sure there's at least 130 bytes available
 * (for base 2).
 *
 * Supports base 2, base 10 and base 16. An unsupported base will silently
 * default to base 10. Prefixes aren't added (i.e., no "0x" or "0b" at the
 * beginning of the string).
 *
 * Returns the number of bytes actually written (excluding the NUL terminator).
 */

/** Converts a number to a temporary, thread safe, C string object */

/** Converts a float to a temporary, thread safe, C string object */

/* *****************************************************************************
Pointer Wrapping Helper MACROs (uses integers)
***************************************************************************** */

#define fiobj_ptr_wrap(ptr) fiobj_num_new((uintptr_t)(ptr))
#define fiobj_ptr_unwrap(obj) ((void *)fiobj_obj2num((obj)))

/* *****************************************************************************
Inline Number Initialization
***************************************************************************** */


/** Creates a Number object. Remember to use `fiobj_free`. */

#if DEBUG
void fiobj_test_numbers(void);
#endif

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif