if exists('g:GuiLoaded')
    GuiTabline 0
    GuiPopupmenu 0
    GuiLinespace 2
    GuiFont! JetBrains Mono Medium:h10:l
endif

" Toggle Full Screen (NVIM QT)
if g:is_win
    noremap <silent><F11> :call rpcnotify(0, 'Gui', 'WindowFullScreen', !g:GuiWindowFullScreen)<CR>
endif
