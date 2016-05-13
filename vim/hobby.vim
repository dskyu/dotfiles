autocmd FileType ruby setlocal sw=2 ts=2

autocmd BufNewFile *.rb exec ":call SetTitle()" 

func SetTitle() 
    if &filetype == 'rb'
        call setline(1, "#!/usr/bin/ruby")
    endif
    autocmd BufNewFile * normal G
endfunc
