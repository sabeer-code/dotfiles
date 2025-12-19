return { -- Autoformat
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = false,
		formatters = {
			prettier = {
				inherit = true,
				append_args = { "--tab-width", "4", "--config-precedence", "prefer-file" },
			},
			jq = {
				inherit = true,
				append_args = { "--indent", "4" },
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
	},
}
