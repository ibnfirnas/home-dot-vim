set nocompatible
set nu
set splitright splitbelow
filetype on
filetype plugin on


"==============================================================================
" Color
"==============================================================================
syntax enable
colorscheme elflord
set background=dark


"==============================================================================
" Search
"==============================================================================
set hlsearch
set incsearch
set ignorecase
set smartcase


"==============================================================================
" Text format / indentation
"==============================================================================
filetype indent on
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set nofoldenable


"==============================================================================
" Python
"==============================================================================
let python_highlight_all=1
autocmd FileType python set omnifunc=pythoncomplete#Complete


"==============================================================================
" OCaml
"==============================================================================
autocmd FileType omlet set tabstop=2 | set softtabstop=2 | set shiftwidth=2


"==============================================================================
" Style enforcement
"==============================================================================

" Lines too long
match ErrorMsg '\%>79v.\+'

" Trailing whitespace
2match ErrorMsg '\s\+$'

" Tabs
3match ErrorMsg '\t'
