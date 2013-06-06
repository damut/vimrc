" remove menubar
set guioptions-=m
" remove toolbar
set guioptions-=T

if has('win32') || has('win64')
    " start maximized
    autocmd GUIEnter * :simalt ~x
    set guifont=Consolas:h12:cANSI
elseif
    set guifont=Inconsolata\ 12
endif

