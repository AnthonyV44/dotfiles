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

    " Markdown viewing & editing helpers
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'MeanderingProgrammer/render-markdown.nvim'
    Plug 'tadmccorkle/markdown.nvim'

    " Optional live browser preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug'] }

    " Quick note capture & retrieval
    Plug 'zk-org/zk-nvim'


    " ---- UTILITIES ----

    " vim which key
    Plug 'liuchengxu/vim-which-key'

    " vim startify
    Plug 'mhinz/vim-startify'

    " File Explorer
    Plug 'preservim/nerdtree'

    " conquerer of completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Fuzzy finder & required dependency
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    Plug 'rachartier/tiny-cmdline.nvim'
    
    " Install standalone mini.cmdline (or use 'nvim-mini/mini.nvim' for the full suite)
    Plug 'nvim-mini/mini.cmdline'


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
