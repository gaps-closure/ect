#include <stdio.h>
#include <stdlib.h>

#include "green.c"

// RPC wrapper for f()
bool _rpc_fxn(int a, int b) {
    m_args marshaled_args = marshal_args(a, b);       // Marshal args
    m_ret marshaled_ret = _handler_f(marshaled_args); // "Cross-domain" sendrecv
    bool res; unmarshal_ret(marshaled_ret, &res);     // Unmarshal result
    return res;                                       // Return to caller
}

int main(int argc, char** argv) {

    if(argc != 3) {
        printf("Usage: ./orange a b\n");
    }
    else {
        int a = atoi(argv[1]);
        int b = atoi(argv[2]);
        bool res = f(a, b); // Local version
        // bool res = _rpc_f(a, b); // "Cross-domain" version
        printf("Sum is even: ");
        if (res) printf("true\n"); else printf("false\n");
    }
}