#ifndef _Orange_RPC_
#define _Orange_RPC_
#include "xdcomms.h"
#include "codec.h"
#include <pthread.h>

# define APP_BASE 0
# define MUX_NEXTRPC APP_BASE + 1
# define SEC_NEXTRPC APP_BASE + 1
# define MUX_OKAY APP_BASE + 2
# define SEC_OKAY APP_BASE + 2
# define MUX_REQUEST_GET_A APP_BASE + 1
# define SEC_REQUEST_GET_A APP_BASE + 1
# define MUX_RESPONSE_GET_A APP_BASE + 2
# define SEC_RESPONSE_GET_A APP_BASE + 2

#define INURI  "ipc:///tmp/example1suborange"
#define OUTURI "ipc:///tmp/example1puborange"
#pragma cle def TAG_RESPONSE_GET_A {"level":"orange",\
	"cdf": [\
		{"remotelevel":"purple", \
			"direction": "egress", \
			"guardhint": { "operation": "allow", \
						"gapstag": [2,2,4] }} \
	] }
#pragma cle def TAG_REQUEST_GET_A {"level":"orange",\
	"cdf": [\
		{"remotelevel":"orange", \
			"direction": "egress", \
			"guardhint": { "operation": "allow", \
						"gapstag": [1,1,3] }} \
	] }
#pragma cle def TAG_OKAY {"level":"orange",\
	"cdf": [\
		{"remotelevel":"purple", \
			"direction": "egress", \
			"guardhint": { "operation": "allow", \
						"gapstag": [2,2,2] }} \
	] }
#pragma cle def TAG_NEXTRPC {"level":"orange",\
	"cdf": [\
		{"remotelevel":"orange", \
			"direction": "egress", \
			"guardhint": { "operation": "allow", \
						"gapstag": [1,1,1] }} \
	] }
extern int _slave_rpc_loop();
extern double get_a();


#endif /* _ORANGE_RPC_ */