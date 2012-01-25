set background=dark "or light
highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "zmrok"
set t_Co=256

highlight Boolean             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsClass          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsGlobalConstant guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsGlobalVariable guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsImport         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsMember         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Character           guifg=#ffce43 ctermfg=221                           gui=none cterm=none
highlight Comment             guifg=#888888 ctermfg=102                           gui=none cterm=none
highlight Conditional         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Constant            guifg=#cf593c ctermfg=209                           gui=none cterm=none
highlight Cursor              guifg=#000000 ctermfg=0   guibg=#00ff00 ctermbg=10  gui=none cterm=none
highlight CursorColumn        guifg=#eeeeee ctermfg=255 guibg=#0d0d0d ctermbg=232 gui=none cterm=none
highlight CursorLine          guifg=#eeeeee ctermfg=255 guibg=#0d0d0d ctermbg=232 gui=none cterm=none
highlight Debug               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Define              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight DefinedName         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Delimiter           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight DiffAdd             guifg=#f8f8f8 ctermfg=15                            gui=none cterm=none
highlight DiffChange          guifg=#f8f8f8 ctermfg=15                            gui=none cterm=none
highlight DiffDelete          guifg=#f8f8f8 ctermfg=15                            gui=none cterm=none
highlight DiffText            guifg=#face43 ctermfg=221                           gui=none cterm=none
highlight Directory           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight EnumerationName     guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight EnumerationValue    guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Error               guifg=#ff0000 ctermfg=196 guibg=#141414 ctermbg=233 gui=none cterm=none
highlight ErrorMsg            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Exception           guifg=#cf593c ctermfg=209                           gui=none cterm=none
highlight Float               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight FoldColumn          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Folded              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Function            guifg=#c7ca87 ctermfg=186                           gui=none cterm=none
highlight Identifier          guifg=#c7ca87 ctermfg=186                           gui=none cterm=none
highlight Ignore              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight IncSearch           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Include             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Keyword             guifg=#a56a30 ctermfg=137                           gui=bold cterm=bold
highlight Label               guifg=#a56a30 ctermfg=137                           gui=bold cterm=bold
highlight LineNr              guifg=#777777 ctermfg=243 guibg=#000000 ctermbg=0   gui=none cterm=none
highlight LocalVariable       guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Macro               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight MatchParen          guifg=#000000 ctermfg=0   guibg=#ffcc20 ctermbg=220 gui=bold cterm=bold
highlight ModeMsg             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight MoreMsg             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight NonText             guifg=#808080 ctermfg=8   guibg=#202020 ctermbg=234 gui=none cterm=none
highlight Normal              guifg=#f8f8f8 ctermfg=15  guibg=#141414 ctermbg=233 gui=none cterm=none
highlight Number              guifg=#face43 ctermfg=221                           gui=none cterm=none
highlight Operator            guifg=#dfcc77 ctermfg=221                           gui=none cterm=none
highlight PMenu               guifg=#141414 ctermfg=233 guibg=#cda869 ctermbg=179 gui=none cterm=none
highlight PMenuSbar           guifg=#141414 ctermfg=233 guibg=#daefa3 ctermbg=192 gui=none cterm=none
highlight PMenuSel            guifg=#f8f8f8 ctermfg=15  guibg=#9b703f ctermbg=137 gui=none cterm=none
highlight PMenuThumb          guifg=#8f9d6a ctermfg=149                           gui=none cterm=none
highlight PreCondit           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight PreProc             guifg=#8b864e ctermfg=143                           gui=none cterm=none
highlight Question            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Repeat              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Search              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SignColumn          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Special             guifg=#ffa500 ctermfg=214                           gui=none cterm=none
highlight SpecialChar         guifg=#ffa500 ctermfg=214                           gui=none cterm=none
highlight SpecialComment      guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpecialKey          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellBad            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellCap            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellLocal          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellRare           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Statement           guifg=#a56a30 ctermfg=137                           gui=bold cterm=bold
highlight StatusLine          guifg=#f8f8f8 ctermfg=15  guibg=#202020 ctermbg=234 gui=bold cterm=bold
highlight StatusLineNC        guifg=#777777 ctermfg=243 guibg=#202020 ctermbg=234 gui=none cterm=none
highlight StorageClass        guifg=#c7ca87 ctermfg=186                           gui=none cterm=none
highlight String              guifg=#d9ff77 ctermfg=191                           gui=none cterm=none
highlight Structure           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight TabLine             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight TabLineFill         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight TabLineSel          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Tag                 guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Title               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Todo                guifg=#ff0000 ctermfg=196 guibg=#141414 ctermbg=233 gui=bold cterm=bold
highlight Type                guifg=#c7ca87 ctermfg=186                           gui=none cterm=none
highlight Typedef             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Underlined          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Union               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight VertSplit           guifg=#202020 ctermfg=234 guibg=#202020 ctermbg=234 gui=none cterm=none
highlight Visual              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight VisualNOS           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight WarningMsg          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight WildMenu            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight pythonBuiltin       guifg=#f8f8f8 ctermfg=15                            gui=none cterm=none
