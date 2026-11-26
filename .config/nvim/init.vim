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


lua << EOF
-- 1. Fuzzy Finder (Telescope)
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files in current directory' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep,  { desc = 'Live grep text (uses ripgrep)' })
vim.keymap.set('n', '<leader>fb', builtin.buffers,    { desc = 'Switch open buffers' })

-- 2. Markdown Helpers & Viewer
require('render-markdown').setup({})
require('markdown').setup({})

-- 3. Persistent Note Capture & Retrieval (zk-nvim)
require('zk').setup({
  picker = "telescope",
})

-- command line UI
vim.o.cmdheight = 0
require("vim._core.ui2").enable({})
require("tiny-cmdline").setup({
  border = "rounded", -- 'single', 'double', 'rounded', 'solid'
})

-- Initialize the module
require('mini.cmdline').setup()

-- Quick Note Keymaps
-- Capture a new note immediately (prompts for a title, saves automatically in your notebook)
vim.keymap.set("n", "<leader>zn", "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", { desc = "New Note" })

-- List and open existing notes
vim.keymap.set("n", "<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", { desc = "Open Note" })

-- Full-text search inside all captured notes with live preview
vim.keymap.set("n", "<leader>zf", "<Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>", { desc = "Find in Notes" })

-- Fuzzy-list and preview all notes sorted by most recently edited
vim.keymap.set("n", "<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", { desc = "Open Note" })

EOF
