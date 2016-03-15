set nocompatible
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

if has('persistent_undo')
  let myUndoDir = expand(vimDir . '/undodir')
  call system('mkdir ' . vimDir)
  call system('mkdir ' . myUndoDir)
  let &undodir = myUndoDir
  set undofile
endif

let g:neocomplete#enable_at_startup = 1
" color scheme molokai
let g:molokai_original = 1
let NERDTreeIgnore = ['\.pyc$']

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Bundle 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdTree'
Plugin 'davidhalter/jedi-vim'
Plugin 'posva/vim-vue'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ternjs/tern_for_vim'

call vundle#end()

filetype plugin indent on

" treat vue file as html
autocmd BufNewFile,BufRead *vue set filetype=html

syntax enable
colorscheme molokai 

autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set background=dark
set number
set ignorecase  	 " ignore case while seraching
set nowrap
set showmatch  		 " match parentheses
set backspace=2  	 " allow backspace in inset mode
