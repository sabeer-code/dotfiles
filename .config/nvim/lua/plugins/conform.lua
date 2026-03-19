local h = require("plugins.helpers")

-- Plugin
vim.pack.add({
  h.gh("stevearc/conform.nvim"),
})

local format = function()
  require("conform").format({
    async = true,
    lsp_format = "fallback",
  })
end

vim.keymap.set("n", "<leader>f", format, { desc = "[F]ormat buffer" })

require("conform").setup({
  notify_on_error = false,
  formatters = {
    prettier = {
      inherit = true,
      append_args = { "--tab-width", "2", "--config-precedence", "prefer-file" },
    },
    jq = {
      inherit = true,
      append_args = { "--indent", "2" },
    },
    stylua = {
      inherit = true,
      append_args = { "--indent-type", "Spaces", "--indent-width", "2" },
    },
  },
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform can also run multiple formatters sequentially
    python = {
      "ruff_fix", -- ruff check --fix `https://docs.astral.sh/ruff/linter/`
      "ruff_format", -- ruff format `https://docs.astral.sh/ruff/formatter/`
    },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    json = { "jq" },
    markdown = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    yaml = { "prettier" },
    sh = { "shellcheck" },
    toml = { "taplo" },
  },
})
