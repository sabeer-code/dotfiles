local h = require("plugins.helpers")

vim.pack.add({
  h.gh("folke/tokyonight.nvim"),
})

require("tokyonight").setup({
  style = "moon"
})

vim.cmd.colorscheme("tokyonight")
