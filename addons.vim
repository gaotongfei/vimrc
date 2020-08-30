function! HTMLComplete()
    let currentWord = expand("<cword>")
    if match(currentWord, 'html')
    endif
endfunction
inoremap <tab> <c-r>=HTMLComplete()<CR>
