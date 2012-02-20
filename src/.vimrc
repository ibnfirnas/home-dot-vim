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
syntax enable
colorscheme elflord
set background=dark


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
" Style enforcement
"------------------------------------------------------------------------------
match  ErrorMsg '\%>79v.\+' " Lines too long
2match ErrorMsg '\s\+$'     " Trailing whitespace
3match ErrorMsg '\t'        " Tabs


"==============================================================================
" Per FileType overrides
"==============================================================================

"------------------------------------------------------------------------------
" Python
"------------------------------------------------------------------------------
autocmd FileType python set omnifunc=pythoncomplete#Complete


"------------------------------------------------------------------------------
" OCaml
"------------------------------------------------------------------------------
autocmd FileType omlet set tabstop=2 | set softtabstop=2 | set shiftwidth=2
