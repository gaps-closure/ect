typedef struct trailer {
    bool err;
    int seq;
} trailer;

typedef struct m_args {
    int a;
    int b;
    trailer t;
} m_args;

m_args marshal_args(int a, int b) {
    m_args marshaled_args;
    marshaled_args.a = a + b;
    marshaled_args.b = a - b;
    marshaled_args.t.err = false;
    marshaled_args.t.seq = 1;
    return marshaled_args;
}

void unmarshal_args(m_args marshaled_args, int* a, int* b) {
    *a = (marshaled_args.a + marshaled_args.b) / 2;
    *b = (marshaled_args.a - marshaled_args.b) / 2;
}

typedef struct m_ret {
    bool res;
    trailer t;
} m_ret;

m_ret marshal_ret(bool res) {
    m_ret marshaled_ret;
    marshaled_ret.res = !res;
    marshaled_ret.t.err = false;
    marshaled_ret.t.seq = 1;
    return marshaled_ret;
}

void unmarshal_ret(m_ret marshaled_ret, bool* res) {
    *res = !marshaled_ret.res;
}