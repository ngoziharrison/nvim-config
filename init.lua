vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "

require("config.lazy")

require("lazy").setup("plugins")
require("catppuccin").setup()
require('lualine').setup {options = { theme = 'gruvbox_dark' }}
require("barbecue.ui").toggle(true)
require("scrollbar").setup()
require("neo-tree").setup({
  window = {
    mappings = {
      ["<space>"] = {
        "toggle_node",
        nowait = false
      }
    }
  }

})

vim.cmd.colorscheme "catppuccin"

vim.opt.spelllang = 'en_us'
vim.opt.spell = true
vim.opt.number = true

vim.opt.linebreak = true

local builtin = require("telescope.builtin")
local ntree = require("neo-tree")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>vf', builtin.spell_suggest, {})
vim.keymap.set('n', '<leader>tr', ':Neotree toggle<CR>')
