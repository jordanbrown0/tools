#! /mingw64/bin/python

import sys
import re

if len(sys.argv) != 3:
    print("Usage: %s <columns> <file>" % sys.argv[0])
    exit(1)

cols = int(sys.argv[1])
file = sys.argv[2]

opens_re = re.compile(r'<[^/?]')
closes_re = re.compile(r'</')

lineNo = 0
desiredIndent = 0

with open(file) as f:
    for line in f:
        lineNo += 1
        indent = len(re.match(r' *', line).group(0))
        opens = len(re.findall(r'<[^/?]', line))
        closes = len(re.findall(r'</', line)) + len(re.findall(r'/>', line))
        net = opens - closes
        if net < 0:
            desiredIndent += net
        if indent != desiredIndent:
            print("bad indent, line %d, %d should be %d" % (lineNo, indent, desiredIndent))
        if net > 0:
            desiredIndent += net
