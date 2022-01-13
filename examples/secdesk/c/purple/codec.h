#ifndef GMA_HEADER_FILE
#define GMA_HEADER_FILE

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <inttypes.h>
#include <arpa/inet.h>
#include <float.h>

#include "float754.h"

#pragma pack(push,1)

#define id(X) (X)

typedef struct _trailer_datatype {
  uint32_t seq;
  uint32_t rqr;
  uint32_t oid;
  uint16_t mid;
  uint16_t crc;
} trailer_datatype;

#ifndef TYP_BASE
#define TYP_BASE 0
#endif /* TYP_BASE */
#define DATA_TYP_NEXTRPC TYP_BASE + 1
#define DATA_TYP_OKAY TYP_BASE + 2
#define DATA_TYP_REQUEST_RECOGNIZE TYP_BASE + 3
#define DATA_TYP_RESPONSE_RECOGNIZE TYP_BASE + 4
#define DATA_TYP_REQUEST_START_RECOGNIZER TYP_BASE + 5
#define DATA_TYP_RESPONSE_START_RECOGNIZER TYP_BASE + 6
#define DATA_TYP_REQUEST_STOP_RECOGNIZER TYP_BASE + 7
#define DATA_TYP_RESPONSE_STOP_RECOGNIZER TYP_BASE + 8

typedef struct _nextrpc_datatype {
  int32_t mux;
  int32_t sec;
  int32_t typ;
  trailer_datatype trailer;
} nextrpc_datatype;

typedef struct _nextrpc_output {
  int32_t mux;
  int32_t sec;
  int32_t typ;
  trailer_datatype trailer;
} nextrpc_output;

typedef struct _okay_datatype {
  int32_t x;
  trailer_datatype trailer;
} okay_datatype;

typedef struct _okay_output {
  int32_t x;
  trailer_datatype trailer;
} okay_output;

typedef struct _request_recognize_datatype {
  double embedding[128];
  trailer_datatype trailer;
} request_recognize_datatype;

typedef struct _request_recognize_output {
  uint64_t embedding[128];
  trailer_datatype trailer;
} request_recognize_output;

typedef struct _response_recognize_datatype {
  int32_t ret;
  trailer_datatype trailer;
} response_recognize_datatype;

typedef struct _response_recognize_output {
  int32_t ret;
  trailer_datatype trailer;
} response_recognize_output;

typedef struct _request_start_recognizer_datatype {
  int32_t dummy;
  trailer_datatype trailer;
} request_start_recognizer_datatype;

typedef struct _request_start_recognizer_output {
  int32_t dummy;
  trailer_datatype trailer;
} request_start_recognizer_output;

typedef struct _response_start_recognizer_datatype {
  int32_t ret;
  trailer_datatype trailer;
} response_start_recognizer_datatype;

typedef struct _response_start_recognizer_output {
  int32_t ret;
  trailer_datatype trailer;
} response_start_recognizer_output;

typedef struct _request_stop_recognizer_datatype {
  int32_t dummy;
  trailer_datatype trailer;
} request_stop_recognizer_datatype;

typedef struct _request_stop_recognizer_output {
  int32_t dummy;
  trailer_datatype trailer;
} request_stop_recognizer_output;

typedef struct _response_stop_recognizer_datatype {
  int32_t ret;
  trailer_datatype trailer;
} response_stop_recognizer_datatype;

typedef struct _response_stop_recognizer_output {
  int32_t ret;
  trailer_datatype trailer;
} response_stop_recognizer_output;

#pragma pack(pop)

extern void nextrpc_print (nextrpc_datatype *nextrpc);
extern void nextrpc_data_encode (void *buff_out, void *buff_in, size_t *len_out);
extern void nextrpc_data_decode (void *buff_out, void *buff_in, size_t *len_in);

extern void okay_print (okay_datatype *okay);
extern void okay_data_encode (void *buff_out, void *buff_in, size_t *len_out);
extern void okay_data_decode (void *buff_out, void *buff_in, size_t *len_in);

extern void request_recognize_print (request_recognize_datatype *request_recognize);
extern void request_recognize_data_encode (void *buff_out, void *buff_in, size_t *len_out);
extern void request_recognize_data_decode (void *buff_out, void *buff_in, size_t *len_in);

extern void response_recognize_print (response_recognize_datatype *response_recognize);
extern void response_recognize_data_encode (void *buff_out, void *buff_in, size_t *len_out);
extern void response_recognize_data_decode (void *buff_out, void *buff_in, size_t *len_in);

extern void request_start_recognizer_print (request_start_recognizer_datatype *request_start_recognizer);
extern void request_start_recognizer_data_encode (void *buff_out, void *buff_in, size_t *len_out);
extern void request_start_recognizer_data_decode (void *buff_out, void *buff_in, size_t *len_in);

extern void response_start_recognizer_print (response_start_recognizer_datatype *response_start_recognizer);
extern void response_start_recognizer_data_encode (void *buff_out, void *buff_in, size_t *len_out);
extern void response_start_recognizer_data_decode (void *buff_out, void *buff_in, size_t *len_in);

extern void request_stop_recognizer_print (request_stop_recognizer_datatype *request_stop_recognizer);
extern void request_stop_recognizer_data_encode (void *buff_out, void *buff_in, size_t *len_out);
extern void request_stop_recognizer_data_decode (void *buff_out, void *buff_in, size_t *len_in);

extern void response_stop_recognizer_print (response_stop_recognizer_datatype *response_stop_recognizer);
extern void response_stop_recognizer_data_encode (void *buff_out, void *buff_in, size_t *len_out);
extern void response_stop_recognizer_data_decode (void *buff_out, void *buff_in, size_t *len_in);

#endif
