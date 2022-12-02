" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " ---- CODE ----

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'



    " ---- PRODUCTIVITY ----

    " vim wiki
    Plug 'vimwiki/vimwiki'



    " ---- UTILITIES ----

    " vim which key
    Plug 'liuchengxu/vim-which-key'

    " vim startify
    Plug 'mhinz/vim-startify'

    " File Explorer
    Plug 'preservim/nerdtree'

    " conquerer of completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    

    " ---- PRESENTATION ----

    " vim airline
    Plug 'vim-airline/vim-airline'

    " onedark theme
    Plug 'joshdick/onedark.vim'

    " Cool Icons
    Plug 'ryanoasis/vim-devicons'

    " Indent Guide
    Plug 'Yggdroot/indentLine'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif