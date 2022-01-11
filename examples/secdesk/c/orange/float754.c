/*
 * FLOAT.C
 *   IEEE-754 uint64_t encoding/decoding, plus conversion macros into/from network (x865) byte order
 *
 *  1) Pack (double/float) encoder and decoder using: https://beej.us/guide/bgnet/examples/ieee754.c
 *    a) uint64_t = 1-bit Sign (1=-), 11-bit Biased Exponent (BE), 52-bit Normalised Mantisa (NM)
 *       e.g., 85.125 = 1.010101001 x 2^6 => S=0, BE=(bias=1023)+(6)=10000000101, NM=010101001000000...
 *    n) uint32_t = 1-bit Sign (1=-),  8-bit Biased Exponent (BE), 23-bit Normalised Mantisa (NM)
 *
 *  2) Endian converter changes byte order between host encoded (uint_xx_t) and big-endian network format
       (unless FLOAT_BIG_ENDIAN=0, in which case it converts to a little-endian network format)
 */

#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <arpa/inet.h>
 
#include "float754.h"

#define pack754_32(f)   (pack754((f),   32, 8))
#define pack754_64(f)   (pack754((f),   64, 11))
#define unpack754_32(i) (unpack754((i), 32, 8))
#define unpack754_64(i) (unpack754((i), 64, 11))

/* Encoding into IEEE-754 encoded double */
uint64_t pack754(long double f, unsigned bits, unsigned expbits)
{
  long double fnorm;
  int shift;
  long long sign, exp, significand;
  unsigned significandbits = bits - expbits - 1; // -1 for sign bit

  if (f == 0.0) return 0; // get this special case out of the way

  // check sign and begin normalization
  if (f < 0) { sign = 1; fnorm = -f; }
  else { sign = 0; fnorm = f; }

  // get the normalized form of f and track the exponent
  shift = 0;
  while(fnorm >= 2.0) { fnorm /= 2.0; shift++; }
  while(fnorm < 1.0) { fnorm *= 2.0; shift--; }
  fnorm = fnorm - 1.0;

  // calculate the binary form (non-float) of the significand data
  significand = fnorm * ((1LL<<significandbits) + 0.5f);

  // get the biased exponent
  exp = shift + ((1<<(expbits-1)) - 1); // shift + bias

  // return the final answer
  return (sign<<(bits-1)) | (exp<<(bits-expbits-1)) | significand;
}

/* Decoding from IEEE-754 encoded double */
long double unpack754(uint64_t i, unsigned bits, unsigned expbits)
{
  long double result;
  long long shift;
  unsigned bias;
  unsigned significandbits = bits - expbits - 1; // -1 for sign bit

  if (i == 0) return 0.0;

  // pull the significand
  result = (i&((1LL<<significandbits)-1)); // mask
  result /= (1LL<<significandbits); // convert back to float
  result += 1.0f; // add the one back on

  // deal with the exponent
  bias = (1<<(expbits-1)) - 1;
  shift = ((i>>significandbits)&((1LL<<expbits)-1)) - bias;
  while(shift > 0) { result *= 2.0; shift--; }
  while(shift < 0) { result /= 2.0; shift++; }

  // sign it
  result *= (i>>(bits-1))&1? -1.0: 1.0;

  return result;
}

/* Converts host float by encoding into IEEE-754 uint32_t and putting into Network byte order */
uint32_t htonf(float f) {
  uint32_t h = pack754_32(f);
  if (FLOAT_BIG_ENDIAN != 0)  return ((my_htonl(h)));  /* to Network Big-Endian */
  else                        return ((my_htoxl(h)));  /* to Network Little-Endian */
}

/* Converts IEEE-754 uint32_t in Network byte order into host float */
float ntohf(uint32_t i) {
  uint32_t    h;
  
  if (FLOAT_BIG_ENDIAN != 0)  h = (my_htonl(i));      /* from Network Big-Endian */
  else                        h = (my_htoxl(i));      /* from Network Little-Endian */
  return (unpack754_32(h));
}

/* Converts host double by encoding into IEEE-754 uint64_t and putting into Network byte order */
uint64_t htond(long double f) {
  uint64_t h = pack754_64(f);
  if (FLOAT_BIG_ENDIAN != 0)  return ((my_htonll(h)));  /* to Network Big-Endian */
  else                        return ((my_htoxll(h)));  /* to Network Little-Endian */
}

/* Converts IEEE-754 uint64_t in Network byte order into host double */
long double ntohd(uint64_t i) {
  uint64_t    h;
  if (FLOAT_BIG_ENDIAN != 0)  h = (my_htonll(i));      /* from Network Big-Endian */
  else                        h = (my_htoxll(i));      /* from Network Little-Endian */
  return (unpack754_64(h));
}
