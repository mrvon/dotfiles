#!/usr/bin/env python
import sys
import os

# Configure your favorite merge program here.
MERGE = "nvim"

# Get the paths provided by Subversion.
BASE = sys.argv[1]
THEIRS = sys.argv[2]
MINE = sys.argv[3]
MERGED = sys.argv[4]
WCPATH = sys.argv[5]

# Call the merge command (change the following line to make sense for
# your merge program).
cmd = [
    MERGE, "-d", BASE, MINE, THEIRS, MERGED, "-c", "$wincmd w", "-c",
    "wincmd J"
]
os.execv(cmd[0], cmd)

# Return an errorcode of 0 if the conflict was resolved; 1 otherwise.
# Any other errorcode will be treated as fatal.
