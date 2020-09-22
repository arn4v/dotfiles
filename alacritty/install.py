#!/usr/bin/env python3
from pathlib import Path
import os
import platform

config_dir = (
    os.path.join(os.environ["APPDATA"], "alacritty")
    if platform.system() == "Windows"
    else os.path.join(Path.home(), ".config", "alacritty")
)
local_config_path = os.path.dirname(os.path.abspath(__file__))


def main():
    for cfile in os.listdir(local_config_path):
        if cfile != __file__:
            os.symlink(
                os.path.join(local_config_path, cfile), os.path.join(config_dir, cfile)
            )


if __name__ == "__main__":
    print(main())
