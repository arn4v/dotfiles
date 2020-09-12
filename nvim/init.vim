let g:is_win = has('win32') || has('win64')
let g:is_linux = has('unix') && !has('macunix')
let g:is_mac = has('macunix')

source $NVIM_CONFIG_DIR/plugins/plugins.vim
source $NVIM_CONFIG_DIR/settings/settings.vim
source $NVIM_CONFIG_DIR/themes.vim
