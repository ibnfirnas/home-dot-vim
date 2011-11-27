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
" MacVim
"==============================================================================
if has("gui_macvim")
    set t_Co=256
    colorscheme twilight
    set guifont=Menlo:h14
    set transparency=3
    set cursorline
    highlight CursorLine term=underline cterm=underline guibg=Grey22
endif


"==============================================================================
" Style enforcement
"==============================================================================

" Lines too long
match ErrorMsg '\%>79v.\+'

" Trailing whitespace
2match ErrorMsg '\s\+$'

" Tabs
3match ErrorMsg '\t'
