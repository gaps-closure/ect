#include "purple_rpc.h"
#include "secdesk.h"
#pragma cle def ORANGE {"level":"orange"}
#pragma cle def EMBEDDING_SHAREABLE {"level":"orange",\
  "cdf": [\
    {"remotelevel":"purple", \
     "direction": "egress", \
     "guarddirective": { "operation": "allow"}}\
  ] }
#pragma cle def PROCESS_SECINPUT {"level":"orange",\
  "cdf": [\
    {"remotelevel":"orange", \
     "direction": "egress", \
     "guarddirective": { "operation": "allow" },\
     "argtaints": [["ORANGE"], ["ORANGE"]], \
     "codtaints": ["EMBEDDING_SHAREABLE", "ORANGE"],\
     "rettaints": ["ORANGE"]}\
  ] }




/* Set up command line interface and defaults */





int main(int argc, char *argv[]) {
  return _slave_rpc_loop();
}