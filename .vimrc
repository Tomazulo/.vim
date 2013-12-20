"==================================
" .vimrc
" This is the vim startup settings file
"
" Personalized for: Tom Liao
"==================================

" Load plugins
call pathogen#infect()

" gVim Tweaks
if has("gui_running")
  " Window size
  set lines=56 columns=999
  " Map tab navigations similar to Chrome (Ctrl-Tab and Ctrl-Shift-Tab)
  map <c-tab> :tabn<cr>
  map <c-s-tab> :tabp<cr>
endif

" MacVim Tweaks
if has("gui_macvim")
  " Allow mac fn-key combos to work
  let macvim_hig_shift_movement = 1
  " Unbind 'Open Tab...' (This line is here for reference, it needs to be in .gvimrc to work)
  "macmenu &File.Open\ Tab... key=<nop>
  " Bind Command-Shift-T to open last closed tab
  "nmap <D-S-T> :blast<cr>
endif

" Avoid accidental deletion of typed text with ctrl-u and ctrl-w
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" Always have syntax highlighting
syntax on

" Always show cursor position
set ruler

" Tabs will generate spaces instead
set expandtab

" Turn line numbers on
set nu!

" Set search highlighting
set hlsearch

" Set Colorscheme
if has("gui_macvim")
  let ruby_operators = 1
  colorscheme torte_tom
  set transparency=15
endif

" Set open file split to be vertical by default
let netrw_browse_split = 2

" Don't fold comments in ruby
let ruby_no_comment_fold = 1

" Autochange to current working directory
"set autochdir	" May fail plugins
"autocmd BufEnter * silent! lcd %:p:h

" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window. Protect against
" screwing up folding when switching between windows.
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

" Default Syntax
au BufNewFile,BufRead * if &syntax == '' | set syntax=text | endif

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" Auto save/load folds
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview
"let g:skipview_files = [
"            \ '[EXAMPLE PLUGIN BUFFER]'
"            \ ]
"function! MakeViewCheck()
"    if has('quickfix') && &buftype =~ 'nofile'
"        " Buffer is marked as not a file
"        return 0
"    endif
"    if empty(glob(expand('%:p')))
"        " File does not exist on disk
"        return 0
"    endif
"    if len($TEMP) && expand('%:p:h') == $TEMP
"        " We're in a temp dir
"        return 0
"    endif
"    if len($TMP) && expand('%:p:h') == $TMP
"        " Also in temp dir
"        return 0
"    endif
"    if index(g:skipview_files, expand('%')) >= 0
"        " File is in skip list
"        return 0
"    endif
"    return 1
"endfunction
"augroup vimrcAutoView
"    autocmd!
"    " Autosave & Load Views.
"    autocmd BufWritePost,BufLeave,WinLeave ?* if MakeViewCheck() | mkview | endif
"    autocmd BufWinEnter ?* if MakeViewCheck() | silent loadview | endif
"augroup end


