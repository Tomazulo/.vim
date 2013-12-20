" Vim color file
" Maintainer:   Tom Liao <tom.liao@eloqua.com>
" Last Change:  March 27th, 2012
" grey on black
" optimized for TFT panels

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "torte_tom"

" hardcoded colors :
" GUI Comment : #80a0ff = Light blue

" GUI
highlight Normal     guifg=white        guibg=Black
highlight Search     guifg=Black        guibg=Red       gui=bold
highlight Visual     guifg=#404040                      gui=bold
highlight Cursor     guifg=Black        guibg=Green     gui=bold
highlight Special    guifg=Orange
highlight Comment    guifg=#80a0ff
highlight StatusLine guifg=blue         guibg=white
highlight Statement  guifg=Gold                         gui=NONE
highlight Type                                          gui=NONE
highlight FoldColumn guifg=DarkBlue     guibg=white     gui=bold
highlight Folded     guifg=DarkBlue     guibg=white     gui=bold
highlight Pmenu      guifg=White        guibg=DarkBlue

" Console
highlight Normal     ctermfg=white      ctermbg=Black
highlight Search     ctermfg=Black      ctermbg=Red     cterm=NONE
highlight Visual                                        cterm=reverse
highlight Cursor     ctermfg=Black      ctermbg=Green   cterm=bold
highlight Special    ctermfg=Brown
highlight Comment    ctermfg=Blue
highlight StatusLine ctermfg=blue       ctermbg=white
highlight Statement  ctermfg=Yellow                     cterm=NONE
highlight Type                                          cterm=NONE
highlight Pmenu      ctermfg=white      ctermbg=Black





