#ifndef H_FIOBJ_STR_H
/*
Copyright: Boaz Segev, 2017-2019
License: MIT
*/
#define H_FIOBJ_STR_H

#include <fiobject.h>

#ifdef __cplusplus
extern "C" {
#endif

#define FIOBJ_IS_STRING(obj) FIOBJ_TYPE_IS((obj), FIOBJ_T_STRING)

/* *****************************************************************************
API: Creating a String Object
***************************************************************************** */

/** Creates a String object. Remember to use `fiobj_free`. */

/**
 * Creates a String object with pre-allocation for Strings up to `capa` long.
 *
 * If `capa` is zero, a whole memory page will be allocated.
 *
 * Remember to use `fiobj_free`.
 */

/** Creates a copy from an existing String. Remember to use `fiobj_free`. */

/**
 * Creates a String object. Remember to use `fiobj_free`.
 *
 * It's possible to wrap a previosly allocated memory block in a FIOBJ String
 * object, as long as it was allocated using `fio_malloc`.
 *
 * The ownership of the memory indicated by `str` will "move" to the object and
 * will be freed (using `fio_free`) once the object's reference count drops to
 * zero.
 *
 * Note: The original memory MUST be allocated using `fio_malloc` (NOT the
 *       system's `malloc`) and it will be freed using `fio_free`.
 */

/**
 * Returns a thread-static temporary string. Avoid calling `fiobj_dup` or
 * `fiobj_free`.
 */

/* *****************************************************************************
API: Editing a String
***************************************************************************** */

/**
 * Prevents the String object from being changed.
 *
 * When a String is used as a key for a Hash, it is automatically frozen to
 * prevent the Hash from becoming broken.
 */

/**
 * Confirms the String allows for the requested capacity (counting used space as
 * well as free space).
 *
 * Returns updated capacity.
 */

/** Returns a String's capacity, if any. This should include the NUL byte. */

/** Resizes a String object, allocating more memory if required. */

/**
 * Performs a best attempt at minimizing memory consumption.
 *
 * Actual effects depend on the underlying memory allocator and it's
 * implementation. Not all allocators will free any memory.
 */

/** Alias for `fiobj_str_compact`. */
#define fiobj_str_minimize(str) fiobj_str_compact((str))

/** Empties a String's data. */

/**
 * Writes data at the end of the string, resizing the string as required.
 * Returns the new length of the String
 */

/**
 * Writes a number at the end of the String using normal base 10 notation.
 *
 * Returns the new length of the String
 */

/**
 * Writes data at the end of the string using a printf like interface, resizing
 * the string as required. Returns the new length of the String
 */

/**
 * Writes data at the end of the string using a vprintf like interface, resizing
 * the string as required.
 *
 * Returns the new length of the String
 */

/**
 * Writes data at the end of the string, resizing the string as required.
 *
 * Remember to call `fiobj_free` to free the source (when done with it).
 *
 * Returns the new length of the String.
 */
#define fiobj_str_join(dest, src) fiobj_str_concat((dest), (src))

/**
 * Dumps the `filename` file's contents at the end of the String.
 *
 * If `limit == 0`, than the data will be read until EOF.
 *
 * If the file can't be located, opened or read, or if `start_at` is out of
 * bounds (i.e., beyond the EOF position), FIOBJ_INVALID is returned.
 *
 * If `start_at` is negative, it will be computed from the end of the file.
 *
 * Remember to use `fiobj_free`.
 *
 * NOTE: Requires a UNIX system, otherwise always returns FIOBJ_INVALID.
 */

/* *****************************************************************************
API: String Values
***************************************************************************** */

/**
 * Calculates a String's SipHash value for possible use as a HashMap key.
 */

#if DEBUG
void fiobj_test_string(void);
#endif

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif