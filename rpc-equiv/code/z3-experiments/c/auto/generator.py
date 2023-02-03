import sys
from itertools import count

def main():

    # Get function parameters
    if len(sys.argv) != 2:
        print("usage: python3 generator.py file.c")
        return
    
    with open(sys.argv[1], 'r') as f:
        lines = f.read().split('\n')
        fields = lines[0][2:].split(' ')
        name = fields[0]
        ret_type = fields[-1]
        arg_types = fields[1:-1]

    # Templates
    arg_struct_tmp    = "typedef struct m_arg {{\n    {}\n    trailer t;\n}} m_arg;"
    ret_struct_tmp    = "typedef struct m_ret {{\n    {}\n    trailer t;\n}} m_ret;"
    arg_marshal_tmp   = "m_arg marshal_args({}) {{\n    m_arg m;\n    {};\n    m.t.err = false;\n    m.t.seq = 1;\n    return m;\n}}"
    ret_marshal_tmp   = "m_ret marshal_ret({}) {{\n    m_ret m;\n    m.res = res;\n    m.t.err = false;\n    m.t.seq = 1;\n    return m;\n}}"
    arg_unmarshal_tmp = "void unmarshal_args(m_arg m, {}) {{\n    {};\n}}"
    ret_unmarshal_tmp = "void unmarshal_ret(m_ret m, {}* res) {{\n    *res = m.res;\n}}"
    wrapper_tmp       = "{} _rpc_{}({}) {{\n    m_arg marshaled_args = marshal_args({});\n    m_ret marshaled_ret = _handler_{}(marshaled_args);\n    {} res; unmarshal_ret(marshaled_ret, &res);\n    return res;\n}}"
    handler_tmp       = "m_ret _handler_{}(m_arg marshaled_args) {{\n    {}\n    unmarshal_args(marshaled_args, {});\n    {} res = {}({});\n    m_ret marshaled_ret = marshal_ret(res);\n    return marshaled_ret;\n}}"

    # Generated strings
    args           = [ "arg" + str(i) for i in range(len(arg_types)) ]
    typed_args     = [ "{} arg{}".format(t, i) for (t, i) in zip(arg_types, count()) ]
    decls          = [ "{};".format(ta) for ta in typed_args ]
    arg_list       = ", ".join(args)
    typed_arg_list = ", ".join(typed_args)

    headers       = "#include <stdbool.h>"
    trail_struct  = "typedef struct trailer {\n    bool err;\n    int seq;\n} trailer;"
    ret_struct    = ret_struct_tmp.format(ret_type + " res;")
    arg_struct    = arg_struct_tmp.format("\n    ".join(decls))
    arg_marshal   = arg_marshal_tmp.format(typed_arg_list, ";\n    ".join(["m.{} = {}".format(a, a) for a in args]))
    ret_marshal   = ret_marshal_tmp.format(ret_type + " res")
    arg_unmarshal = arg_unmarshal_tmp.format(", ".join(["{}* {}".format(t, a) for (a, t) in zip(args, arg_types)]), ";\n    ".join(["*{} = m.{}".format(a, a) for a in args]))
    ret_unmarshal = ret_unmarshal_tmp.format(ret_type)
    wrapper       = wrapper_tmp.format(ret_type, name, typed_arg_list, arg_list, name, ret_type)
    handler       = handler_tmp.format(name, " ".join(decls), ", ".join(["&{}".format(a) for a in args]), ret_type, name, arg_list)

    # Concatenate generated strings and write to file
    blocks = [
        headers, trail_struct, arg_struct, ret_struct,
        arg_marshal, arg_unmarshal, ret_marshal, ret_unmarshal
    ]

    progname = sys.argv[1][:-2]
    headerfile = "{}_rpc.h".format(progname)
    with open(headerfile, 'w') as f:
        f.write("\n\n".join(blocks))

    new_lines = ['#include "{}"'.format(headerfile)]
    for l in lines:
        l2 = l.replace(name, "_rpc_{}".format(name))
        if l.startswith("int main("):
            new_lines += handler.split('\n') + ['']
            new_lines += wrapper.split("\n") + ['']
        new_lines.append(l2)
    with open("xd_{}.c".format(progname), 'w') as f:
        f.write("\n".join(new_lines))

if __name__ == "__main__":
    main()