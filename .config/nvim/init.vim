" ---- GENERAL SETTINGS ----

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-key.vim


" ---- THEMES ----

source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/airline.vim


" ---- PLUGIN CONFIGURATION ----

source $HOME/.config/nvim/plug-config/coc.vim



" Add paths to node and python here
if !empty(glob("~/.config/nvim/general/paths.vim"))
  source $HOME/.config/nvim/general/paths.vim
endif