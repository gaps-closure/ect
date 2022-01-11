/*
copyright: Boaz Segev, 2017-2019
license: MIT

Feel free to copy, use and enjoy according to the license specified.
*/
#ifndef H_WEBSOCKET_PARSER_H
/**\file

A single file WebSocket message parser and WebSocket message wrapper, decoupled
from any IO layer.

Notice that this header file library includes static funnction declerations that
must be implemented by the including file (the callbacks).

*/
#define H_WEBSOCKET_PARSER_H
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#if DEBUG
#include <stdio.h>
#endif
/* *****************************************************************************
API - Message Wrapping
***************************************************************************** */

/** returns the length of the buffer required to wrap a message `len` long */

/**
 * Wraps a WebSocket server message and writes it to the target buffer.
 *
 * The `first` and `last` flags can be used to support message fragmentation.
 *
 * * target: the target buffer to write to.
 * * msg:    the message to be wrapped.
 * * len:    the message length.
 * * opcode: set to 1 for UTF-8 message, 2 for binary, etc'.
 * * first:  set to 1 if `msg` points the beginning of the message.
 * * last:   set to 1 if `msg + len` ends the message.
 * * client: set to 1 to use client mode (data  masking).
 *
 * Further opcode values:
 * * %x0 denotes a continuation frame
 * *  %x1 denotes a text frame
 * *  %x2 denotes a binary frame
 * *  %x3-7 are reserved for further non-control frames
 * *  %x8 denotes a connection close
 * *  %x9 denotes a ping
 * *  %xA denotes a pong
 * *  %xB-F are reserved for further control frames
 *
 * Returns the number of bytes written. Always `websocket_wrapped_len(len)`
 */

/**
 * Wraps a WebSocket client message and writes it to the target buffer.
 *
 * The `first` and `last` flags can be used to support message fragmentation.
 *
 * * target: the target buffer to write to.
 * * msg:    the message to be wrapped.
 * * len:    the message length.
 * * opcode: set to 1 for UTF-8 message, 2 for binary, etc'.
 * * first:  set to 1 if `msg` points the beginning of the message.
 * * last:   set to 1 if `msg + len` ends the message.
 * * client: set to 1 to use client mode (data  masking).
 *
 * Returns the number of bytes written. Always `websocket_wrapped_len(len) + 4`
 */

/* *****************************************************************************
Callbacks - Required functions that must be inplemented to use this header
***************************************************************************** */


/* *****************************************************************************
API - Parsing (unwrapping)
***************************************************************************** */

/** the returned value for `websocket_buffer_required` */
struct websocket_packet_info_s {
  /** the expected packet length */
  uint64_t packet_length;
  /** the packet's "head" size (before the data) */
  uint8_t head_length;
  /** a flag indicating if the packet is masked */
  uint8_t masked;
};

/**
 * Returns all known information regarding the upcoming message.
 *
 * @returns a struct websocket_packet_info_s.
 *
 * On protocol error, the `head_length` value is 0 (no valid head detected).
 */

/**
 * Consumes the data in the buffer, calling any callbacks required.
 *
 * Returns the remaining data in the existing buffer (can be 0).
 *
 * Notice: if there's any data in the buffer that can't be parsed
 * just yet, `memmove` is used to place the data at the beginning of the buffer.
 */

/* *****************************************************************************
API - Internal Helpers
***************************************************************************** */

/** used internally to mask and unmask client messages. */

/* *****************************************************************************

                                Implementation

***************************************************************************** */

/* *****************************************************************************
Message masking
***************************************************************************** */
/** used internally to mask and unmask client messages. */

/* *****************************************************************************
Message wrapping
***************************************************************************** */

/** Converts an unaligned network ordered byte stream to a 16 bit number. */
#define websocket_str2u16(c)                                                   \
  ((uint16_t)(((uint16_t)(((uint8_t *)(c))[0]) << 8) |                         \
              (uint16_t)(((uint8_t *)(c))[1])))

/** Converts an unaligned network ordered byte stream to a 64 bit number. */
#define websocket_str2u64(c)                                                   \
  ((uint64_t)((((uint64_t)((uint8_t *)(c))[0]) << 56) |                        \
              (((uint64_t)((uint8_t *)(c))[1]) << 48) |                        \
              (((uint64_t)((uint8_t *)(c))[2]) << 40) |                        \
              (((uint64_t)((uint8_t *)(c))[3]) << 32) |                        \
              (((uint64_t)((uint8_t *)(c))[4]) << 24) |                        \
              (((uint64_t)((uint8_t *)(c))[5]) << 16) |                        \
              (((uint64_t)((uint8_t *)(c))[6]) << 8) | (((uint8_t *)(c))[7])))

/** Writes a local 16 bit number to an unaligned buffer in network order. */
#define websocket_u2str16(buffer, i)                                           \
  do {                                                                         \
    ((uint8_t *)(buffer))[0] = ((uint16_t)(i) >> 8) & 0xFF;                    \
    ((uint8_t *)(buffer))[1] = ((uint16_t)(i)) & 0xFF;                         \
  } while (0);

/** Writes a local 64 bit number to an unaligned buffer in network order. */
#define websocket_u2str64(buffer, i)                                           \
  do {                                                                         \
    ((uint8_t *)(buffer))[0] = ((uint64_t)(i) >> 56) & 0xFF;                   \
    ((uint8_t *)(buffer))[1] = ((uint64_t)(i) >> 48) & 0xFF;                   \
    ((uint8_t *)(buffer))[2] = ((uint64_t)(i) >> 40) & 0xFF;                   \
    ((uint8_t *)(buffer))[3] = ((uint64_t)(i) >> 32) & 0xFF;                   \
    ((uint8_t *)(buffer))[4] = ((uint64_t)(i) >> 24) & 0xFF;                   \
    ((uint8_t *)(buffer))[5] = ((uint64_t)(i) >> 16) & 0xFF;                   \
    ((uint8_t *)(buffer))[6] = ((uint64_t)(i) >> 8) & 0xFF;                    \
    ((uint8_t *)(buffer))[7] = ((uint64_t)(i)) & 0xFF;                         \
  } while (0);

/** returns the length of the buffer required to wrap a message `len` long */

/**
 * Wraps a WebSocket server message and writes it to the target buffer.
 *
 * The `first` and `last` flags can be used to support message fragmentation.
 *
 * * target: the target buffer to write to.
 * * msg:    the message to be wrapped.
 * * len:    the message length.
 * * opcode: set to 1 for UTF-8 message, 2 for binary, etc'.
 * * first:  set to 1 if `msg` points the beginning of the message.
 * * last:   set to 1 if `msg + len` ends the message.
 * * client: set to 1 to use client mode (data  masking).
 *
 * Further opcode values:
 * * %x0 denotes a continuation frame
 * *  %x1 denotes a text frame
 * *  %x2 denotes a binary frame
 * *  %x3-7 are reserved for further non-control frames
 * *  %x8 denotes a connection close
 * *  %x9 denotes a ping
 * *  %xA denotes a pong
 * *  %xB-F are reserved for further control frames
 *
 * Returns the number of bytes written. Always `websocket_wrapped_len(len)`
 */

/**
 * Wraps a WebSocket client message and writes it to the target buffer.
 *
 * The `first` and `last` flags can be used to support message fragmentation.
 *
 * * target: the target buffer to write to.
 * * msg:    the message to be wrapped.
 * * len:    the message length.
 * * opcode: set to 1 for UTF-8 message, 2 for binary, etc'.
 * * first:  set to 1 if `msg` points the beginning of the message.
 * * last:   set to 1 if `msg + len` ends the message.
 *
 * Returns the number of bytes written. Always `websocket_wrapped_len(len) +
 * 4`
 */

/* *****************************************************************************
Message unwrapping
***************************************************************************** */

/**
 * Returns all known information regarding the upcoming message.
 *
 * @returns a struct websocket_packet_info_s.
 *
 * On protocol error, the `head_length` value is 0 (no valid head detected).
 */

/**
 * Consumes the data in the buffer, calling any callbacks required.
 *
 * Returns the remaining data in the existing buffer (can be 0).
 */

#endif