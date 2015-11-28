"==============================================================================
" Color
"==============================================================================
set t_Co=256
colorscheme solarized
let g:solarized_termcolors=256     "default value is 16
let g:solarized_contrast="high"    "default value is normal
let g:solarized_visibility="high"  "default value is normal
let g:solarized_diffmode="high"    "default value is normal
let g:solarized_hitrail=1          "default value is 0


"==============================================================================
" Font
"==============================================================================
set guifont=Monospace\ 10


"==============================================================================
" Cursorline
"==============================================================================
set cursorline
highlight CursorLine term=underline cterm=underline guibg=Grey22


"==============================================================================
" MacVim
"==============================================================================
if has("gui_macvim")
    set guifont=Menlo:h11
    "set transparency=3
endif
