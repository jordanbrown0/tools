#! /mingw64/bin/python

import sys
import re
import os
import argparse

include_re = re.compile(r'^#include\s*["<](.*\.h)[">]')
indent_step = '  '

myname = sys.argv[0]
del sys.argv[0]

parser = argparse.ArgumentParser(prog='includes.py')
parser.add_argument('-I', action='append', metavar='dir', dest='includepath')
parser.add_argument('-f', '--find', action='store', metavar='filename', dest='find')
parser.add_argument('filename')
args = parser.parse_args(sys.argv)

def find(dir, name): 
    p = os.path.join(dir, name)
    if os.path.exists(p):
        return p
    if args.includepath:
        for idir in args.includepath:
            p = os.path.join(idir, name)
            if os.path.exists(p):
                return p
    return None

def includes(filename, indent, parents):
    if filename in parents:
        return

    dir = os.path.dirname(filename)
    base = os.path.basename(filename)

    if args.find:
        if base == args.find:
            print(' > '.join(parents))
    else:
        print(indent+filename)
    with open(filename) as f:
        for line in f:
            m = include_re.match(line)
            if m:
                included = m.group(1)
                fullpath = find(dir, included)
                if not fullpath:
                    if not args.find:
                        print(indent + indent_step + included + ' (not found)')
                else:
                    includes(fullpath, indent + indent_step, parents + [base])


includes(args.filename, "", []);
