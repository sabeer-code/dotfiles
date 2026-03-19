-- Plugin hooks
local hooks = function(event)
  local name, kind = event.data.spec.name, event.data.kind

  if name == "telescope-fzf-native.nvim" and vim.tbl_contains({ "update", "install" }, kind) then
    if vim.fn.executable("make") == 1 then
      vim.system({ "make" }, { cwd = event.data.path })
    else
      vim.notify("'make' is not installed/executable.", vim.log.levels.WARN)
    end
  end

  if name == "nvim-treesitter" and vim.tbl_contains({ "update" }, kind) then
    vim.cmd("TSUpdate")
  end

end

vim.api.nvim_create_autocmd('PackChanged', {
  desc = "Post package install hooks",
  group = vim.api.nvim_create_augroup("vim-pack-changed", { clear = true }),
  callback = hooks,
})

-- Load Plugins
require("plugins.colorscheme")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.lspconfig")
require("plugins.conform")
require("plugins.blink")

