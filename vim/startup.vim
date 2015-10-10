function! Startup()
    "Make NERDTree automatically start
    if 0 == argc()
        NERDTree
    end

endfunction

"Run startup function
au VimEnter * call Startup()
