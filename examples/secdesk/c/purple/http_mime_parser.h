/*
Copyright: Boaz Segev, 2018-2019
License: MIT

Feel free to copy, use and enjoy according to the license provided.
*/
#ifndef H_HTTP_MIME_PARSER_H
#define H_HTTP_MIME_PARSER_H
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

/* *****************************************************************************
Known Limitations:

- Doesn't support nested multipart form structures (i.e., multi-file selection).
  See: https://www.w3.org/TR/html401/interact/forms.html#h-17.13.4.2

To circumvent limitation, initialize a new parser to parse nested multiparts.
***************************************************************************** */

/* *****************************************************************************
The HTTP MIME Multipart Form Parser Type
***************************************************************************** */

/** all data id read-only / for internal use */
typedef struct {
  char *boundary;
  size_t boundary_len;
  uint8_t in_obj;
  uint8_t done;
  uint8_t error;
} http_mime_parser_s;

/* *****************************************************************************
Callbacks to be implemented.
***************************************************************************** */

/** Called when all the data is available at once. */

/** Called when the data didn't fit in the buffer. Data will be streamed. */

/** Called when partial data is available. */

/** Called when the partial data is complete. */

/**
 * Called when URL decoding is required.
 *
 * Should support inplace decoding (`dest == encoded`).
 *
 * Should return the length of the decoded string.
 */

/* *****************************************************************************
API
***************************************************************************** */

/**
 * Takes the HTTP Content-Type header and initializes the parser data.
 *
 * Note: the Content-Type header should persist in memory while the parser is in
 * use.
 */

/**
 * Consumes data from a streaming buffer.
 *
 * The data might be partially consumed, in which case the unconsumed data
 * should be resent to the parser as more data becomes available.
 *
 * Note: test the `parser->done` and `parser->error` flags between iterations.
 */

/* *****************************************************************************
Implementations
***************************************************************************** */

/** takes the HTTP Content-Type header and initializes the parser data. */

/**
 * Consumes data from a streaming buffer.
 *
 * The data might be partially consumed, in which case the unconsumed data
 * should be resent to the parser as more data becomes available.
 *
 * Note: test the `parser->done` and `parser->error` flags between iterations.
 */
#endif