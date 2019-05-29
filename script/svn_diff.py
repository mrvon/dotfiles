#!/usr/bin/env python3
import sys
import subprocess

# Configure your favorite diff program here.
DIFF = "nvim"

# Subversion provides the paths we need as the last two parameters.
LEFT = sys.argv[-2]
RIGHT = sys.argv[-1]

# Call the diff command (change the following line to make sense for
# your diff program).
cmd = [DIFF, "-d", LEFT, RIGHT]
subprocess.run(cmd)

# Return an errorcode of 0 if no differences were detected, 1 if some were.
# Any other errorcode will be treated as fatal.
