/*
Copyright: Boaz Segev, 2016-2019
License: MIT

Feel free to copy, use and enjoy according to the license provided.
*/
#ifndef H_HTTP_INTERNAL_H
#define H_HTTP_INTERNAL_H

#include <fio.h>
/* subscription lists have a long lifetime */
#define FIO_FORCE_MALLOC_TMP 1
#define FIO_INCLUDE_LINKED_LIST
#include <fio.h>

#include <http.h>

#include <arpa/inet.h>
#include <errno.h>

/* *****************************************************************************
Types
***************************************************************************** */

typedef struct http_fio_protocol_s http_fio_protocol_s;
typedef struct http_vtable_s http_vtable_s;

struct http_vtable_s {
  /** Should send existing headers and data */
  int (*const http_send_body)(http_s *h, void *data, uintptr_t length);
  /** Should send existing headers and file */
  int (*const http_sendfile)(http_s *h, int fd, uintptr_t length,
                             uintptr_t offset);
  /** Should send existing headers and data and prepare for streaming */
  int (*const http_stream)(http_s *h, void *data, uintptr_t length);
  /** Should send existing headers or complete streaming */
  void (*const http_finish)(http_s *h);
  /** Push for data. */
  int (*const http_push_data)(http_s *h, void *data, uintptr_t length,
                              FIOBJ mime_type);
  /** Upgrades a connection to Websockets. */
  int (*const http2websocket)(http_s *h, websocket_settings_s *arg);
  /** Push for files. */
  int (*const http_push_file)(http_s *h, FIOBJ filename, FIOBJ mime_type);
  /** Pauses the request / response handling. */
  void (*http_on_pause)(http_s *, http_fio_protocol_s *);

  /** Resumes a request / response handling. */
  void (*http_on_resume)(http_s *, http_fio_protocol_s *);
  /** hijacks the socket aaway from the protocol. */
  intptr_t (*http_hijack)(http_s *h, fio_str_info_s *leftover);

  /** Upgrades an HTTP connection to an EventSource (SSE) connection. */
  int (*http_upgrade2sse)(http_s *h, http_sse_s *sse);
  /** Writes data to an EventSource (SSE) connection. MUST free the FIOBJ. */
  int (*http_sse_write)(http_sse_s *sse, FIOBJ str);
  /** Closes an EventSource (SSE) connection. */
  int (*http_sse_close)(http_sse_s *sse);
};

struct http_fio_protocol_s {
  fio_protocol_s protocol;   /* facil.io protocol */
  intptr_t uuid;             /* socket uuid */
  http_settings_s *settings; /* pointer to HTTP settings */
};

#define http2protocol(h) ((http_fio_protocol_s *)h->private_data.flag)

/* *****************************************************************************
Constants that shouldn't be accessed by the users (`fiobj_dup` required).
***************************************************************************** */


/* *****************************************************************************
HTTP request/response object management
***************************************************************************** */




/** tests handle validity */
#define HTTP_INVALID_HANDLE(h)                                                 \
  (!(h) || (!(h)->method && !(h)->status_str && (h)->status))

/* *****************************************************************************
Request / Response Handlers
***************************************************************************** */

/** Use this function to handle HTTP requests.*/


/* *****************************************************************************
EventSource Support (SSE)
***************************************************************************** */

typedef struct http_sse_internal_s {
  http_sse_s sse;         /* the user SSE settings */
  intptr_t uuid;          /* the socket's uuid */
  http_vtable_s *vtable;  /* the protocol's vtable */
  uintptr_t id;           /* the SSE identifier */
  fio_ls_s subscriptions; /* Subscription List */
  fio_lock_i lock;        /* Subscription List lock */
  size_t ref;             /* reference count */
} http_sse_internal_s;




/* *****************************************************************************
Helpers
***************************************************************************** */

/** sets an outgoing header only if it doesn't exist */

/** sets an outgoing header, collecting duplicates in an Array (i.e. cookies)
 */

#endif /* H_HTTP_INTERNAL_H */