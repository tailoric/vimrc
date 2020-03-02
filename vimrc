filetype plugin indent on
syntax on
" default plugins and macros
" This plugin extends the matching of objects (%) in normal mode
packadd! matchit
packadd! justify	" justifying text.

packadd! editexisting	" when editing a file that is already edited with
			" another Vim instance, go to that Vim instance
" set the colorscheme
colorscheme desert

" set some default options for the vimrc like language autoindent etc
set langmenu=en_US
set autoindent
set backspace=indent,eol,start
set hidden
set incsearch
set ruler
set wildmenu

" disable the annoying bell
set belloff=all 

"syntax completion copied from ft-syntax-omni
if has("autocmd") && exists("+omnifunc")
	autocmd Filetype *
				\	if &omnifunc == "" |
				\		setlocal omnifunc=syntaxcomplete#Complete |
				\	endif
endif

"directory settings for swap, undo and backup files
set directory=$HOME/.vim/swp//,/tmp//
set backupdir=$HOME/.vim/backup//,/tmp//
set undodir=$HOME/.vim/undo//,/tmp//
