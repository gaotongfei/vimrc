set nocompatible

let g:neocomplete#enable_at_startup = 1

filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Bundle 'Raimondi/delimitMate'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdTree'
Plugin 'davidhalter/jedi-vim'
Plugin 'posva/vim-vue'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
set number

" 搜索忽略大小写
set ignorecase

" 取消换行
set nowrap

" 括号匹配
set showmatch
