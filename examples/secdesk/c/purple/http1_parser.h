#ifndef H_HTTP1_PARSER_H
/*
Copyright: Boaz Segev, 2017-2020
License: MIT

Feel free to copy, use and enjoy according to the license provided.
*/

/**
This is a callback based parser. It parses the skeleton of the HTTP/1.x protocol
and leaves most of the work (validation, error checks, etc') to the callbacks.
*/
#define H_HTTP1_PARSER_H
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

/* *****************************************************************************
Parser Settings
***************************************************************************** */

#ifndef HTTP_HEADERS_LOWERCASE
/**
 * When defined, HTTP headers will be converted to lowercase and header
 * searches will be case sensitive.
 *
 * This is highly recommended, required by facil.io and helps with HTTP/2
 * compatibility.
 */
#define HTTP_HEADERS_LOWERCASE 1
#endif

#ifndef HTTP_ADD_CONTENT_LENGTH_HEADER_IF_MISSING
#define HTTP_ADD_CONTENT_LENGTH_HEADER_IF_MISSING 1
#endif

#ifndef FIO_MEMCHAR
/** Prefer a custom memchr implementation. Usualy memchr is better. */
#define FIO_MEMCHAR 0
#endif

#ifndef ALLOW_UNALIGNED_MEMORY_ACCESS
/** Peforms some optimizations assuming unaligned memory access is okay. */
#define ALLOW_UNALIGNED_MEMORY_ACCESS 0
#endif

#ifndef HTTP1_PARSER_CONVERT_EOL2NUL
#define HTTP1_PARSER_CONVERT_EOL2NUL 0
#endif

/* *****************************************************************************
Parser API
***************************************************************************** */

/** this struct contains the state of the parser. */
typedef struct http1_parser_s {
  struct http1_parser_protected_read_only_state_s {
    long long content_length; /* negative values indicate chuncked data state */
    ssize_t read;     /* total number of bytes read so far (body only) */
    uint8_t *next;    /* the known position for the end of request/response */
    uint8_t reserved; /* for internal use */
  } state;
} http1_parser_s;

#define HTTP1_PARSER_INIT                                                      \
  {                                                                            \
    { 0 }                                                                      \
  }

/**
 * Returns the amount of data actually consumed by the parser.
 *
 * The value 0 indicates there wasn't enough data to be parsed and the same
 * buffer (with more data) should be resubmitted.
 *
 * A value smaller than the buffer size indicates that EITHER a request /
 * response was detected OR that the leftover could not be consumed because more
 * data was required.
 *
 * Simply resubmit the reminder of the data to continue parsing.
 *
 * A request / response callback automatically stops the parsing process,
 * allowing the user to adjust or refresh the state of the data.
 */

/* *****************************************************************************
Required Callbacks (MUST be implemented by including file)
***************************************************************************** */

/** called when a request was received. */
/** called when a response was received. */
/** called when a request method is parsed. */
/** called when a response status is parsed. the status_str is the string
 * without the prefixed numerical status indicator.*/
/** called when a request path (excluding query) is parsed. */
/** called when a request path (excluding query) is parsed. */
/** called when a the HTTP/1.x version is parsed. */
/** called when a header is parsed. */
/** called when a body chunk is parsed. */
/** called when a protocol error occurred. */

/* *****************************************************************************

















                        Implementation Details

















***************************************************************************** */

#if HTTP_HEADERS_LOWERCASE
#define HEADER_NAME_IS_EQ(var_name, const_name, len)                           \
  (!memcmp((var_name), (const_name), (len)))
#else
#define HEADER_NAME_IS_EQ(var_name, const_name, len)                           \
  (!strncasecmp((var_name), (const_name), (len)))
#endif

#define HTTP1_P_FLAG_STATUS_LINE 1
#define HTTP1_P_FLAG_HEADER_COMPLETE 2
#define HTTP1_P_FLAG_COMPLETE 4
#define HTTP1_P_FLAG_CLENGTH 8
#define HTTP1_PARSER_BIT_16 16
#define HTTP1_PARSER_BIT_32 32
#define HTTP1_P_FLAG_CHUNKED 64
#define HTTP1_P_FLAG_RESPONSE 128

/* *****************************************************************************
Seeking for characters in a string
***************************************************************************** */

#if FIO_MEMCHAR

/**
 * This seems to be faster on some systems, especially for smaller distances.
 *
 * On newer systems, `memchr` should be faster.
 */
static int seek2ch(uint8_t **buffer, register uint8_t *const limit,
                   const uint8_t c) {
  if (*buffer >= limit)
    return 0;
  if (**buffer == c) {
    return 1;
  }

#if !HTTP1_UNALIGNED_MEMORY_ACCESS_ENABLED
  /* too short for this mess */
  if ((uintptr_t)limit <= 16 + ((uintptr_t)*buffer & (~(uintptr_t)7)))
    goto finish;

  /* align memory */
  {
    const uint8_t *alignment =
        (uint8_t *)(((uintptr_t)(*buffer) & (~(uintptr_t)7)) + 8);
    if (*buffer < alignment)
      *buffer += 1; /* we already tested this char */
    if (limit >= alignment) {
      while (*buffer < alignment) {
        if (**buffer == c) {
          return 1;
        }
        *buffer += 1;
      }
    }
  }
  const uint8_t *limit64 = (uint8_t *)((uintptr_t)limit & (~(uintptr_t)7));
#else
  const uint8_t *limit64 = (uint8_t *)limit - 7;
#endif
  uint64_t wanted1 = 0x0101010101010101ULL * c;
  for (; *buffer < limit64; *buffer += 8) {
    const uint64_t eq1 = ~((*((uint64_t *)*buffer)) ^ wanted1);
    const uint64_t t0 = (eq1 & 0x7f7f7f7f7f7f7f7fllu) + 0x0101010101010101llu;
    const uint64_t t1 = (eq1 & 0x8080808080808080llu);
    if ((t0 & t1)) {
      break;
    }
  }
#if !HTTP1_UNALIGNED_MEMORY_ACCESS_ENABLED
finish:
#endif
  while (*buffer < limit) {
    if (**buffer == c) {
      return 1;
    }
    (*buffer)++;
  }
  return 0;
}

#else

/* a helper that seeks any char, converts it to NUL and returns 1 if found. */

#endif

/* a helper that seeks the EOL, converts it to NUL and returns it's length */

/* *****************************************************************************
Change a letter to lower case (latin only)
***************************************************************************** */


/* *****************************************************************************
String to Number
***************************************************************************** */

/** Converts a String to a number using base 10 */

/** Converts a String to a number using base 16, overflow limited to 113bytes */

/* *****************************************************************************
HTTP/1.1 parsre stages
***************************************************************************** */



#ifndef HTTP1_ALLOW_CHUNKED_IN_MIDDLE_OF_HEADER



/* *****************************************************************************
HTTP/1.1 Body handling
***************************************************************************** */




/* *****************************************************************************
HTTP/1.1 parsre function
***************************************************************************** */
#if DEBUG
#include <assert.h>
#define HTTP1_ASSERT assert
#else
#define HTTP1_ASSERT(...)
#endif

/**
 * Returns the amount of data actually consumed by the parser.
 *
 * The value 0 indicates there wasn't enough data to be parsed and the same
 * buffer (with more data) should be resubmitted.
 *
 * A value smaller than the buffer size indicates that EITHER a request /
 * response was detected OR that the leftover could not be consumed because more
 * data was required.
 *
 * Simply resubmit the reminder of the data to continue parsing.
 *
 * A request / response callback automatically stops the parsing process,
 * allowing the user to adjust or refresh the state of the data.
 */

#endif