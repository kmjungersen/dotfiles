#!/usr/bin/python

"""
A simple Python Executable for opening the current git repo's github page.

Although it defaults to the first remote, simply specify which remote like so:

Usage:

    $ repo.py [remote]

Example:

    $ repo.py origin

(c) Kurtis M Jungersen
"""

import os
import re
import sys
import webbrowser
import subprocess

default_remote = ''

remotes_raw = subprocess.check_output('git remote -v', shell=True)

remote_list_raw = remotes_raw.split('\n')

remotes = {}

for remote_string_raw in remote_list_raw:

    if remote_string_raw != '':

        remote_string = remote_string_raw.split(' ')

        remote_parts = remote_string[0].split('\t')

        import ipdb
        # ipdb.set_trace()

        remote_name = remote_parts[0]

        default_remote = remote_name

        remote_url = remote_parts[1].replace('.git', '')

        remotes[remote_name] = remote_url

    default_remote = remote_parts[0]

try:
    which_remote = sys.argv[1]

except IndexError:
    which_remote = default_remote

url = remotes.get(which_remote)

if url:
    webbrowser.open_new_tab(url)

else:
    exit('Error: invalid remote name!')