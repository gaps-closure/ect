#!/usr/bin/env python3

from argparse import ArgumentParser
from os import mkdir, environ
from subprocess import Popen, PIPE
from shlex import split
from glob import glob

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

def globs(s):
    return " ".join(glob(s))

def run(cmd, env=None):

    # Run a command as a subprocess and print debug info
    print("build_ex.py: " + cmd)
    Popen(split(cmd), stdout=PIPE, env=env).communicate()

def main():

    # Parse args, figure out where we are
    args = getArgs()
    enclaves = ['orange', 'purple', 'refactored']
    pre = args.ect + "/../preprocessor"
    root = args.ect + '/' + 'examples/{}/'.format(args.ex)

    # Clean out old directories, with permission
    empty(root + 'llvm')
    cle_dir = empty(root + 'clemaps')

    # Preprocess and compile each C file to LLVM IR, and create joined jsons
    for enclave in enclaves:

        # Copy all files in enclave up a directory to fool
        # preprocessor's __FILE__ macro, and collect their names
        cdir = root + 'c'
        edir = cdir + '/' + enclave
        run("cp {} {}".format(globs(edir + "/*"), cdir))
        cfiles = glob(cdir + "/*.c") + glob(cdir + "/*.h")

        # Make directory for ll files for this enclave
        lldir = root + 'llvm/' + enclave
        mkdir(lldir)

        # Preprocess .c and .h files, compile .c files
        for fname in cfiles:

            # Collect commands
            cmds = []
            sc = pre + "/../gedl/schema/json-schema-draft7.json"
            unf = "python3 {}/__main__.py -f {} -o {} -s {}"
            cmds.append(unf.format(pre, fname, cdir, sc))
            if fname[-2:] == '.c':
                fmod = fname[:-2] + '.mod.c'
                fll = fname.rpartition('/')[2][:-2] + '.mod.ll'
                cmds.append("clang-9 -S -emit-llvm -c -I {} {}".format(cdir, fmod))
                cmds.append("mv {} {}".format(fll, lldir))

            # Run all commands
            env = environ.copy()
            env['PYTHONPATH'] = pre + "/.."
            for c in cmds: run(c, env)

        # Join clemaps for this enclave
        cles = " ".join(cfiles)
        join_cmd = "python3 {}/join_clemaps.py {}.json {}".format(pre, enclave, cles)
        relocate = "mv {}.json {}".format(enclave, cle_dir)
        run(join_cmd)
        run(relocate)

        # Clean up clemaps, mod files, and copied source files
        fmods = globs(cdir + "/*.mod.c")
        hmods = globs(cdir + "/*.mod.h")
        jsons = globs(cdir + "/*.clemap.json")
        run("rm {} {} {} {}".format(fmods, hmods, jsons, " ".join(cfiles)))

if __name__ == "__main__":
    main()