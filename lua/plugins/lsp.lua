return {
  -- LSP Configuration & Plugins
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" } -- Example: install lua_ls
      })
      
      -- Setup default capabilities
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      -- Add other servers here
    end,
  },
}
