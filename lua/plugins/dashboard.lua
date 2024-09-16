return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      ---@class Shortcut
      ---@field icon string
      ---@field icon_hl string|nil
      ---@field desc string
      ---@field desc_hl string|nil
      ---@field key string
      ---@field key_hl string|nil
      ---@field keymap string|nil
      ---@field action string|fun()
      ---@param shortcut Shortcut
      ---@return Shortcut
      local function key(shortcut)
        shortcut.icon_hl = shortcut.icon_hl or "Title"
        shortcut.desc_hl = shortcut.desc_hl or "String"
        shortcut.key_hl = shortcut.key_hl or "Keyword"
        return shortcut
      end
      require("dashboard").setup {
        theme = "doom",
        config = {
          header = {
            "",
            "",
            "",
            "",
            "",
            " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗ ",
            " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║ ",
            " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║ ",
            " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ",
            " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║ ",
            " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ",
            "",
            "",
            "",
          },
          center = {
            key { icon = "  ", desc = "Neotree", key = "fw", action = "Neotree" },
            key { icon = "  ", desc = "Find Files", key = "ff", action = "Telescope find_files" },
            key { icon = "  ", desc = "Find Word", key = "fr", action = "Telescope live_grep" },
            key { icon = "󰒲  ", desc = "Plugins", key = "l p", action = "Lazy" },
            key { icon = "  ", desc = "Help", key = "fh", action = "Telescope help_tags" },
          },
          footer = { "no weapon formed to hinder us, freedom not given but deliberately engineered – ELUCID"},
        },
      }
    end,
  }
}
