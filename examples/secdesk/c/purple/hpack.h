#ifndef H_HPACK_H

#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include <fio.h>

#ifndef MAYBE_UNUSED
#define MAYBE_UNUSED __attribute__((unused))
#endif

/**
 * Sets the limit for both a single header value and a packed header group.
 * Must be less than 2^16 -1
 */
#define HPACK_BUFFER_SIZE 16384

/**
 * Sets the limit for the amount of data an HPACK dynamic table can reference.
 * Should be less then 65,535 (2^16 -1 is the type size limit).
 */
#define HPACK_MAX_TABLE_SIZE 65535

/* *****************************************************************************
Required Callbacks
***************************************************************************** */

/* *****************************************************************************
Types
***************************************************************************** */

/** The HPACK context. */
typedef struct hpack_context_s hpack_context_s;

/* *****************************************************************************
Context API
***************************************************************************** */

/* *****************************************************************************
Primitive Types API
***************************************************************************** */

/**
 * Encodes an integer.
 *
 * Returns the number of bytes written to the destination buffer. If the buffer
 * was too small, returns the number of bytes that would have been written.
 */

/**
 * Decodes an integer, updating the `pos` marker to the next unprocessed byte.
 *
 * The position marker may start as non-zero, meaning that `len - (*pos)` is the
 * actual length.
 *
 * An encoding / decoding error results in a return value of -1.
 */

/**
 * Encodes a String.
 *
 * Returns the number of bytes written to the destination buffer. If the buffer
 * was too small, returns the number of bytes that would have been written.
 */

/**
 * Decodes a String.
 *
 * Returns the number of bytes written to the destination buffer. If the buffer
 * was too small, returns the number of bytes that would have been written.
 *
 * An encoding / decoding error results in a return value of -1.
 *
 * The position marker may start as non-zero, meaning that `len - (*pos)` is the
 * actual length.
 */

/* *****************************************************************************
Static table API
***************************************************************************** */

/**
 * Sets the provided pointers with the information in the static header table.
 *
 * The `index` is 1..61 (not zero based).
 *
 * Set `get_value` to 1 to collect the value data rather then the header name.
 *
 * Returns -1 if request is out of bounds.
 */

/* *****************************************************************************
Huffman API (internal)
***************************************************************************** */

/* the huffman encoding map */
typedef const struct {
  const uint32_t code;
  const uint8_t bits;
} huffman_encode_s;

/* the huffman decoding binary tree type */
typedef struct {
  const int16_t value;     // value, -1 == none.
  const uint8_t offset[2]; // offset for 0 and one. 0 == leaf node.
} huffman_decode_s;

/**
 * Unpack (de-compress) using HPACK huffman - returns the number of bytes
 * written and advances the position marker.
 */

/**
 *  Pack (compress) using HPACK huffman - returns the number of bytes written or
 * required.
 */

/* *****************************************************************************





                                  Implementation






***************************************************************************** */

/* *****************************************************************************
Integer encoding
***************************************************************************** */



/* *****************************************************************************
String encoding
***************************************************************************** */



/* *****************************************************************************
Huffman encoding
***************************************************************************** */



/* *****************************************************************************
Header static table lookup
***************************************************************************** */



/* *****************************************************************************






                                  Testing







***************************************************************************** */

#if DEBUG

#include <inttypes.h>
#include <stdio.h>

void hpack_test(void) {
  uint8_t buffer[1 << 15];
  const size_t limit = (1 << 15);
  size_t buf_pos = 0;
  {
    /* test integer packing */
    int64_t result;
    size_t pos = 0;
    fprintf(stderr, "* HPACK testing integer primitive packing.\n");
    if ((result = hpack_int_unpack((uint8_t *)"\x0c", 1, 4, &pos)) != 12) {
      fprintf(stderr,
              "* HPACK INTEGER DECODER ERROR ex. 0c 12 != %" PRId64 "\n",
              result);
      exit(-1);
    }

    pos = 0;
    if ((result = hpack_int_unpack((uint8_t *)"\x1f\x9a\x0a", 3, 5, &pos)) !=
        1337) {
      fprintf(
          stderr,
          "* HPACK INTEGER DECODER ERROR ex. \\x1f\\x9a\\x0a 1337 != %" PRId64
          "\n",
          result);
      exit(-1);
    }

    for (size_t i = 0; i < (1 << 21); ++i) {
      buf_pos = 0;
      int pack_bytes =
          hpack_int_pack(buffer + buf_pos, limit - buf_pos, i, i & 7);
      if (pack_bytes == -1) {
        fprintf(stderr,
                "* HPACK INTEGER ENCODE ERROR 1 ( %zu) (prefix == %zu)\n", i,
                i & 7);
        exit(-1);
      }
      buf_pos += pack_bytes;
      pack_bytes =
          hpack_int_pack(buffer + buf_pos, limit - buf_pos, (i << 4), i & 7);
      if (pack_bytes == -1) {
        fprintf(stderr,
                "* HPACK INTEGER ENCODE ERROR 1 ( %zu) (prefix == %zu)\n", i,
                i & 7);
        exit(-1);
      }
      buf_pos = 0;
      result = hpack_int_unpack(buffer, limit, (i & 7), &buf_pos);
      if ((size_t)result != i) {
        fprintf(stderr,
                "* HPACK INTEGER DECODE ERROR 2 expected %zu got %" PRId64
                " (prefix == %zu)\n",
                i, result, (i & 7));
        exit(-1);
      }
      result = hpack_int_unpack(buffer, limit, (i & 7), &buf_pos);
      if ((size_t)result != (i << 4)) {
        fprintf(stderr,
                "* HPACK INTEGER DECODE ERROR 2 expected %zu got %" PRId64
                " (prefix == %zu)\n",
                (i << 4), result, (i & 7));
        exit(-1);
      }
    }
    fprintf(stderr, "* HPACK integer primitive test complete.\n");
  }
  buf_pos = 0;
  {
    /* validate huffman tree */
    for (int i = 0; i < 257; ++i) {
      const huffman_decode_s *node = huffman_decode_tree;
      uint32_t code = huffman_encode_table[i].code;
      uint8_t consumed = 32 - huffman_encode_table[i].bits;
      while (consumed < 32) {
        node += node->offset[(code >> 31) & 1];
        code <<= 1;
        ++consumed;
      }
      if (i != node->value) {
        fprintf(stderr,
                "ERROR validating huffman tree - validation error for %d "
                "(value: %d != "
                "%d)\n",
                i, node->value, i);
        exit(-1);
      }
    }
    fprintf(stderr, "* HPACK Huffman tree validated.\n");
    /* test huffman encoding / decoding packing */
    const size_t results_limit = 1024;
    uint8_t results[1024];
    size_t pos = 0;
    memset(results, 0, results_limit);
    int tmp = hpack_huffman_unpack(
        results, results_limit,
        "\x9d\x29\xad\x17\x18\x63\xc7\x8f\x0b\x97\xc8\xe9\xae\x82"
        "\xae\x43\xd3",
        17, &pos);
    if (tmp == -1) {
      fprintf(stderr, "* HPACK HUFFMAN TEST FAILED unpacking error (1).\n");
      exit(-1);
    } else if ((size_t)tmp > (limit - buf_pos)) {
      fprintf(stderr, "* HPACK HUFFMAN TEST buffer full error (1).\n");
    } else if (memcmp(results, "https://www.example.com", 23) || tmp != 23) {
      fprintf(stderr,
              "* HPACK HUFFMAN TEST FAILED result error (1).\n(%d) %.*s\n", tmp,
              tmp, results);
      exit(-1);
    }
    memset(results, 0, results_limit);
    pos = 0;
    tmp = hpack_huffman_unpack(
        results, results_limit,
        "\xf1\xe3\xc2\xe5\xf2\x3a\x6b\xa0\xab\x90\xf4\xff", 12, &pos);
    if (tmp == -1) {
      fprintf(stderr, "* HPACK HUFFMAN TEST FAILED unpacking error (2).\n");
      exit(-1);
    } else if ((size_t)tmp > results_limit) {
      fprintf(stderr, "* HPACK HUFFMAN TEST buffer full error (2).\n");
    } else if (memcmp(results, "www.example.com", 15) || tmp != 15) {
      fprintf(stderr, "* HPACK HUFFMAN TEST FAILED result error (2).\n");
      exit(-1);
    }

    memset(results, 0, results_limit);
    tmp = hpack_huffman_pack(results, results_limit, "https://www.example.com",
                             23);
    if (tmp == -1) {
      fprintf(stderr, "* HPACK HUFFMAN TEST FAILED packing error!.\n");
      exit(-1);
    } else if ((size_t)tmp > limit - buf_pos) {
      fprintf(stderr, "* HPACK HUFFMAN TEST packing buffer full!\n");
    } else if (tmp != 17 || memcmp("\x9d\x29\xad\x17\x18\x63\xc7\x8f\x0b\x97"
                                   "\xc8\xe9\xae\x82\xae\x43\xd3",
                                   results, 17)) {
      fprintf(stderr,
              "* HPACK HUFFMAN TEST FAILED packing result error!\n(%d) ", tmp);
      for (int i = 0; i < tmp; ++i) {
        fprintf(stderr, "\\x%.2X", results[i]);
      }
      fprintf(stderr, "\n");
      exit(-1);
    }
    memset(results, 0, results_limit);
    memset(buffer, 0, 128);
    tmp = hpack_huffman_pack(
        buffer, limit,
        "I want to go home... but I have to write tests... woohoo!", 57);
    if (tmp == -1) {
      fprintf(stderr, "* HPACK HUFFMAN TEST FAILED packing error (3).\n");
      exit(-1);
    } else if ((size_t)tmp > limit) {
      fprintf(stderr, "* HPACK HUFFMAN TEST buffer full (3).\n");
    } else {
      int old_tmp = tmp;
      pos = 0;
      tmp = hpack_huffman_unpack(results, results_limit, buffer, tmp, &pos);
      if (tmp == -1) {
        fprintf(
            stderr,
            "* HPACK HUFFMAN TEST FAILED unpacking error (3) for %d bytes.\n"
            "*    Got (%d): %.*s\n",
            old_tmp, tmp, (int)tmp, results);
        exit(-1);
      } else if (memcmp(results,
                        "I want to go home... but I have to write tests... "
                        "woohoo!",
                        57) ||
                 tmp != 57) {
        fprintf(stderr,
                "* HPACK HUFFMAN TEST FAILED result error (3).\n*    Got "
                "(%u): %.*s\n",
                tmp, (int)tmp, results);
        exit(-1);
      }
    }
    fprintf(stderr, "* HPACK Huffman compression test finished.\n");
  }
  buf_pos = 0;
  memset(buffer, 0, 128);
  if (1) {
    /* test string packing */
    size_t pos = 0;
    int tmp = hpack_string_unpack(
        buffer, limit, "\x0a\x63\x75\x73\x74\x6f\x6d\x2d\x6b\x65\x79", 11,
        &pos);
    if (pos != 11) {
      fprintf(stderr,
              "* HPACK STRING UNPACKING FAILED(!) wrong reading position %zu "
              "!= 11\n",
              pos);
      exit(-1);
    }
    if (tmp == -1) {
      fprintf(stderr, "* HPACK STRING UNPACKING FAILED(!) for example.\n");
      exit(-1);
    } else {
      if (tmp != 10)
        fprintf(stderr,
                "* HPACK STRING UNPACKING ERROR example len %d != 10.\n", tmp);
      if (memcmp(buffer, "\x63\x75\x73\x74\x6f\x6d\x2d\x6b\x65\x79", 10))
        fprintf(stderr,
                "* HPACK STRING UNPACKING ERROR example returned: %.*s\n",
                (int)tmp, buffer);
    }

    pos = 0;
    memset(buffer, 0, 128);
    tmp = hpack_string_unpack(
        buffer, limit, "\x8c\xf1\xe3\xc2\xe5\xf2\x3a\x6b\xa0\xab\x90\xf4\xff",
        13, &pos);
    if (tmp == -1) {
      fprintf(stderr,
              "* HPACK STRING UNPACKING FAILED(!) for compressed example. %s\n",
              buffer);
      exit(-1);
    } else {
      if (tmp != 15) {
        fprintf(
            stderr,
            "* HPACK STRING UNPACKING ERROR compressed example len %d != 15.\n",
            tmp);
        exit(-1);
      }
      if (memcmp(buffer, "www.example.com", 10)) {
        fprintf(stderr,
                "* HPACK STRING UNPACKING ERROR compressed example returned: "
                "%.*s\n",
                tmp, buffer);
        exit(-1);
      }
      if (pos != 13) {
        fprintf(stderr,
                "* HPACK STRING UNPACKING FAILED(!) wrong reading position %zu "
                "!= 13\n",
                pos);
        exit(-1);
      }
    }

    if (1) {
      char *str1 = "This is a string to be packed, either compressed or not.";
      buf_pos = 0;
      size_t i = 0;
      const size_t repeats = 1024;
      for (i = 0; i < repeats; i++) {
        tmp = hpack_string_pack(buffer + buf_pos, limit - buf_pos, str1, 56,
                                (i & 1) == 1);
        if (tmp == -1)
          fprintf(stderr, "* HPACK STRING PACKING FAIL AT %zu\n", i);
        else if ((size_t)tmp > limit - buf_pos)
          break;
        buf_pos += tmp;
      }
      int count = i;
      buf_pos = 0;
      while (i) {
        char result[56];
        memset(result, 0, 56);
        --i;
        tmp = hpack_string_unpack(result, 56, buffer, limit, &buf_pos);
        if (tmp == -1) {
          fprintf(stderr, "* HPACK STRING UNPACKING FAIL AT %zu\n",
                  (repeats - 1) - i);
          exit(-1);
        } else if (tmp != 56) {
          fprintf(stderr,
                  "* HPACK STRING UNPACKING ERROR AT %zu - got string "
                  "length %u instead of 56: %.*s\n",
                  (repeats - 1) - i, tmp, 56, result);
          exit(-1);
        }
        if (memcmp(str1, result, 56)) {
          fprintf(stderr,
                  "* HPACK STRING UNPACKING ERROR AT %zu. Got (%u) %.*s\n",
                  (repeats - 1) - i, tmp, tmp, result);
          exit(-1);
        }
      }
      fprintf(stderr,
              "* HPACK string primitive test complete (buffer used %d/%zu "
              "strings)\n",
              count, repeats);
    }
  }
}
#else

#define hpack_test()

#endif /* DEBUG */

/* *****************************************************************************






                  Auto-generate binary tree from table data






***************************************************************************** */

#if HPACK_BUILD_HPACK_STRUCT

/*
This section prints out the C code required to create a static, Array based,
binary tree with the following type / fields:
*/

#include <stdio.h>

typedef struct {
  uint32_t code;
  uint8_t bits;
  int16_t value;
} huffman_code_s;

/* the huffman decoding binary tree type */
typedef struct {
  int16_t value;     // value, -1 == none.
  uint8_t offset[2]; // offset for 0 and one. 0 == leaf node.
} huffman_decode_nc_s;

/** used to print the binary reverse testing */
static MAYBE_UNUSED void huffman__print_bin_num(uint32_t num, uint8_t bits) {
  fprintf(stderr, "0b");
  if (((32 - bits) & 31))
    num <<= ((32 - bits) & 31);
  for (size_t i = 0; i < bits; i++) {
    if (num & (1 << (31 - i)))
      fprintf(stderr, "1");
    else
      fprintf(stderr, "0");
  }
}

static void huffman__print_unit(huffman_decode_nc_s d, size_t index,
                                size_t code, size_t bits) {
  if (d.value != -1) {
    fprintf(stderr,
            " {.value = %d, .offset = {%zu, %zu}}, // [%zu]:", (int)d.value,
            (size_t)d.offset[0], (size_t)d.offset[1], index);
    huffman__print_bin_num(code, bits);
    fprintf(stderr, "\n");
  } else {
    fprintf(stderr, " {.value = %d, .offset = {%zu, %zu}}, // [%zu]\n",
            (int)d.value, (size_t)d.offset[0], (size_t)d.offset[1], index);
  }
}

#define HUFFMAN_TREE_BUFFER (1 << 12)

void huffman__print_tree(void) {
  /* The Huffman Encoding table was copied from
   * http://httpwg.org/specs/rfc7541.html#huffman.code
   */
  const huffman_encode_s encode_table[] = {
      /* 257 elements, 0..256 all sym + EOS */
      {0x1ff8U, 13},     {0x7fffd8U, 23},   {0xfffffe2U, 28},  {0xfffffe3U, 28},
      {0xfffffe4U, 28},  {0xfffffe5U, 28},  {0xfffffe6U, 28},  {0xfffffe7U, 28},
      {0xfffffe8U, 28},  {0xffffeaU, 24},   {0x3ffffffcU, 30}, {0xfffffe9U, 28},
      {0xfffffeaU, 28},  {0x3ffffffdU, 30}, {0xfffffebU, 28},  {0xfffffecU, 28},
      {0xfffffedU, 28},  {0xfffffeeU, 28},  {0xfffffefU, 28},  {0xffffff0U, 28},
      {0xffffff1U, 28},  {0xffffff2U, 28},  {0x3ffffffeU, 30}, {0xffffff3U, 28},
      {0xffffff4U, 28},  {0xffffff5U, 28},  {0xffffff6U, 28},  {0xffffff7U, 28},
      {0xffffff8U, 28},  {0xffffff9U, 28},  {0xffffffaU, 28},  {0xffffffbU, 28},
      {0x14U, 6},        {0x3f8U, 10},      {0x3f9U, 10},      {0xffaU, 12},
      {0x1ff9U, 13},     {0x15U, 6},        {0xf8U, 8},        {0x7faU, 11},
      {0x3faU, 10},      {0x3fbU, 10},      {0xf9U, 8},        {0x7fbU, 11},
      {0xfaU, 8},        {0x16U, 6},        {0x17U, 6},        {0x18U, 6},
      {0x0U, 5},         {0x1U, 5},         {0x2U, 5},         {0x19U, 6},
      {0x1aU, 6},        {0x1bU, 6},        {0x1cU, 6},        {0x1dU, 6},
      {0x1eU, 6},        {0x1fU, 6},        {0x5cU, 7},        {0xfbU, 8},
      {0x7ffcU, 15},     {0x20U, 6},        {0xffbU, 12},      {0x3fcU, 10},
      {0x1ffaU, 13},     {0x21U, 6},        {0x5dU, 7},        {0x5eU, 7},
      {0x5fU, 7},        {0x60U, 7},        {0x61U, 7},        {0x62U, 7},
      {0x63U, 7},        {0x64U, 7},        {0x65U, 7},        {0x66U, 7},
      {0x67U, 7},        {0x68U, 7},        {0x69U, 7},        {0x6aU, 7},
      {0x6bU, 7},        {0x6cU, 7},        {0x6dU, 7},        {0x6eU, 7},
      {0x6fU, 7},        {0x70U, 7},        {0x71U, 7},        {0x72U, 7},
      {0xfcU, 8},        {0x73U, 7},        {0xfdU, 8},        {0x1ffbU, 13},
      {0x7fff0U, 19},    {0x1ffcU, 13},     {0x3ffcU, 14},     {0x22U, 6},
      {0x7ffdU, 15},     {0x3U, 5},         {0x23U, 6},        {0x4U, 5},
      {0x24U, 6},        {0x5U, 5},         {0x25U, 6},        {0x26U, 6},
      {0x27U, 6},        {0x6U, 5},         {0x74U, 7},        {0x75U, 7},
      {0x28U, 6},        {0x29U, 6},        {0x2aU, 6},        {0x7U, 5},
      {0x2bU, 6},        {0x76U, 7},        {0x2cU, 6},        {0x8U, 5},
      {0x9U, 5},         {0x2dU, 6},        {0x77U, 7},        {0x78U, 7},
      {0x79U, 7},        {0x7aU, 7},        {0x7bU, 7},        {0x7ffeU, 15},
      {0x7fcU, 11},      {0x3ffdU, 14},     {0x1ffdU, 13},     {0xffffffcU, 28},
      {0xfffe6U, 20},    {0x3fffd2U, 22},   {0xfffe7U, 20},    {0xfffe8U, 20},
      {0x3fffd3U, 22},   {0x3fffd4U, 22},   {0x3fffd5U, 22},   {0x7fffd9U, 23},
      {0x3fffd6U, 22},   {0x7fffdaU, 23},   {0x7fffdbU, 23},   {0x7fffdcU, 23},
      {0x7fffddU, 23},   {0x7fffdeU, 23},   {0xffffebU, 24},   {0x7fffdfU, 23},
      {0xffffecU, 24},   {0xffffedU, 24},   {0x3fffd7U, 22},   {0x7fffe0U, 23},
      {0xffffeeU, 24},   {0x7fffe1U, 23},   {0x7fffe2U, 23},   {0x7fffe3U, 23},
      {0x7fffe4U, 23},   {0x1fffdcU, 21},   {0x3fffd8U, 22},   {0x7fffe5U, 23},
      {0x3fffd9U, 22},   {0x7fffe6U, 23},   {0x7fffe7U, 23},   {0xffffefU, 24},
      {0x3fffdaU, 22},   {0x1fffddU, 21},   {0xfffe9U, 20},    {0x3fffdbU, 22},
      {0x3fffdcU, 22},   {0x7fffe8U, 23},   {0x7fffe9U, 23},   {0x1fffdeU, 21},
      {0x7fffeaU, 23},   {0x3fffddU, 22},   {0x3fffdeU, 22},   {0xfffff0U, 24},
      {0x1fffdfU, 21},   {0x3fffdfU, 22},   {0x7fffebU, 23},   {0x7fffecU, 23},
      {0x1fffe0U, 21},   {0x1fffe1U, 21},   {0x3fffe0U, 22},   {0x1fffe2U, 21},
      {0x7fffedU, 23},   {0x3fffe1U, 22},   {0x7fffeeU, 23},   {0x7fffefU, 23},
      {0xfffeaU, 20},    {0x3fffe2U, 22},   {0x3fffe3U, 22},   {0x3fffe4U, 22},
      {0x7ffff0U, 23},   {0x3fffe5U, 22},   {0x3fffe6U, 22},   {0x7ffff1U, 23},
      {0x3ffffe0U, 26},  {0x3ffffe1U, 26},  {0xfffebU, 20},    {0x7fff1U, 19},
      {0x3fffe7U, 22},   {0x7ffff2U, 23},   {0x3fffe8U, 22},   {0x1ffffecU, 25},
      {0x3ffffe2U, 26},  {0x3ffffe3U, 26},  {0x3ffffe4U, 26},  {0x7ffffdeU, 27},
      {0x7ffffdfU, 27},  {0x3ffffe5U, 26},  {0xfffff1U, 24},   {0x1ffffedU, 25},
      {0x7fff2U, 19},    {0x1fffe3U, 21},   {0x3ffffe6U, 26},  {0x7ffffe0U, 27},
      {0x7ffffe1U, 27},  {0x3ffffe7U, 26},  {0x7ffffe2U, 27},  {0xfffff2U, 24},
      {0x1fffe4U, 21},   {0x1fffe5U, 21},   {0x3ffffe8U, 26},  {0x3ffffe9U, 26},
      {0xffffffdU, 28},  {0x7ffffe3U, 27},  {0x7ffffe4U, 27},  {0x7ffffe5U, 27},
      {0xfffecU, 20},    {0xfffff3U, 24},   {0xfffedU, 20},    {0x1fffe6U, 21},
      {0x3fffe9U, 22},   {0x1fffe7U, 21},   {0x1fffe8U, 21},   {0x7ffff3U, 23},
      {0x3fffeaU, 22},   {0x3fffebU, 22},   {0x1ffffeeU, 25},  {0x1ffffefU, 25},
      {0xfffff4U, 24},   {0xfffff5U, 24},   {0x3ffffeaU, 26},  {0x7ffff4U, 23},
      {0x3ffffebU, 26},  {0x7ffffe6U, 27},  {0x3ffffecU, 26},  {0x3ffffedU, 26},
      {0x7ffffe7U, 27},  {0x7ffffe8U, 27},  {0x7ffffe9U, 27},  {0x7ffffeaU, 27},
      {0x7ffffebU, 27},  {0xffffffeU, 28},  {0x7ffffecU, 27},  {0x7ffffedU, 27},
      {0x7ffffeeU, 27},  {0x7ffffefU, 27},  {0x7fffff0U, 27},  {0x3ffffeeU, 26},
      {0x3fffffffU, 30},
  };
  /* copy code list */
  huffman_code_s ordered[257];
  for (uint16_t i = 0; i < 257; ++i) {
    ordered[i] = (huffman_code_s){
        .value = i,
        .bits = encode_table[i].bits,
        .code = encode_table[i].code,
    };
  }
  /* order list by code's bit order (0100 > 0011), use a bunch of CPU... */
  {
    uint16_t i = 0;
    while (i < 256) {
      if (ordered[i].code > ordered[i + 1].code) {
        huffman_code_s tmp = ordered[i + 1];
        ++i;
        do {
          ordered[i] = ordered[i - 1];
        } while (--i && ordered[i - 1].code > tmp.code);
        ordered[i] = tmp;
      }
      ++i;
    }
  }
  /* build tree */
  huffman_decode_nc_s tree[HUFFMAN_TREE_BUFFER];
  size_t tree_len = 0;
  for (int i = 0; i < HUFFMAN_TREE_BUFFER; ++i) {
    tree[i] = (huffman_decode_nc_s){.value = -1,
                                    .offset = {(uint8_t)-1, (uint8_t)-1}};
  }
  {
    size_t max_offset = 0;
    size_t next = 1;
    for (int i = 0; i < 257; ++i) {
      /* for each code point, map a tree path */
      size_t pos = 0;
      uint32_t code = ordered[i].code;
      for (int b = 0; b < ordered[i].bits; ++b) {
        if (code & (1ULL << (ordered[i].bits - 1))) {
          /* map 1 branch */
          if (tree[pos].offset[1] != (uint8_t)-1)
            pos += tree[pos].offset[1];
          else {
            if (next - pos > max_offset)
              max_offset = next - pos;
            tree[pos].offset[1] = next - pos;
            pos = next;
            ++next;
          }
        } else {
          /* map 0 branch */
          if (tree[pos].offset[0] != (uint8_t)-1)
            pos += tree[pos].offset[0];
          else {
            if (next - pos > max_offset)
              max_offset = next - pos;
            tree[pos].offset[0] = next - pos;
            pos = next;
            ++next;
          }
        }
        code <<= 1;
      }
      tree[pos] = (huffman_decode_nc_s){.value = ordered[i].value};
    }
    fprintf(stderr, "Total tree length = %zu, max offset = %zu\n", next,
            max_offset);
    tree_len = next;
  }
  {
    /* Validate tree */
    for (int i = 0; i < 257; ++i) {
      huffman_decode_nc_s *node = tree;
      uint32_t code = ordered[i].code;
      uint8_t consumed = 32 - ordered[i].bits;
      code <<= consumed;
      while (consumed < 32) {
        node += node->offset[(code >> 31) & 1];
        code <<= 1;
        ++consumed;
      }
      if (ordered[i].value != node->value) {
        fprintf(stderr,
                "ERROR building tree - validation error for %d (value: %d != "
                "%d)\n",
                i, node->value, ordered[i].value);
        exit(-1);
      }
    }
  }
  fprintf(stderr,
          "***** Copy after this line ****\n\n"
          "/** Static Huffman encoding map, left aligned */\n"

          "static const huffman_encode_s huffman_encode_table[257] = {\n");
  for (size_t i = 0; i < 257; ++i) {
    /* print huffman code left align */
    fprintf(stderr, " {.code = 0x%.08X, .bits = %u}, // [%zu] \n",
            (encode_table[i].code << (32 - encode_table[i].bits)),
            encode_table[i].bits, i);
  }
  fprintf(stderr,
          "};\n\n/** Static Huffman decoding tree, flattened as an array */\n"

          "static const huffman_decode_s huffman_decode_tree[%zu] = {\n",
          tree_len);
  for (size_t i = 0; i < tree_len; ++i) {
    huffman__print_unit(
        tree[i], i,
        (tree[i].value == -1) ? 0 : encode_table[tree[i].value].code,
        (tree[i].value == -1) ? 0 : encode_table[tree[i].value].bits);
  }
  fprintf(stderr, "};\n\n\n**************( stop copying )**************\n\n");
  for (int i = 0; i < 256; ++i) {
    uint8_t data[4] = {0};
    uint8_t result = 0;
    size_t r_pos = 0;
    uint32_t code = ordered[i].code;
    code <<= 32 - ordered[i].bits;
    code |= (1UL << (32 - ordered[i].bits)) - 1;
    data[0] = (code >> 24) & 0xFF;
    data[1] = (code >> 16) & 0xFF;
    data[2] = (code >> 8) & 0xFF;
    data[3] = (code >> 0) & 0xFF;
    hpack_huffman_unpack(&result, 1, &data, 4, &r_pos);
    r_pos = 0;
    if (result != ordered[i].value) {
      fprintf(stderr, "ERR: (%u) %u != %u (%d, %d)\n", data[0], result,
              ordered[i].value,
              hpack_huffman_unpack(&result, 1, &data, 1, &r_pos), i);
      exit(-1);
    }
  }
  hpack_test();
}

int main(void) {
  huffman__print_tree();
  return 0;
}

#endif

/* *****************************************************************************






                      Paste auto-generated data here







***************************************************************************** */

/** Static Huffman encoding map, left aligned */

/** Static Huffman decoding tree, flattened as an array */

/* *****************************************************************************





                              Don't overwrite this





***************************************************************************** */

#endif /* H_HPACK_H */