#!/usr/bin/env python

import shutil, errno, os, subprocess

exists = os.path.exists
expanduser = os.path.expanduser

def copy(src, dst):
    try:
        shutil.copytree(src, dst)
    except OSError as exc:
        if exc.errno == errno.ENOTDIR:
            shutil.copy(src, dst)
        elif exc.errno == 17:
            pass 

vundle_folder = expanduser("~/.vim/bundle/Vundle.vim")
if exists(vundle_folder):
    shutil.rmtree(vundle_folder)

subprocess.check_call(["git", "clone", "https://github.com/VundleVim/Vundle.vim", vundle_folder])

# moving colors and after folder to .vim folder
copy('colors', expanduser('~/.vim/colors'))
copy('after', expanduser('~/.vim/after'))

# moving .vimrc home
copy('.vimrc', expanduser('~/'))
copy('.gvimrc', expanduser('~/'))

# install plugins

subprocess.check_call(["vim", "+PluginInstall", "+qall"])
