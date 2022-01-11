#ifndef H_FIOBJECT_H
/*
Copyright: Boaz Segev, 2017-2019
License: MIT
*/

/**
This facil.io core library provides wrappers around complex and (or) dynamic
types, abstracting some complexity and making dynamic type related tasks easier.
*/
#define H_FIOBJECT_H

#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include <limits.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include <fio_siphash.h>

#include <fio.h>

#if !defined(__GNUC__) && !defined(__clang__) && !defined(FIO_GNUC_BYPASS)
#define __attribute__(...)
#define __has_include(...) 0
#define __has_builtin(...) 0
#define FIO_GNUC_BYPASS 1
#elif !defined(__clang__) && !defined(__has_builtin)
#define __has_builtin(...) 0
#define FIO_GNUC_BYPASS 1
#endif

#ifdef __cplusplus
extern "C" {
#endif

/* *****************************************************************************
Core Types
***************************************************************************** */

typedef enum __attribute__((packed)) {
  FIOBJ_T_NUMBER = 0x01,
  FIOBJ_T_NULL = 0x06,
  FIOBJ_T_TRUE = 0x16,
  FIOBJ_T_FALSE = 0x26,
  FIOBJ_T_FLOAT,
  FIOBJ_T_STRING,
  FIOBJ_T_ARRAY,
  FIOBJ_T_HASH,
  FIOBJ_T_DATA,
  FIOBJ_T_UNKNOWN
} fiobj_type_enum;

typedef uintptr_t FIOBJ;

/** a Macro retriving an object's type. Use FIOBJ_TYPE_IS(x) for testing. */
#define FIOBJ_TYPE(obj) fiobj_type((obj))
#define FIOBJ_TYPE_IS(obj, type) fiobj_type_is((obj), (type))
#define FIOBJ_IS_NULL(obj) (!obj || obj == (FIOBJ)FIOBJ_T_NULL)
#define FIOBJ_INVALID 0

#ifndef FIO_STR_INFO_TYPE
/** A String information type, reports information about a C string. */
typedef struct fio_str_info_s {
  size_t capa; /* Buffer capacity, if the string is writable. */
  size_t len;  /* String length. */
  char *data;  /* String's first byte. */
} fio_str_info_s;
#define FIO_STR_INFO_TYPE
#endif

/* *****************************************************************************
Primitives
***************************************************************************** */

#define FIO_INLINE static inline __attribute__((unused))


/* *****************************************************************************
Generic Object API
***************************************************************************** */

/** Returns a C string naming the objects dynamic type. */

/**
 * Heuristic copy with a preference for copy reference(!) to minimize
 * allocations.
 *
 * Always returns the value passed along.
 */

/**
 * Frees the object and any of it's "children".
 *
 * This function affects nested objects, meaning that when an Array or
 * a Hash object is passed along, it's children (nested objects) are
 * also freed.
 */

/**
 * Tests if an object evaluates as TRUE.
 *
 * This is object type specific. For example, empty strings might evaluate as
 * FALSE, even though they aren't a boolean type.
 */

/**
 * Returns an Object's numerical value.
 *
 * If a String is passed to the function, it will be parsed assuming base 10
 * numerical data.
 *
 * Hashes and Arrays return their object count.
 *
 * IO objects return the length of their data.
 *
 * A type error results in 0.
 */

/**
 * Returns a Float's value.
 *
 * If a String is passed to the function, they will benparsed assuming base 10
 * numerical data.
 *
 * A type error results in 0.
 */

/**
 * Returns a C String (NUL terminated) using the `fio_str_info_s` data type.
 *
 * The Sting in binary safe and might contain NUL bytes in the middle as well as
 * a terminating NUL.
 *
 * If a a Number or a Float are passed to the function, they
 * will be parsed as a *temporary*, thread-safe, String.
 *
 * Numbers will be represented in base 10 numerical data.
 *
 * A type error results in NULL (i.e. object isn't a String).
 */

/**
 * Calculates an Objects's SipHash value for possible use as a HashMap key.
 *
 * The Object MUST answer to the fiobj_obj2cstr, or the result is unusable. In
 * other words, Hash Objects and Arrays can NOT be used for Hash keys.
 */

/**
 * Single layer iteration using a callback for each nested fio object.
 *
 * Accepts any `FIOBJ ` type but only collections (Arrays and Hashes) are
 * processed. The container itself (the Array or the Hash) is **not** processed
 * (unlike `fiobj_each2`).
 *
 * The callback task function must accept an object and an opaque user pointer.
 *
 * Hash objects pass along only the value object. The keys can be accessed using
 * the `fiobj_hash_key_in_loop` function.
 *
 * If the callback returns -1, the loop is broken. Any other value is ignored.
 *
 * Returns the "stop" position, i.e., the number of items processed + the
 * starting point.
 */

/**
 * Deep iteration using a callback for each fio object, including the parent.
 *
 * Accepts any `FIOBJ ` type.
 *
 * Collections (Arrays, Hashes) are deeply probed and shouldn't be edited
 * during an `fiobj_each2` call (or weird things may happen).
 *
 * The callback task function must accept an object and an opaque user pointer.
 *
 * Hash objects keys are available using the `fiobj_hash_key_in_loop` function.
 *
 * Notice that when passing collections to the function, the collection itself
 * is sent to the callback followed by it's children (if any). This is true also
 * for nested collections (a nested Hash will be sent first, followed by the
 * nested Hash's children and then followed by the rest of it's siblings.
 *
 * If the callback returns -1, the loop is broken. Any other value is ignored.
 */

/**
 * Deeply compare two objects. No hashing or recursive function calls are
 * involved.
 *
 * Uses a similar algorithm to `fiobj_each2`, except adjusted to two objects.
 *
 * Hash objects are order sensitive. To be equal, Hash keys must match in order.
 *
 * Returns 1 if true and 0 if false.
 */

/* *****************************************************************************
Object Type Identification
***************************************************************************** */

#define FIOBJECT_NUMBER_FLAG 1

#if UINTPTR_MAX < 0xFFFFFFFFFFFFFFFF
#define FIOBJECT_PRIMITIVE_FLAG 2
#define FIOBJECT_STRING_FLAG 0
#define FIOBJECT_HASH_FLAG 0
#define FIOBJECT_TYPE_MASK (~(uintptr_t)3)
#else
#define FIOBJECT_PRIMITIVE_FLAG 6
#define FIOBJECT_STRING_FLAG 2
#define FIOBJECT_HASH_FLAG 4
#define FIOBJECT_TYPE_MASK (~(uintptr_t)7)
#endif

#define FIOBJ_NUMBER_SIGN_MASK ((~((uintptr_t)0)) >> 1)
#define FIOBJ_NUMBER_SIGN_BIT (~FIOBJ_NUMBER_SIGN_MASK)
#define FIOBJ_NUMBER_SIGN_EXCLUDE_BIT (FIOBJ_NUMBER_SIGN_BIT >> 1)

#define FIOBJ_IS_ALLOCATED(o)                                                  \
  ((o) && ((o)&FIOBJECT_NUMBER_FLAG) == 0 &&                                   \
   ((o)&FIOBJECT_PRIMITIVE_FLAG) != FIOBJECT_PRIMITIVE_FLAG)
#define FIOBJ2PTR(o) ((void *)((o)&FIOBJECT_TYPE_MASK))


/**
 * This is faster than getting the type, since the switch statement is
 * optimized away (it's calculated during compile time).
 */

/* *****************************************************************************
Object Header
***************************************************************************** */

typedef struct {
  /* a String allowing logging type data. */
  const char *class_name;
  /* deallocate root object's memory, perform task for each nested object. */
  void (*const dealloc)(FIOBJ, void (*task)(FIOBJ, void *), void *);
  /* return the number of normal nested object */
  uintptr_t (*const count)(const FIOBJ);
  /* tests the object for truthfulness. */
  size_t (*const is_true)(const FIOBJ);
  /* tests if two objects are equal. */
  size_t (*const is_eq)(const FIOBJ, const FIOBJ);
  /* iterates through the normal nested objects (ignore deep nesting) */
  size_t (*const each)(FIOBJ, size_t start_at, int (*task)(FIOBJ, void *),
                       void *);
  /* object value as String */
  fio_str_info_s (*const to_str)(const FIOBJ);
  /* object value as Integer */
  intptr_t (*const to_i)(const FIOBJ);
  /* object value as Float */
  double (*const to_f)(const FIOBJ);
} fiobj_object_vtable_s;

typedef struct {
  /* must be first */
  fiobj_type_enum type;
  /* reference counter */
  uint32_t ref;
} fiobj_object_header_s;


#define FIOBJECT2VTBL(o) fiobj_type_vtable(o)
#define FIOBJECT2HEAD(o) (((fiobj_object_header_s *)FIOBJ2PTR((o))))


/* *****************************************************************************
Atomic reference counting
***************************************************************************** */

/* C11 Atomics are defined? */
#if defined(__ATOMIC_RELAXED)
/** An atomic addition operation */
#define fiobj_ref_inc(o)                                                       \
  __atomic_add_fetch(&FIOBJECT2HEAD(o)->ref, 1, __ATOMIC_SEQ_CST)
/** An atomic subtraction operation */
#define fiobj_ref_dec(o)                                                       \
  __atomic_sub_fetch(&FIOBJECT2HEAD(o)->ref, 1, __ATOMIC_SEQ_CST)

/* Select the correct compiler builtin method. */
#elif defined(__has_builtin) && !FIO_GNUC_BYPASS

#if __has_builtin(__sync_fetch_and_or)
/** An atomic addition operation */
#define fiobj_ref_inc(o) __sync_add_and_fetch(&FIOBJECT2HEAD(o)->ref, 1)
/** An atomic subtraction operation */
#define fiobj_ref_dec(o) __sync_sub_and_fetch(&FIOBJECT2HEAD(o)->ref, 1)

#else
#error missing required atomic options.
#endif /* defined(__has_builtin) */

#elif __GNUC__ > 3
/** An atomic addition operation */
#define fiobj_ref_inc(o) __sync_add_and_fetch(&FIOBJECT2HEAD(o)->ref, 1)
/** An atomic subtraction operation */
#define fiobj_ref_dec(o) __sync_sub_and_fetch(&FIOBJECT2HEAD(o)->ref, 1)

#else
#error missing required atomic options.
#endif

#define OBJREF_ADD(o) fiobj_ref_inc(o)
#define OBJREF_REM(o) fiobj_ref_dec(o)

/* *****************************************************************************
Inlined Functions
***************************************************************************** */

/** Returns a C string naming the objects dynamic type. */

/** used internally to free objects with nested objects. */

/**
 * Copy by reference(!) - increases an object's (and any nested object's)
 * reference count.
 *
 * Always returns the value passed along.
 */

/**
 * Decreases an object's reference count, releasing memory and
 * resources.
 *
 * This function affects nested objects, meaning that when an Array or
 * a Hash object is passed along, it's children (nested objects) are
 * also freed.
 *
 * Returns the number of existing references or zero if memory was released.
 */

/**
 * Tests if an object evaluates as TRUE.
 *
 * This is object type specific. For example, empty strings might evaluate as
 * FALSE, even though they aren't a boolean type.
 */

/**
 * Returns an object's numerical value.
 *
 * If a String or Symbol are passed to the function, they will be
 * parsed assuming base 10 numerical data.
 *
 * Hashes and Arrays return their object count.
 *
 * IO and File objects return their underlying file descriptor.
 *
 * A type error results in 0.
 */

/** Converts a number to a temporary, thread safe, C string object */

/** Converts a float to a temporary, thread safe, C string object */

/**
 * Returns a C String (NUL terminated) using the `fio_str_info_s` data type.
 *
 * The Sting in binary safe and might contain NUL bytes in the middle as well as
 * a terminating NUL.
 *
 * If a a Number or a Float are passed to the function, they
 * will be parsed as a *temporary*, thread-safe, String.
 *
 * Numbers will be represented in base 10 numerical data.
 *
 * A type error results in NULL (i.e. object isn't a String).
 */

/* referenced here */
/**
 * Calculates an Objects's SipHash value for possible use as a HashMap key.
 *
 * The Object MUST answer to the fiobj_obj2cstr, or the result is unusable. In
 * other words, Hash Objects and Arrays can NOT be used for Hash keys.
 */


/**
 * Returns a Float's value.
 *
 * If a String or Symbol are passed to the function, they will be
 * parsed assuming base 10 numerical data.
 *
 * Hashes and Arrays return their object count.
 *
 * IO and File objects return their underlying file descriptor.
 *
 * A type error results in 0.
 */

/** used internally for complext nested tests (Array / Hash types) */
/**
 * Deeply compare two objects. No hashing or recursive function calls are
 * involved.
 *
 * Uses a similar algorithm to `fiobj_each2`, except adjusted to two objects.
 *
 * Hash order will be tested when comapring Hashes.
 *
 * KNOWN ISSUES:
 *
 * * Temporarily broken for collections (Arrays / Hashes).
 *
 * * Hash order will be tested as well as the Hash content, which means that
 * equal Hashes might be considered unequal if their order doesn't match.
 *
 * Returns 1 if true and 0 if false.
 */

/**
 * Single layer iteration using a callback for each nested fio object.
 *
 * Accepts any `FIOBJ ` type but only collections (Arrays and Hashes) are
 * processed. The container itself (the Array or the Hash) is **not** processed
 * (unlike `fiobj_each2`).
 *
 * The callback task function must accept an object and an opaque user pointer.
 *
 * Hash objects pass along a `FIOBJ_T_COUPLET` object, containing
 * references for both the key and the object. Keys shouldn't be altered once
 * placed as a key (or the Hash will break). Collections (Arrays / Hashes) can't
 * be used as keeys.
 *
 * If the callback returns -1, the loop is broken. Any other value is ignored.
 *
 * Returns the "stop" position, i.e., the number of items processed + the
 * starting point.
 */

#if DEBUG
void fiobj_test_core(void);
#endif

#ifdef __cplusplus
} /* closing brace for extern "C" */
#endif
#endif