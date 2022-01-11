#include "codec.h"

void nextrpc_print (nextrpc_datatype *nextrpc) {
  fprintf(stderr, "nextrpc(len=%ld): ", sizeof(*nextrpc));
  fprintf(stderr, " %d,", nextrpc->mux);
  fprintf(stderr, " %d,", nextrpc->sec);
  fprintf(stderr, " %d,", nextrpc->typ);
  fprintf(stderr, " %u, %u, %u, %hu, %hu\n",
          nextrpc->trailer.seq,
          nextrpc->trailer.rqr,
          nextrpc->trailer.oid,
          nextrpc->trailer.mid,
          nextrpc->trailer.crc);
}

void nextrpc_data_encode (void *buff_out, void *buff_in, size_t *len_out) {
  nextrpc_datatype *p1 = (nextrpc_datatype *) buff_in;
  nextrpc_output   *p2 = (nextrpc_output *)   buff_out;
  p2->mux = htonl(p1->mux);
  p2->sec = htonl(p1->sec);
  p2->typ = htonl(p1->typ);
  p2->trailer.seq = htonl(p1->trailer.seq);
  p2->trailer.rqr = htonl(p1->trailer.rqr);
  p2->trailer.oid = htonl(p1->trailer.oid);
  p2->trailer.mid = htons(p1->trailer.mid);
  p2->trailer.crc = htons(p1->trailer.crc);
  *len_out = sizeof(int32_t) + sizeof(int32_t) + sizeof(int32_t) + sizeof(trailer_datatype);
}

void nextrpc_data_decode (void *buff_out, void *buff_in, size_t *len_in) {
  nextrpc_output   *p1 = (nextrpc_output *)   buff_in;
  nextrpc_datatype *p2 = (nextrpc_datatype *) buff_out;
  p2->mux = ntohl(p1->mux);
  p2->sec = ntohl(p1->sec);
  p2->typ = ntohl(p1->typ);
  p2->trailer.seq = ntohl(p1->trailer.seq);
  p2->trailer.rqr = ntohl(p1->trailer.rqr);
  p2->trailer.oid = ntohl(p1->trailer.oid);
  p2->trailer.mid = ntohs(p1->trailer.mid);
  p2->trailer.crc = ntohs(p1->trailer.crc);
}

void okay_print (okay_datatype *okay) {
  fprintf(stderr, "okay(len=%ld): ", sizeof(*okay));
  fprintf(stderr, " %d,", okay->x);
  fprintf(stderr, " %u, %u, %u, %hu, %hu\n",
          okay->trailer.seq,
          okay->trailer.rqr,
          okay->trailer.oid,
          okay->trailer.mid,
          okay->trailer.crc);
}

void okay_data_encode (void *buff_out, void *buff_in, size_t *len_out) {
  okay_datatype *p1 = (okay_datatype *) buff_in;
  okay_output   *p2 = (okay_output *)   buff_out;
  p2->x = htonl(p1->x);
  p2->trailer.seq = htonl(p1->trailer.seq);
  p2->trailer.rqr = htonl(p1->trailer.rqr);
  p2->trailer.oid = htonl(p1->trailer.oid);
  p2->trailer.mid = htons(p1->trailer.mid);
  p2->trailer.crc = htons(p1->trailer.crc);
  *len_out = sizeof(int32_t) + sizeof(trailer_datatype);
}

void okay_data_decode (void *buff_out, void *buff_in, size_t *len_in) {
  okay_output   *p1 = (okay_output *)   buff_in;
  okay_datatype *p2 = (okay_datatype *) buff_out;
  p2->x = ntohl(p1->x);
  p2->trailer.seq = ntohl(p1->trailer.seq);
  p2->trailer.rqr = ntohl(p1->trailer.rqr);
  p2->trailer.oid = ntohl(p1->trailer.oid);
  p2->trailer.mid = ntohs(p1->trailer.mid);
  p2->trailer.crc = ntohs(p1->trailer.crc);
}

void request_recognize_print (request_recognize_datatype *request_recognize) {
  fprintf(stderr, "request_recognize(len=%ld): ", sizeof(*request_recognize));
  for (int i=0; i<128; i++) {
    fprintf(stderr, " %lf,", request_recognize->embedding[i]);
  }
  fprintf(stderr, " %u, %u, %u, %hu, %hu\n",
          request_recognize->trailer.seq,
          request_recognize->trailer.rqr,
          request_recognize->trailer.oid,
          request_recognize->trailer.mid,
          request_recognize->trailer.crc);
}

void request_recognize_data_encode (void *buff_out, void *buff_in, size_t *len_out) {
  request_recognize_datatype *p1 = (request_recognize_datatype *) buff_in;
  request_recognize_output   *p2 = (request_recognize_output *)   buff_out;
  for (int i=0; i<128; i++) {
    p2->embedding[i] = htond(p1->embedding[i]);
  }
  p2->trailer.seq = htonl(p1->trailer.seq);
  p2->trailer.rqr = htonl(p1->trailer.rqr);
  p2->trailer.oid = htonl(p1->trailer.oid);
  p2->trailer.mid = htons(p1->trailer.mid);
  p2->trailer.crc = htons(p1->trailer.crc);
  *len_out = sizeof(double) * 128 + sizeof(trailer_datatype);
}

void request_recognize_data_decode (void *buff_out, void *buff_in, size_t *len_in) {
  request_recognize_output   *p1 = (request_recognize_output *)   buff_in;
  request_recognize_datatype *p2 = (request_recognize_datatype *) buff_out;
  for (int i=0; i<128; i++) {
    p2->embedding[i] = ntohd(p1->embedding[i]);
  }
  p2->trailer.seq = ntohl(p1->trailer.seq);
  p2->trailer.rqr = ntohl(p1->trailer.rqr);
  p2->trailer.oid = ntohl(p1->trailer.oid);
  p2->trailer.mid = ntohs(p1->trailer.mid);
  p2->trailer.crc = ntohs(p1->trailer.crc);
}

void response_recognize_print (response_recognize_datatype *response_recognize) {
  fprintf(stderr, "response_recognize(len=%ld): ", sizeof(*response_recognize));
  fprintf(stderr, " %d,", response_recognize->ret);
  fprintf(stderr, " %u, %u, %u, %hu, %hu\n",
          response_recognize->trailer.seq,
          response_recognize->trailer.rqr,
          response_recognize->trailer.oid,
          response_recognize->trailer.mid,
          response_recognize->trailer.crc);
}

void response_recognize_data_encode (void *buff_out, void *buff_in, size_t *len_out) {
  response_recognize_datatype *p1 = (response_recognize_datatype *) buff_in;
  response_recognize_output   *p2 = (response_recognize_output *)   buff_out;
  p2->ret = htonl(p1->ret);
  p2->trailer.seq = htonl(p1->trailer.seq);
  p2->trailer.rqr = htonl(p1->trailer.rqr);
  p2->trailer.oid = htonl(p1->trailer.oid);
  p2->trailer.mid = htons(p1->trailer.mid);
  p2->trailer.crc = htons(p1->trailer.crc);
  *len_out = sizeof(int32_t) + sizeof(trailer_datatype);
}

void response_recognize_data_decode (void *buff_out, void *buff_in, size_t *len_in) {
  response_recognize_output   *p1 = (response_recognize_output *)   buff_in;
  response_recognize_datatype *p2 = (response_recognize_datatype *) buff_out;
  p2->ret = ntohl(p1->ret);
  p2->trailer.seq = ntohl(p1->trailer.seq);
  p2->trailer.rqr = ntohl(p1->trailer.rqr);
  p2->trailer.oid = ntohl(p1->trailer.oid);
  p2->trailer.mid = ntohs(p1->trailer.mid);
  p2->trailer.crc = ntohs(p1->trailer.crc);
}

void request_start_recognizer_print (request_start_recognizer_datatype *request_start_recognizer) {
  fprintf(stderr, "request_start_recognizer(len=%ld): ", sizeof(*request_start_recognizer));
  fprintf(stderr, " %d,", request_start_recognizer->dummy);
  fprintf(stderr, " %u, %u, %u, %hu, %hu\n",
          request_start_recognizer->trailer.seq,
          request_start_recognizer->trailer.rqr,
          request_start_recognizer->trailer.oid,
          request_start_recognizer->trailer.mid,
          request_start_recognizer->trailer.crc);
}

void request_start_recognizer_data_encode (void *buff_out, void *buff_in, size_t *len_out) {
  request_start_recognizer_datatype *p1 = (request_start_recognizer_datatype *) buff_in;
  request_start_recognizer_output   *p2 = (request_start_recognizer_output *)   buff_out;
  p2->dummy = htonl(p1->dummy);
  p2->trailer.seq = htonl(p1->trailer.seq);
  p2->trailer.rqr = htonl(p1->trailer.rqr);
  p2->trailer.oid = htonl(p1->trailer.oid);
  p2->trailer.mid = htons(p1->trailer.mid);
  p2->trailer.crc = htons(p1->trailer.crc);
  *len_out = sizeof(int32_t) + sizeof(trailer_datatype);
}

void request_start_recognizer_data_decode (void *buff_out, void *buff_in, size_t *len_in) {
  request_start_recognizer_output   *p1 = (request_start_recognizer_output *)   buff_in;
  request_start_recognizer_datatype *p2 = (request_start_recognizer_datatype *) buff_out;
  p2->dummy = ntohl(p1->dummy);
  p2->trailer.seq = ntohl(p1->trailer.seq);
  p2->trailer.rqr = ntohl(p1->trailer.rqr);
  p2->trailer.oid = ntohl(p1->trailer.oid);
  p2->trailer.mid = ntohs(p1->trailer.mid);
  p2->trailer.crc = ntohs(p1->trailer.crc);
}

void response_start_recognizer_print (response_start_recognizer_datatype *response_start_recognizer) {
  fprintf(stderr, "response_start_recognizer(len=%ld): ", sizeof(*response_start_recognizer));
  fprintf(stderr, " %d,", response_start_recognizer->ret);
  fprintf(stderr, " %u, %u, %u, %hu, %hu\n",
          response_start_recognizer->trailer.seq,
          response_start_recognizer->trailer.rqr,
          response_start_recognizer->trailer.oid,
          response_start_recognizer->trailer.mid,
          response_start_recognizer->trailer.crc);
}

void response_start_recognizer_data_encode (void *buff_out, void *buff_in, size_t *len_out) {
  response_start_recognizer_datatype *p1 = (response_start_recognizer_datatype *) buff_in;
  response_start_recognizer_output   *p2 = (response_start_recognizer_output *)   buff_out;
  p2->ret = htonl(p1->ret);
  p2->trailer.seq = htonl(p1->trailer.seq);
  p2->trailer.rqr = htonl(p1->trailer.rqr);
  p2->trailer.oid = htonl(p1->trailer.oid);
  p2->trailer.mid = htons(p1->trailer.mid);
  p2->trailer.crc = htons(p1->trailer.crc);
  *len_out = sizeof(int32_t) + sizeof(trailer_datatype);
}

void response_start_recognizer_data_decode (void *buff_out, void *buff_in, size_t *len_in) {
  response_start_recognizer_output   *p1 = (response_start_recognizer_output *)   buff_in;
  response_start_recognizer_datatype *p2 = (response_start_recognizer_datatype *) buff_out;
  p2->ret = ntohl(p1->ret);
  p2->trailer.seq = ntohl(p1->trailer.seq);
  p2->trailer.rqr = ntohl(p1->trailer.rqr);
  p2->trailer.oid = ntohl(p1->trailer.oid);
  p2->trailer.mid = ntohs(p1->trailer.mid);
  p2->trailer.crc = ntohs(p1->trailer.crc);
}

void request_stop_recognizer_print (request_stop_recognizer_datatype *request_stop_recognizer) {
  fprintf(stderr, "request_stop_recognizer(len=%ld): ", sizeof(*request_stop_recognizer));
  fprintf(stderr, " %d,", request_stop_recognizer->dummy);
  fprintf(stderr, " %u, %u, %u, %hu, %hu\n",
          request_stop_recognizer->trailer.seq,
          request_stop_recognizer->trailer.rqr,
          request_stop_recognizer->trailer.oid,
          request_stop_recognizer->trailer.mid,
          request_stop_recognizer->trailer.crc);
}

void request_stop_recognizer_data_encode (void *buff_out, void *buff_in, size_t *len_out) {
  request_stop_recognizer_datatype *p1 = (request_stop_recognizer_datatype *) buff_in;
  request_stop_recognizer_output   *p2 = (request_stop_recognizer_output *)   buff_out;
  p2->dummy = htonl(p1->dummy);
  p2->trailer.seq = htonl(p1->trailer.seq);
  p2->trailer.rqr = htonl(p1->trailer.rqr);
  p2->trailer.oid = htonl(p1->trailer.oid);
  p2->trailer.mid = htons(p1->trailer.mid);
  p2->trailer.crc = htons(p1->trailer.crc);
  *len_out = sizeof(int32_t) + sizeof(trailer_datatype);
}

void request_stop_recognizer_data_decode (void *buff_out, void *buff_in, size_t *len_in) {
  request_stop_recognizer_output   *p1 = (request_stop_recognizer_output *)   buff_in;
  request_stop_recognizer_datatype *p2 = (request_stop_recognizer_datatype *) buff_out;
  p2->dummy = ntohl(p1->dummy);
  p2->trailer.seq = ntohl(p1->trailer.seq);
  p2->trailer.rqr = ntohl(p1->trailer.rqr);
  p2->trailer.oid = ntohl(p1->trailer.oid);
  p2->trailer.mid = ntohs(p1->trailer.mid);
  p2->trailer.crc = ntohs(p1->trailer.crc);
}

void response_stop_recognizer_print (response_stop_recognizer_datatype *response_stop_recognizer) {
  fprintf(stderr, "response_stop_recognizer(len=%ld): ", sizeof(*response_stop_recognizer));
  fprintf(stderr, " %d,", response_stop_recognizer->ret);
  fprintf(stderr, " %u, %u, %u, %hu, %hu\n",
          response_stop_recognizer->trailer.seq,
          response_stop_recognizer->trailer.rqr,
          response_stop_recognizer->trailer.oid,
          response_stop_recognizer->trailer.mid,
          response_stop_recognizer->trailer.crc);
}

void response_stop_recognizer_data_encode (void *buff_out, void *buff_in, size_t *len_out) {
  response_stop_recognizer_datatype *p1 = (response_stop_recognizer_datatype *) buff_in;
  response_stop_recognizer_output   *p2 = (response_stop_recognizer_output *)   buff_out;
  p2->ret = htonl(p1->ret);
  p2->trailer.seq = htonl(p1->trailer.seq);
  p2->trailer.rqr = htonl(p1->trailer.rqr);
  p2->trailer.oid = htonl(p1->trailer.oid);
  p2->trailer.mid = htons(p1->trailer.mid);
  p2->trailer.crc = htons(p1->trailer.crc);
  *len_out = sizeof(int32_t) + sizeof(trailer_datatype);
}

void response_stop_recognizer_data_decode (void *buff_out, void *buff_in, size_t *len_in) {
  response_stop_recognizer_output   *p1 = (response_stop_recognizer_output *)   buff_in;
  response_stop_recognizer_datatype *p2 = (response_stop_recognizer_datatype *) buff_out;
  p2->ret = ntohl(p1->ret);
  p2->trailer.seq = ntohl(p1->trailer.seq);
  p2->trailer.rqr = ntohl(p1->trailer.rqr);
  p2->trailer.oid = ntohl(p1->trailer.oid);
  p2->trailer.mid = ntohs(p1->trailer.mid);
  p2->trailer.crc = ntohs(p1->trailer.crc);
}

