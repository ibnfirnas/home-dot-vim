"==============================================================================
" Pathogen
"==============================================================================

execute pathogen#infect()

"==============================================================================
" Defaults
"==============================================================================

let g:coc_global_extensions=[ 'coc-omnisharp' ]

"------------------------------------------------------------------------------
" General
"------------------------------------------------------------------------------
set nocompatible            " Because plain vi is a bit annoying
set nu                      " Line numbers in gutter
"set rnu                    " Relative number. relativenumber rnu norelativenumber nornu
set ruler                   " Line and column numbers in status
set splitright splitbelow   " Split window order
set bs=2                    " Enable backspace key
set history=1000            " Bump history from default of 20
set modeline
set modelines=2
set ttimeoutlen=100         " Reduce delay when addinng libe above ("O")
"set fileformats=unix
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
set tabstop=8
set softtabstop=4
set shiftwidth=4
set textwidth=0  " What is the point of this again? Prevent auto-wrapping?


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

" TypeScript
autocmd FileType typescript set noexpandtab | set shiftwidth=8 | set tabstop=8 | set softtabstop=8

" R
autocmd FileType r set tabstop=2 | set softtabstop=2 | set shiftwidth=2

" Python
autocmd FileType python set omnifunc=pythoncomplete#Complete

" Git commit
autocmd FileType gitcommit set spell

" Markdown
"autocmd FileType markdown set spell

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

" F#
autocmd FileType fsharp set tabstop=4 | set softtabstop=4 | set shiftwidth=4

" twtxt.txt
autocmd BufNewFile,BufRead twtxt.txt set filetype=conf | set noexpandtab

" Scheme
autocmd FileType scheme set tabstop=2 | set softtabstop=2 | set shiftwidth=2

" -----------------------------------------------------------------------------
" TypeScript
" -----------------------------------------------------------------------------
"let g:tsuquyomi_completion_detail = 1
"let g:tsuquyomi_use_local_typescript = 0
"let g:syntastic_typescript_checkers = ['tsuquyomi']

" -----------------------------------------------------------------------------
" Racket
" -----------------------------------------------------------------------------
let g:syntastic_enable_racket_racket_checker = 0

" -----------------------------------------------------------------------------
" OCaml
" -----------------------------------------------------------------------------
autocmd FileType ocaml set tabstop=2 | set softtabstop=2 | set shiftwidth=2
autocmd FileType omlet set tabstop=2 | set softtabstop=2 | set shiftwidth=2

" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
