#!/usr/bin/env python


import os


PATH_DIR__THIS = os.path.abspath(os.path.dirname(__file__))
PATH_DIR__DEPS = os.path.join(PATH_DIR__THIS, 'deps')
PATH_DIR__SRC = os.path.join(PATH_DIR__THIS, 'src')
PATH_DIR__VIM = os.path.join(PATH_DIR__SRC, '.vim')


def main():
    for repo_name in os.listdir(PATH_DIR__DEPS):
        repo_path = os.path.join(PATH_DIR__DEPS, repo_name)

        print 'Installing', repo_name, '...'

        for repo_item in os.listdir(repo_path):
            repo_item_path = os.path.join(repo_path, repo_item)

            if os.path.isdir(repo_item_path) \
            and not repo_item.startswith('.'):
                #shutil.copytree() dies if dst file/dir already exists..
                cp = 'cp -Rp %s %s' % (repo_item_path, PATH_DIR__VIM)
                os.system(cp)


if __name__ == '__main__':
    main()
