let g:is_win = has('win32') || has('win64')
let g:is_linux = has('unix') && !has('macunix')
let g:is_mac = has('macunix')

" Add XDG_CONFIG_DIR to env vars
if has('gui')
    source $HOME/$NVIM_CONFIG_DIR/ginit.vim
endif
source $HOME/$NVIM_CONFIG_DIR/settings/settings.vim
source $HOME/$NVIM_CONFIG_DIR/plugins/plugins.vim
source $HOME/$NVIM_CONFIG_DIR/themes/themes.vim
