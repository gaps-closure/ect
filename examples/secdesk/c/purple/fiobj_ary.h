#ifndef FIOBJ_ARRAY_H
/*
Copyright: Boaz Segev, 2017-2019
License: MIT
*/

/**
A dynamic Array type for the fiobj_s dynamic type system.
*/
#define FIOBJ_ARRAY_H

#include <fiobject.h>

#ifdef __cplusplus
extern "C" {
#endif

/* *****************************************************************************
Array creation API
***************************************************************************** */

/** Creates a mutable empty Array object. Use `fiobj_free` when done. */

/** Creates a mutable empty Array object with the requested capacity. */

/* *****************************************************************************
Array direct entry access API
***************************************************************************** */

/** Returns the number of elements in the Array. */

/** Returns the current, temporary, array capacity (it's dynamic). */

/**
 * Returns a TEMPORARY pointer to the beginning of the array.
 *
 * This pointer can be used for sorting and other direct access operations as
 * long as no other actions (insertion/deletion) are performed on the array.
 */

/**
 * Returns a temporary object owned by the Array.
 *
 * Wrap this function call within `fiobj_dup` to get a persistent handle. i.e.:
 *
 *     fiobj_dup(fiobj_ary_index(array, 0));
 *
 * Negative values are retrieved from the end of the array. i.e., `-1`
 * is the last item.
 */
/** alias for `fiobj_ary_index` */
#define fiobj_ary_entry(a, p) fiobj_ary_index((a), (p))

/**
 * Sets an object at the requested position.
 */

/* *****************************************************************************
Array push / shift API
***************************************************************************** */

/**
 * Pushes an object to the end of the Array.
 */

/** Pops an object from the end of the Array. */

/**
 * Unshifts an object to the beginning of the Array. This could be
 * expensive.
 */

/** Shifts an object from the beginning of the Array. */

/* *****************************************************************************
Array Find / Remove / Replace
***************************************************************************** */

/**
 * Replaces the object at a specific position, returning the old object -
 * remember to `fiobj_free` the old object.
 */

/**
 * Finds the index of a specifide object (if any). Returns -1 if the object
 * isn't found.
 */

/**
 * Removes the object at the index (if valid), changing the index of any
 * following objects.
 *
 * Returns 0 on success or -1 (if no object or out of bounds).
 */

/**
 * Removes the first instance of an object from the Array (if any), changing the
 * index of any following objects.
 *
 * Returns 0 on success or -1 (if the object wasn't found).
 */

/* *****************************************************************************
Array compacting (untested)
***************************************************************************** */

/**
 * Removes any NULL *pointers* from an Array, keeping all Objects (including
 * explicit NULL objects) in the array.
 *
 * This action is O(n) where n in the length of the array.
 * It could get expensive.
 */

#if DEBUG
void fiobj_test_array(void);
#endif

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif