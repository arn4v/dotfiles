" Always source these
source $HOME/.config/nvim/settings/settings.vim
source $HOME/.config/nvim/plugins/plugins.vim
source $HOME/.config/nvim/themes/themes.vim
"
"{ Main configurations
let g:is_win = has('win32') || has('win64')
let g:is_linux = has('unix') && !has('macunix')
let g:is_mac = has('macunix')

