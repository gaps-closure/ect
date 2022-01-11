#ifndef H_FIO_SIPHASH_H
#define H_FIO_SIPHASH_H

#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

#include <stdint.h>
#include <sys/types.h>

/**
 * A SipHash variation (2-4).
 */

/**
 * A SipHash 1-3 variation.
 */

/**
 * The Hashing function used by dynamic facil.io objects.
 *
 * Currently implemented using SipHash 1-3.
 */
#define fio_siphash(data, length, k1, k2)                                      \
  fio_siphash13((data), (length), (k1), (k2))

#if DEBUG
void fiobj_siphash_test(void);
#else
#define fiobj_siphash_test()
#endif

#endif /* H_FIO_SIPHASH_H */