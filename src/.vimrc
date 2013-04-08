"==============================================================================
" Defaults
"==============================================================================

"------------------------------------------------------------------------------
" General
"------------------------------------------------------------------------------
set nocompatible            " Because plain vi is a bit annoying
set nu                      " Line numbers in gutter
set ruler                   " Line and column numbers in status
set splitright splitbelow   " Split window order
set bs=2                    " Enable backspace key

filetype on
filetype plugin on


"------------------------------------------------------------------------------
" Color
"------------------------------------------------------------------------------
set t_Co=16
syntax enable
set background=dark
colorscheme solarized


"------------------------------------------------------------------------------
" Search
"------------------------------------------------------------------------------
set hlsearch
set incsearch
set ignorecase
set smartcase


"------------------------------------------------------------------------------
" Text format / indentation
"------------------------------------------------------------------------------
filetype indent on
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79


"------------------------------------------------------------------------------
" Code folding
"------------------------------------------------------------------------------
set foldmethod=indent
set nofoldenable


"------------------------------------------------------------------------------
" Style enforcement
"------------------------------------------------------------------------------
match  ErrorMsg '\%>79v.\+' " Lines too long
2match ErrorMsg '\s\+$'     " Trailing whitespace
3match ErrorMsg '\t'        " Tabs


"==============================================================================
" Per FileType overrides
"==============================================================================

" R
autocmd FileType r set tabstop=2 | set softtabstop=2 | set shiftwidth=2

" Python
autocmd FileType python set omnifunc=pythoncomplete#Complete

" OCaml
autocmd FileType ocaml set tabstop=2 | set softtabstop=2 | set shiftwidth=2
autocmd FileType omlet set tabstop=2 | set softtabstop=2 | set shiftwidth=2

" Git commit
autocmd FileType gitcommit set spell

" Markdown
autocmd FileType markdown set spell

" HTML
autocmd FileType html set spell

" MediaWiki
autocmd FileType mediawiki set spell
autocmd FileType mediawiki set tabstop=2 | set softtabstop=2 | set shiftwidth=2

" Tiger
autocmd BufNewFile,BufRead *.tig set filetype=tiger

" SML
autocmd BufNewFile,BufRead *.sig set filetype=sml
