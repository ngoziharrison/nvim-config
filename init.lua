vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set conceallevel=2")

vim.g.mapleader = " "

require("config.lazy")

require("lazy").setup("plugins")
require("catppuccin").setup()
require('lspconfig').texlab.setup{}
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

require('cmp').setup({
  sources = {
    { name = 'vimtex' },
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
  },
})

vim.cmd.colorscheme "catppuccin"

vim.opt.spelllang = 'en_us'
vim.opt.spell = true
vim.opt.number = true

vim.opt.linebreak = true

local builtin = require("telescope.builtin")
local ntree = require("neo-tree")
vim.keymap.set("i", "kj", "<esc>", {})
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>vf', builtin.spell_suggest, {})
vim.keymap.set('n', '<leader>tr', ':Neotree toggle<CR>')

vim.keymap.set('n', '<leader>rc', [[<cmd>Telescope bibtex<cr>]], { desc = 'Search BibTeX' })
vim.keymap.set('i', '<M-C>', [[<cmd>Telescope bibtex<cr>]], { desc = 'Insert BibTeX citation' })

--Keymaps

vim.keymap.set('n', 'j', 'gj',  {})
vim.keymap.set('n', 'k', 'gk',  {})
vim.keymap.set('n', 'H', '^',  {})
vim.keymap.set('n', 'L', '$',  {})

local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})

vim.g.vimtex_view_method = 'zathura'
--vim.g.vimtex_view_method = 'skim'



