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

" treat vue file as html
autocmd BufNewFile,BufRead *vue set filetype=html

syntax enable
set background=dark
colorscheme solarized

autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
set number

" ignore case while seraching
set ignorecase

set nowrap

" match parentheses
set showmatch
