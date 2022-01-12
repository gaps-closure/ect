#ifndef _ORANGE_RPC_
#define _ORANGE_RPC_

#include "codec.h"
#include <pthread.h>
#ifndef __LEGACY_XDCOMMS__
#include <assert.h>
#include <zmq.h>
#else
#include "xdcomms.h"
#endif /* __LEGACY_XDCOMMS__ */

#define INURI "ipc:///tmp/sock_suborange"
#define OUTURI "ipc:///tmp/sock_puborange"

#ifndef __LEGACY_XDCOMMS__
#define MY_IPC_ADDR_DEFAULT_IN  "ipc:///tmp/halpub1"
#define MY_IPC_ADDR_DEFAULT_OUT "ipc:///tmp/halsub1"

#define ADU_SIZE_MAX_C  2000
#define MY_DATA_TYP_MAX 200
#define RX_FILTER_LEN   12

/* Closure tag structure */
typedef struct _tag {
    uint32_t mux;      /* APP ID */
    uint32_t sec;      /* Security tag */
    uint32_t typ;      /* data type */
} gaps_tag;

/* CLOSURE packet */
typedef struct _sdh_ha_v1 {
    gaps_tag tag;
    uint32_t data_len;
    uint8_t   data[ADU_SIZE_MAX_C];
} sdh_ha_v1;

typedef void (*codec_func_ptr)(void *, void *, size_t *);
typedef struct _codec_map {
    int valid;
    codec_func_ptr encode;
    codec_func_ptr decode;
} codec_map;
#endif /* __LEGACY_XDCOMMS__ */

#define MUX_BASE 0

#define SEC_BASE 0

#define TYP_BASE 0

extern int _slave_rpc_loop();

#pragma cle def TAG_NEXTRPC {"level": "orange", \
    "cdf": [{"remotelevel": "orange", "direction": "egress", \
            "guarddirective": {"operation": "allow", "gapstag": [2,2,1]}}]}

#pragma cle def TAG_OKAY {"level": "orange", \
    "cdf": [{"remotelevel": "purple", "direction": "egress", \
            "guarddirective": {"operation": "allow", "gapstag": [1,1,2]}}]}

#pragma cle def TAG_REQUEST_GET_A {"level": "orange", \
    "cdf": [{"remotelevel": "orange", "direction": "egress", \
            "guarddirective": {"operation": "allow", "gapstag": [2,2,3]}}]}

#pragma cle def TAG_RESPONSE_GET_A {"level": "orange", \
    "cdf": [{"remotelevel": "purple", "direction": "egress", \
            "guarddirective": {"operation": "allow", "gapstag": [1,1,4]}}]}

#define MUX_NEXTRPC MUX_BASE + 2
#define SEC_NEXTRPC SEC_BASE + 2
#define MUX_OKAY MUX_BASE + 1
#define SEC_OKAY SEC_BASE + 1

#define MUX_REQUEST_GET_A MUX_BASE + 2
#define SEC_REQUEST_GET_A SEC_BASE + 2
#define MUX_RESPONSE_GET_A MUX_BASE + 1
#define SEC_RESPONSE_GET_A SEC_BASE + 1

extern double get_a();

#endif /* _ORANGE_RPC_ */