"==============================================================================
" Color
"==============================================================================
set t_Co=256
"colorscheme solarized
"let g:solarized_termcolors=256     "default value is 16
"let g:solarized_contrast="high"    "default value is normal
"let g:solarized_visibility="high"  "default value is normal
"let g:solarized_diffmode="high"    "default value is normal
"let g:solarized_hitrail=1          "default value is 0


"==============================================================================
" Font
"==============================================================================
"set guifont=Terminus\ 12  " High
"set guifont=Terminus\ 10  " Mid
"set guifont=Terminus\ 8  " Low
set guifont=Noto\ Mono\ Regular\ 11  " High


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
