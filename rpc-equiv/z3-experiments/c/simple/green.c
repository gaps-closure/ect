#include <stdbool.h>

#include "rpc_f.h"

// Local function
bool fxn(int a, int b) {
    bool res = ((a + b) % 2) == 0;
    return res;
}

// Handler for f()
m_ret _handler_f(m_args marshaled_args) {

    int a, b;
    unmarshal_args(marshaled_args, &a, &b); // Unmarshal args
    bool res = f(a, b);                     // Invoke local
    m_ret marshaled_ret = marshal_ret(res); // Marshal result
    return marshaled_ret;                   // "Send" back to client
}