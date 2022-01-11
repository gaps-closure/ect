#!/usr/bin/env python3

from argparse import ArgumentParser
from os import listdir, mkdir, path, environ
from subprocess import Popen, PIPE
from shlex import split

def getArgs():
    h1 = "name of the example (pick one from ect/examples)"
    h2 = "path to ect directory (default '.')"
    desc = "Prepare an example's source for the ECT"
    parser = ArgumentParser(description=desc)
    parser.add_argument(
        'ex', metavar='example-name', type=str, help=h1)
    parser.add_argument(
        '--ect', metavar='path', type=str, default='.', help=h2)
    return parser.parse_args()

def empty(dir):

    # Ask permission
    yes = input("delete '{}'? (y/n) ".format(dir)) == 'y'
    if not yes: exit(0)

    # Delete and remake
    Popen(split('rm -rf ' + dir), stdout=PIPE).communicate()
    mkdir(dir)
    return dir

def main():

    # Parse args, figure out where we are
    args = getArgs()
    enclaves = ['orange', 'purple', 'refactored']
    ect = path.expanduser(args.ect)
    pre = ect + "/../preprocessor"
    root = ect + '/' + 'examples/{}/'.format(args.ex)

    # Clean out old directories, with permission
    empty(root + 'llvm')
    cle_dir = empty(root + 'clemaps')

    # Preprocess and compile each C file to LLVM IR, and create joined jsons
    for enclave in enclaves:

        # For each enclave, get all of the .c and .h files
        cdir = root + 'c/' + enclave
        lldir = root + 'llvm/' + enclave
        cfiles = [f for f in listdir(cdir) if f[-2:] == '.c' or f[-2:] == '.h']
        mkdir(lldir)
        fpaths = []

        # Preprocess .c and .h files, compile .c files
        for fname in cfiles:

            # Collect commands
            cmds = []
            fpath = cdir + '/' + fname
            fpaths.append(fpath)
            sc = pre + "/../gedl/schema/json-schema-draft7.json"
            unf = "python3 {}/__main__.py -f {} -o {} -s {}"
            cmds.append(unf.format(pre, fpath, cdir, sc))
            if fpath[-2:] == '.c':
                fmod = fpath[:-2] + '.mod.c'
                fll = fname[:-2] + '.mod.ll'
                cmds.append("clang-9 -S -emit-llvm -c -I {} {}".format(cdir, fmod))
                cmds.append("mv {} {}".format(fll, lldir))

            # Run all commands
            print("run: '{}'".format(" && ".join(cmds)))
            env = environ.copy()
            env['PYTHONPATH'] = pre + "/.."
            for c in cmds:
                Popen(split(c), stdout=PIPE, env=env).communicate()

        # Join clemaps for this enclave
        cles = " ".join(fpaths)
        join_cmd = "python3 {}/join_clemaps.py {}.json {}".format(pre, enclave, cles)
        relocate = "mv {}.json {}".format(enclave, cle_dir)
        Popen(split(join_cmd), stdout=PIPE).communicate()
        Popen(split(relocate), stdout=PIPE).communicate()

        # Clean up clemaps and mod files
        for fp in fpaths:
            fmod = fp[:-2] + '.mod' + fp[-2:]
            Popen(split("rm {}.clemap.json {}".format(fp, fmod)))

if __name__ == "__main__":
    main()