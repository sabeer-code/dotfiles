local h = require("plugins.helpers")

-- Plugin
vim.pack.add({
  h.gh("neovim/nvim-lspconfig"),
})

-- Enabling LSPs
local enable_lsp = function(lsp_name)
  local lsp_cmd = vim.lsp.config[lsp_name].cmd[1]

  if vim.fn.executable(lsp_cmd) == 1 then
    vim.lsp.enable(lsp_name)
  else
    vim.notify(string.format("'%s' is not installed/executable.", lsp_cmd), vim.log.levels.WARN)
  end
end

enable_lsp("lua_ls") -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/lua_ls.lua

-- Python
-- enable_lsp("pyright") -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/pyright.lua
enable_lsp("ty") -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/ty.lua
enable_lsp("ruff") -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/ruff.lua

-- Typescript/JavaScript
enable_lsp("ts_ls") -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/ts_ls.lua

-- TOML
enable_lsp("taplo") -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/taplo.lua
