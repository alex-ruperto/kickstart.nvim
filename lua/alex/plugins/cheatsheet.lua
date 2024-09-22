return {
  "sudormrfbin/cheatsheet.nvim",
  keys = {
   {"<leader>?", [[:Cheatsheet<CR>]], desc = "cheatsheet"}
  },
  dependencies = {
    {"nvim-telescope/telescope.nvim"},
    {"nvim-lua/popup.nvim"},
    {"nvim-lua/plenary.nvim"},
  },
  lazy = false --Force the plugin to load immediately on startup
}
