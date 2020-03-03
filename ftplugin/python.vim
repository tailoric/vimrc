
if has("win32")
    " special case for windows: replace / with \  (see :h filename-modifiers)
    setlocal makeprg=python3\ -m\ flake8\ \"%:p:gs?/?\\?\"  
else
    setlocal makeprg=python3\ -m\ flake8\ %:p
endif
" write before running make and open the quickfix window immediately
augroup open_quick_fix
    autocmd!
    autocmd QuickFixCmdPost * copen
    autocmd QuickFixCmdPre * write
augroup END

