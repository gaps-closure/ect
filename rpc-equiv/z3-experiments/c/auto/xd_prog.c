#include "prog_rpc.h"
//_rpc_func int int bool
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>

// Local _rpc_function
bool func(int a, int b) {
    bool res = ((a + b) % 2) == 0;
    return res;
}

m_ret _handler_func(m_arg marshaled_args) {
    int arg0; int arg1;
    unmarshal_args(marshaled_args, &arg0, &arg1);
    bool res = func(arg0, arg1);
    m_ret marshaled_ret = marshal_ret(res);
    return marshaled_ret;
}

bool _rpc_func(int arg0, int arg1) {
    m_arg marshaled_args = marshal_args(arg0, arg1);
    m_ret marshaled_ret = _handler_func(marshaled_args);
    bool res; unmarshal_ret(marshaled_ret, &res);
    return res;
}

int main(int argc, char** argv) {

    if(argc != 3) {
        printf("Usage: ./serial a b\n");
    }
    else {
        int a = atoi(argv[1]);
        int b = atoi(argv[2]);
        bool res = _rpc_func(a, b);
        printf("Sum is even: ");
        if (res) printf("true\n"); else printf("false\n");
    }
}