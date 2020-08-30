
" key bindings
nnoremap <C-h> :noh<CR>
nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <leader><leader> gg=G

" Tab completion
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" ,fro
nnoremap <leader>fro ggO# frozen_string_literal: true<Esc>o<Esc>x
