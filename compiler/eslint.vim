
" Vim compiler file
" Compiler: angular linting
" Latest Revision: 2020-04-23
" Author: Eric Schneider
if exists("current_compiler")
    finish
endif
let current_compiler="angular"
if exists(":CompilerSet") != 2
command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet errorformat+=%f:\ line\ %l\\,\ col\ %c\\,\ %trror\ -\ %m
CompilerSet errorformat+=%f:\ line\ %l\\,\ col\ %c\\,\ %tarning\ -\ %m
CompilerSet makeprg=eslint\ --format=compact\ %
