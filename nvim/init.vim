let g:is_win = has('win32') || has('win64')
let g:is_linux = has('unix') && !has('macunix')
let g:is_mac = has('macunix')
let g:CONFIG_DIR = ".config/nvim"

if g:is_win
    let g:CONFIG_DIR = "AppData\\Local\\nvim"
endif

if has('gui')
	execute('source ' . $HOME . '/' . g:CONFIG_DIR . '/ginit.vim')
endif
exe
" Concat $HOME and CONFIG_DIR into execute string because apparently
" you can't just use the $ sign for vim variables
execute('source ' . $HOME . '/' . g:CONFIG_DIR . '/settings/settings.vim')
execute('source ' . $HOME . '/' . g:CONFIG_DIR . '/plugins/plugins.vim')
execute('source ' . $HOME . '/' . g:CONFIG_DIR . '/themes/themes.vim')
