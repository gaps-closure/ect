#ifndef H_FIO_JSON_H
/* *****************************************************************************
 * Copyright: Boaz Segev, 2017-2019
 * License: MIT
 *
 * This header file is a single-file JSON naive parse.
 *
 * The code was extracted form the FIOBJ implementation in order to allow the
 * parser to be used independantly from the rest of the facil.io library.
 *
 * The parser ignores missing commas and other formatting errors when possible.
 *
 * The parser also extends the JSON format to allow for C and Bash style
 * comments as well as hex numerical formats.
 *****************************************************************************
 */
#define H_FIO_JSON_H

#include <ctype.h>
#include <math.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#if DEBUG
#include <stdio.h>
#endif

#if !defined(__GNUC__) && !defined(__clang__) && !defined(FIO_GNUC_BYPASS)
#define __attribute__(...)
#define __has_include(...) 0
#define __has_builtin(...) 0
#define FIO_GNUC_BYPASS 1
#elif !defined(__clang__) && !defined(__has_builtin)
#define __has_builtin(...) 0
#define FIO_GNUC_BYPASS 1
#endif

/* *****************************************************************************
JSON API
***************************************************************************** */

/* maximum allowed depth values max out at 32, since a bitmap is used */
#if !defined(JSON_MAX_DEPTH) || JSON_MAX_DEPTH > 32
#undef JSON_MAX_DEPTH
#define JSON_MAX_DEPTH 32
#endif

/** The JSON parser type. Memory must be initialized to 0 before first uses. */
typedef struct {
  /** in dictionary flag. */
  uint32_t dict;
  /** level of nesting. */
  uint8_t depth;
  /** in dictionary waiting for key. */
  uint8_t key;
} json_parser_s;

/**
 * Stream parsing of JSON data using a persistent parser.
 *
 * Returns the number of bytes consumed (0 being a valid value).
 *
 * Unconsumed data should be resent to the parser once more data is available.
 *
 * For security (due to numeral parsing concerns), a NUL byte should be placed
 * at `buffer[length]`.
 */

/**
 * This function allows JSON formatted strings to be converted to native
 * strings.
 */

/* *****************************************************************************
JSON Callacks - these must be implemented in the C file that uses the parser
***************************************************************************** */

/** a NULL object was detected */
/** a TRUE object was detected */
/** a FALSE object was detected */
/** a Numberl was detected (long long). */
/** a Float was detected (double). */
/** a String was detected (int / float). update `pos` to point at ending */
/** a dictionary object was detected, should return 0 unless error occurred. */
/** a dictionary object closure detected */
/** an array object was detected, should return 0 unless error occurred. */
/** an array closure was detected */
/** the JSON parsing is complete */
/** the JSON parsing is complete */

/* *****************************************************************************
JSON maps (arrays used to map data to simplify `if` statements)
***************************************************************************** */

/*
Marks as object seperators any of the following:

* White Space: [0x09, 0x0A, 0x0D, 0x20]
* Comma ("," / 0x2C)
* NOT Colon (":" / 0x3A)
* == [0x09, 0x0A, 0x0D, 0x20, 0x2C]
The rest belong to objects,
*/

/*
Marks a numeral valid char (it's a permisive list):
['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'e', 'E', '+', '-', 'x', 'b',
'.']
*/



/*
Stops seeking a String:
['\\', '"']
*/

/* *****************************************************************************
JSON String Helper - Seeking to the end of a string
***************************************************************************** */

/**
 * finds the first occurance of either '"' or '\\'.
 */


/* *****************************************************************************
JSON String to Numeral Helpers - allowing for stand-alone mode
***************************************************************************** */

#ifndef H_FACIL_IO_H /* defined in fio.h */

/**
 * We include this in case the parser is used outside of facil.io.
 */
#pragma weak fio_atol

/**
 * We include this in case the parser is used outside of facil.io.
 */
#pragma weak fio_atof

#endif

/* *****************************************************************************
JSON Consumption (astract parsing)
***************************************************************************** */

/**
 * Returns the number of bytes consumed. Stops as close as possible to the end
 * of the buffer or once an object parsing was completed.
 */

/* *****************************************************************************
JSON Unescape String
***************************************************************************** */

#ifdef __cplusplus
#define REGISTER
#else
#define REGISTER register
#endif

/* converts a uint32_t to UTF-8 and returns the number of bytes written */



#undef REGISTER

#endif