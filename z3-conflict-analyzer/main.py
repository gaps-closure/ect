from z3 import *
from argparse import ArgumentParser

import ConflictAnalyzer
import PdgInstance
import CleInstance

def getArgs():
    # h1 = 'path to directory containing dotfiles'
    # h2 = 'path to cle json file'
    d = 'Solve enclave assignments for annotated, refactored code'
    parser = ArgumentParser(description=d)
    # parser.add_argument('pdg', metavar='pdg-dir', type=str, help=h1)
    # parser.add_argument('cle', metavar='cle-json', type=str, help=h2)
    return parser.parse_args()

def main():

    # Parse args
    args = getArgs()

    # Get instances
    cle = CleInstance.CLE()
    pdg = PdgInstance.PDG()

    # Encode constraints
    print("encoding...")
    ca = ConflictAnalyzer.ConflictAnalyzer()
    ca.encode(pdg, cle)

    # Write constraints
    print("build sexpr...")
    exp = ca.s.sexpr()
    print("dump sexpr to file...")
    with open('constraints.smt2', 'w') as out: out.write(exp)

    # Solve
    print("solving...")
    res = ca.solve()

    # Write results
    print(str(res))
    print("see 'constraints.smt2' for input to z3")
    # if res == sat:
    #     with open('model.txt', 'w') as out: 
    #         ca.evidence(out)
    #     print("see 'model.txt' for solution")
    # else:
    #     with open('explain.txt', 'w') as out:          
    #         ca.explain(out)
    #     print("see 'explain.txt' for explanation of unsatisfiability")

if __name__ == '__main__':
    main()
