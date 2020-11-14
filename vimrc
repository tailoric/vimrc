filetype plugin indent on
syntax on
" default plugins and macros
packadd! matchit    " This plugin extends the matching of objects (%) in normal mode
packadd! justify	" justifying text.

packadd! editexisting	" when editing a file that is already edited with
                        " another Vim instance, go to that Vim instance
colorscheme desert

" set some default options for the vimrc like language autoindent etc
set fileformat=unix
set fileformats=unix,dos
set langmenu=en_US              " set the menu items to english
set autoindent                  " continue with the same indent when starting a new line
set number                      " show line numbers
set backspace=indent,eol,start  " set that delete operations can delete stuff
set hidden                      " allow hiding unsaved buffers
set incsearch                   " show search progress while typing
set ruler                       " set the ruler column in the status bar
set wildmenu                    " menu for ex command tab completion
set ignorecase                  " ignore casing by default and...
set smartcase                   " only search case sensitive when using uppercase
set hlsearch                    " activate highlighting search results
set showcmd                     " show the current (partial) normal commands in the bottom of the screen
set autoread                    " automatically load changes if file was changed from the outside

"syntax completion copied from ft-syntax-omni
if has("autocmd") && exists("+omnifunc")
	autocmd Filetype *
				\	if &omnifunc == "" |
				\		setlocal omnifunc=syntaxcomplete#Complete |
				\	endif
endif
set completeopt=menuone,preview " show preview window and show popup even with only one match
"default tab and shiftwidth settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"directory settings for swap, undo and backup files
set directory=$HOME/.vim/swp//,/tmp//,$HOME/vimfiles/swp//,$TMP/
set backup
set backupdir=$HOME/.vim/backup//,/tmp//,$HOME/vimfiles/backup//,$TMP/
set undofile
set undodir=$HOME/.vim/undo//,/tmp//,$HOME/vimfiles/undo//,$TMP/

 "statusline settings (mostly show fugitive statusline)
set laststatus=2
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P
"
"leader mappings
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"
"mappings normalmode
"save quickly
nnoremap <Leader>w :w<CR>
" edit vimrc
nnoremap <silent> <F2> :e $MYVIMRC<CR>
nnoremap <Leader>m :w <bar> silent make <bar> redraw! <bar> copen <CR>p
"use leader for window switching
nnoremap <Leader>l <C-w>l
nnoremap <Leader>k <C-w>k
nnoremap <Leader>j <C-w>j
nnoremap <Leader>h <C-w>h
nnoremap <Leader>q viwc''<esc>PE
nnoremap <Leader>Q viwc""<esc>PE
nnoremap <Leader>[ viwc[]<esc>PE
nnoremap <Leader>{ viwc{}<esc>PE
nnoremap <Leader>( viwc()<esc>PE
nnoremap <Leader>s :new \| setlocal buftype=nofile bufhidden=hide noswapfile <CR>
nnoremap <Leader>S :new \| setlocal buftype=nofile bufhidden=hide noswapfile \| :only<CR>
"toggle hlsearch
nnoremap <silent> <Leader>n :silent nohlsearch<CR>
nnoremap <Leader>p "+p
vnoremap <Leader>c "+y
vnoremap <Leader>p "+p
vnoremap <Leader>q c''<left><c-r>"<esc>
vnoremap <Leader>Q c""<left><c-r>"<esc>
vnoremap <Leader>{ c{}<left><c-r>"<esc>
vnoremap <Leader>[ c[]<left><c-r>"<esc>
vnoremap <Leader>( c()<left><c-r>"<esc>

"remove trailing whitespaces
nnoremap <Leader>t :%substitute/\s\+$//g<CR>

" disable the annoying bell
set belloff=all
" netrw settings
let g:netrw_liststyle = 3
let g:netrw_winsize = 90
let g:netrw_browse_split=4
let g:netrw_preview=1
if has("win32")
    runtime windows.vim
endif
