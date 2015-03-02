#!/usr/bin/python

"""
A simple Python Executable for opening the current directory's github page.

NOTE: The directory name must be the same as the repo name in order for this
script to work!

(c) Kurtis M Jungersen
"""

import os
import webbrowser

GIT_USER = 'kmjungersen'

base_url = 'https://github.com/{user}/{repo}'

cwd = os.getcwd()

cwd_split = cwd.split('/')

repo = cwd_split[-1]

url = base_url.format(
    user=GIT_USER,
    repo=repo,
)

webbrowser.open_new_tab(url)