" maximize the window
set lines=999 columns=999
" remove the toolbars
set guioptions-=T
set guioptions-=m
" remove the left and right scrollbars
" set guioptions-=rL

set guifont=Consolas:h11
" set guifont=Monaco:h11

" windows: enter fullscreen mode
autocmd GUIEnter * simalt ~x
