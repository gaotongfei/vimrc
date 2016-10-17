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
let g:ycm_path_to_python_interpreter='/usr/bin/python'
let g:molokai_original = 1
let NERDTreeIgnore = ['\.pyc$']

let g:jsx_ext_required = 0

let g:javascript_enable_domhtmlcss=1

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
Plugin 'fatih/vim-go'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'vimwiki/vimwiki'


call vundle#end()

filetype plugin indent on

" treat vue file as html
autocmd BufNewFile,BufRead *vue set filetype=html

syntax enable
colorscheme molokai 

autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

set background=dark
set number
set ignorecase  	 " ignore case while seraching
set nowrap
set showmatch  		 " match parentheses
set backspace=2  	 " allow backspace in inset mode
set nofoldenable         " disable folding
set laststatus=2	 " show status line
set statusline=%f	 " tail of the filename
