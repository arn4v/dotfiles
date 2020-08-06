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

to_ignore = ["install.py", ".vscode"]

for f in os.listdir(cur_dir):
    if f not in to_ignore:
        local_file = os.path.join(cur_dir, f)
        target_file = os.path.join(nvim_dir, f)
        if os.path.exists(target_file):
            if not os.readlink(target_file) == local_file:
                os.remove(target_file)
                os.symlink(local_file, target_file)
        else:
            os.symlink(local_file, target_file)
