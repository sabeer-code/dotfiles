local h = require("plugins.helpers")

-- Plugin
vim.pack.add({
  h.gh("neovim/nvim-lspconfig"),
})


vim.lsp.enable("lua_ls") -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/lua_ls.lua

-- Python
-- vim.lsp.enable("pyright") -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/pyright.lua
vim.lsp.enable("ty") -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/ty.lua
vim.lsp.enable("ruff") -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/ruff.lua

-- Typescript/JavaScript
vim.lsp.enable("ts_ls") -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/ts_ls.lua

-- TOML
vim.lsp.enable("taplo") -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/taplo.lua

-- Java
vim.lsp.enable("jdtls") -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/jdtls.lua
