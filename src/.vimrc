"==============================================================================
" Pathogen
"==============================================================================

execute pathogen#infect()

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
set history=1000            " Bump history from default of 20
set modeline
set modelines=1
set ttimeoutlen=100         " Reduce delay when addinng libe above ("O")
set fileformats=unix
filetype on
filetype plugin on

"------------------------------------------------------------------------------
" Color
"------------------------------------------------------------------------------
set t_Co=256
syntax enable
set background=dark
colorscheme zenburn
"hi Normal guibg=NONE    " Transparency
"hi Normal ctermbg=NONE  " Transparency


"------------------------------------------------------------------------------
" Search
"------------------------------------------------------------------------------
set hlsearch
set incsearch
set noignorecase
set smartcase


"------------------------------------------------------------------------------
" Text format / indentation
"------------------------------------------------------------------------------
filetype indent on
set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=0


"------------------------------------------------------------------------------
" Code folding
"------------------------------------------------------------------------------
set foldmethod=indent
set nofoldenable

"------------------------------------------------------------------------------
" Style enforcement
"------------------------------------------------------------------------------
" Lines too-long
let &colorcolumn=join(range(80,80),",")
"match  ErrorMsg '\%>79v.\+'

match  ErrorMsg '\s\+$'  " Trailing whitespace
"2match ErrorMsg '\t'     " Tabs

" TODO: How to match more than 2 things? 3match is reserved for brackets.

"==============================================================================
" Per FileType overrides
"==============================================================================

" C
autocmd FileType c set noexpandtab | set shiftwidth=8 | set tabstop=8 | set softtabstop=8

" R
autocmd FileType r set tabstop=2 | set softtabstop=2 | set shiftwidth=2

" Python
autocmd FileType python set omnifunc=pythoncomplete#Complete

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

" Mathematica
autocmd BufNewFile,BufRead *.m  set filetype=mma
autocmd BufNewFile,BufRead *.mt set filetype=mma
autocmd FileType mma set tabstop=2 | set softtabstop=2 | set shiftwidth=2

" -----------------------------------------------------------------------------
" OCaml
" -----------------------------------------------------------------------------
autocmd FileType ocaml set tabstop=2 | set softtabstop=2 | set shiftwidth=2
autocmd FileType omlet set tabstop=2 | set softtabstop=2 | set shiftwidth=2

" OPAM
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')

" merlin
execute ":set rtp+=" . g:opamshare . "/merlin/vim"

" -----------------------------------------------------------------------------
" TypeScript
" -----------------------------------------------------------------------------
"let g:tsuquyomi_completion_detail = 1
"let g:tsuquyomi_use_local_typescript = 0
