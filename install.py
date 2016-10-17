import subprocess
import os

subprocess.check_call(["git", "clone", "https://github.com/VundleVim/Vundle.vim",
    os.path.expanduser("~/.vim/bundle/Vundle.vim")])
subprocess.check_call(["git", "clone", "https://github.com/gaotongfei/vimrc.git", 
    os.path.expanduser("~/")])
