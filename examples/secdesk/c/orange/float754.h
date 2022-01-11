#ifndef _FLOAT_H_
#define _FLOAT_H_

/* Network order for double/float: 0 = Little endian, 1 = Big endian          */
/* Currently our DFDL uses littleEndian network order for float and double    */
/* This choice was based on the convention used by the shapeFile format       */
/* We are preserving bigEndian order for all integer types including uint64_t */
#define FLOAT_BIG_ENDIAN 0

#define big_end_test (1==htonl(1))

#define swap_uint16(x) (((uint16_t)           ((x) & 0xFF)       <<  8) | (((x) & 0xFF00) >>  8))
#define swap_uint32(x) (((uint32_t)swap_uint16((x) & 0xFFFF)     << 16) | swap_uint16((x) >> 16))
#define swap_uint64(x) (((uint64_t)swap_uint32((x) & 0xFFFFFFFF) << 32) | swap_uint32((x) >> 32))

#define my_htoxll(x) (big_end_test ? swap_uint64(x) : (x))
#define my_htoxl(x)  (big_end_test ? swap_uint32(x) : (x))
#define my_htonll(x) (big_end_test ? (x) : swap_uint64(x))
#define my_htonl(x)  (big_end_test ? (x) : swap_uint32(x))

/* Functions / macros called by user */
#define htonll(x) my_htonll(x)
#define ntohll(x) my_htonll(x)

extern uint32_t    htonf(float);
extern float       ntohf(uint32_t);
extern uint64_t    htond(long double);
extern long double ntohd(uint64_t);

#endif /* _FLOAT_H_ */
