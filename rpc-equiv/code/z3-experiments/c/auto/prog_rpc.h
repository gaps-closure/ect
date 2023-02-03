#include <stdbool.h>

typedef struct trailer {
    bool err;
    int seq;
} trailer;

typedef struct m_arg {
    int arg0;
    int arg1;
    trailer t;
} m_arg;

typedef struct m_ret {
    bool res;
    trailer t;
} m_ret;

m_arg marshal_args(int arg0, int arg1) {
    m_arg m;
    m.arg0 = arg0;
    m.arg1 = arg1;
    m.t.err = false;
    m.t.seq = 1;
    return m;
}

void unmarshal_args(m_arg m, int* arg0, int* arg1) {
    *arg0 = m.arg0;
    *arg1 = m.arg1;
}

m_ret marshal_ret(bool res) {
    m_ret m;
    m.res = res;
    m.t.err = false;
    m.t.seq = 1;
    return m;
}

void unmarshal_ret(m_ret m, bool* res) {
    *res = m.res;
}