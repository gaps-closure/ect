import sys
import json
from argparse import ArgumentParser

from z3 import *

def main():

    # parse args
    h1 = 'path to file containing flow spec'
    h2 = 'path to file containing flow constraints'
    parser = ArgumentParser(description='Verify a GAPS-CLOSURE flow spec.')
    parser.add_argument('f', metavar='flow.json', type=str, help=h1)
    parser.add_argument('r', metavar='rules.json', type=str, help=h2)
    args = parser.parse_args()

    # read json
    with open(args.f) as f, open(args.r) as r:
        flow = json.load(f)
        rules = json.load(r)

    # solver
    s = Solver()

    print(flow)
    print(rules)
    print(s.check())

if __name__ == "__main__":
    main()
