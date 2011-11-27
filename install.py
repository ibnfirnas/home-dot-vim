#!/usr/bin/env python


import os
import shutil


PATH_DIR__THIS = os.path.abspath(os.path.dirname(__file__))
PATH_DIR__HOME = os.path.expanduser('~')

PROJECT_NODES = ['.vim', '.vimrc']


def main():
    for node in PROJECT_NODES:
        src_path = os.path.join(PATH_DIR__THIS, node)
        dst_path = os.path.join(PATH_DIR__HOME, node)

        if os.path.exists(dst_path):
            shutil.move(dst_path, '{0}.bak'.format(dst_path))

        os.symlink(src_path, dst_path)


if __name__ == '__main__':
    main()