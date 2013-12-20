" Maintainer:   Tom Liao <tom.liao@eloqua.com>
" Last Change:  March 18th, 2013

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "terminal"

" Hardcoded Colors :
" #80a0ff = Light Blue
" #00A0FF = Ocean Blue

" GUI
highlight Normal     guifg=Grey90       guibg=Black
"highlight Normal     guifg=#00D000      guibg=Black
highlight Search     guifg=Black        guibg=Red       gui=bold
highlight Visual     guifg=#404040                      gui=bold
highlight Cursor     guifg=Black        guibg=Green     gui=bold
highlight Comment    guifg=#0088FF
"highlight Comment    guifg=#80A0BF
"highlight Constant   guifg=#FF1A1A
"highlight Constant   guifg=Red
"highlight Identifier guifg=Green
"highlight Identifier guifg=#40FFFF                      gui=none
"highlight Identifier guifg=Grey90
highlight Function   guifg=DarkOrange
highlight Statement  guifg=Gold                         gui=none
"highlight Operator   guifg=White                        gui=none
highlight PreProc    guifg=#DD20FF                      gui=none
highlight Type       guifg=#40FF40                      gui=none
"highlight Type       guifg=#40FFFF                      gui=none
"highlight Type       guifg=#00A0FF                      gui=none
highlight Special    guifg=DarkOrange
highlight StatusLine guifg=White        guibg=Blue      gui=none
highlight FoldColumn guifg=DarkBlue     guibg=White     gui=bold
highlight Folded     guifg=DarkBlue     guibg=White     gui=bold
highlight Pmenu      guifg=White        guibg=DarkBlue

" Console
highlight Normal     ctermfg=Green      ctermbg=Black
highlight Search     ctermfg=Black      ctermbg=Red     cterm=none
highlight Visual                                        cterm=reverse
highlight Cursor     ctermfg=Black      ctermbg=Green   cterm=bold
highlight Special    ctermfg=Brown
highlight Comment    ctermfg=Blue
highlight StatusLine ctermfg=blue       ctermbg=white
highlight Statement  ctermfg=DarkYellow                 cterm=none
highlight Type                                          cterm=none
highlight Pmenu      ctermfg=white      ctermbg=Black





