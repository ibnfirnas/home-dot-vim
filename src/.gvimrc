set t_Co=256
"colorscheme solarized
"let g:solarized_termcolors=256     "default value is 16
"let g:solarized_contrast="high"    "default value is normal
"let g:solarized_visibility="high"  "default value is normal
"let g:solarized_diffmode="high"    "default value is normal
"let g:solarized_hitrail=1          "default value is 0

set cursorline
highlight CursorLine term=underline cterm=underline guibg=Grey22

if has("gui_macvim")
    set guifont=Monaco:h14
    "set transparency=3
else
    set guifont=Iosevka\ Fixed\ SS09\ Extended\ 14  " 1920x1200
    "set guifont=Noto\ Mono\ Regular\ 11  " High
    "set guifont=Ubuntu\ Mono\ Regular\ 13  " 1920x1200
    "set guifont=Terminus\ 12  " High
    "set guifont=Terminus\ 10  " Mid
    "set guifont=Terminus\ 8  " Low
endif

"set clipboard^=unnamed,unnamedplus  " share with the system
set clipboard=unnamedplus
