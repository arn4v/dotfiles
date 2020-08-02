#!/usr/bin/env python3
import os
import platform
from pathlib import Path

cur_dir = os.getcwd()
home_dir = str(Path.home())
nvim_dir = (
    os.path.join(home_dir.replace("/", "\\"), "AppData\\Local\\nvim")
    if platform.system() == "Windows"
    else os.path.join(home_dir, ".config/nvim")
)

if not os.path.exists(nvim_dir):
    os.mkdir(nvim_dir)

to_symlink = ["init.vim", "coc-settings.json", "plugins", "themes"]

for f in to_symlink:
    os.symlink(os.path.join(cur_dir, f), os.path.join(nvim_dir, f))
