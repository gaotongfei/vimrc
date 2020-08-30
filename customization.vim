" set <Leader> key to ,
let mapleader = ','
let vimDir='$HOME/.vim'
let &runtimepath.=','.vimDir
let g:molokai_original=1
let NERDTreeIgnore=['\.pyc$']
let g:jsx_ext_required=0
let g:javascript_enable_domhtmlcss=1
let g:neocomplete#enable_at_startup = 1
let g:airline_theme="one"

" ctrlp customization
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " Ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
  " use ag for ack search
  set shellpipe=>
  let g:ackprg = 'ag --vimgrep'
endif
set wildignore+=*/tmp/*,*.so,*.swp,*.swo,*/coverage/*,*.zip,*.png,*.jpg,*.jpeg,*.gif
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_cmd = 'CtrlP'

" syntastic syntax check
let g:syntastic_check_on_open = 0
let g:syntastic_always_populate_loc_list = 0
" set +syntastic_auto_loc_list+ to 1 if you prefer showing warning messages in a seperate window
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_ruby_checkers = ['mri', 'rubocop']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"disable markdown folding
let g:vim_markdown_folding_disabled = 1

syntax enable

set nocompatible
set expandtab
set pastetoggle=<C-p>
set background=dark
set number
set ignorecase  	 " ignore case while seraching
set nowrap
set showmatch  		 " match parentheses
set backspace=2  	 " allow backspace in inset mode
set laststatus=2	 " show status line
set statusline=%f	 " tail of the filename
set guioptions-=m	 " remove menu bar
set guioptions-=T	 " remove toolbar
set guioptions-=r	 " remove scrollbar
set colorcolumn=80
set number
set hlsearch
set guioptions-=L

set autoindent
filetype plugin indent on

if has('persistent_undo')
  let myUndoDir=expand(vimDir . '/undodir')
  call system('mkdir ' . vimDir)
  call system('mkdir ' . myUndoDir)
  let &undodir=myUndoDir
  set undofile
endif

if has("win32") || has("win64")
  set guifont=DejaVu_Sans_Mono:h13:cDEFAULT
elseif has("unix")
  let s:uname = system("uname -s")
  if s:uname == "Darwin"
    set guifont=Monaco:h14
  endif
else
  set guifont=Ubuntu\ Mono\ 14
endif

if exists('$TMUX')
  let &t_SI = "\<esc>Ptmux;\<esc>\<esc>]50;CursorShape=1\x7\<esc>\\"
  let &t_EI = "\<esc>Ptmux;\<esc>\<esc>]50;CursorShape=0\x7\<esc>\\"
else
  let &t_SI = "\<esc>]50;CursorShape=1\x7"
  let &t_EI = "\<esc>]50;CursorShape=0\x7"
endif

if (has("termguicolors"))
  set termguicolors
endif

colorscheme one

" treat vue file as html
autocmd BufReadPost *.ecr set syntax=html
autocmd BufNewFile,BufRead *vue,*hbs set filetype=html
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" ruby code auto completion supported by vim-ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby compiler ruby

" add whitespace between ruby comment and code
autocmd FileType ruby setlocal commentstring=#\ %s

" open NERDTree on new tab
autocmd BufWinEnter * NERDTreeMirror
