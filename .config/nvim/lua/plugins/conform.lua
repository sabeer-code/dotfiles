return { -- Autoformat
	"stevearc/conform.nvim",
	dependencies = {
		{
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			opts = {
				ensure_installed = {
					"jq", -- https://mason-registry.dev/registry/list#jq
					"prettier", -- https://mason-registry.dev/registry/list#prettier
					"shellcheck", -- https://mason-registry.dev/registry/list#shellcheck
					"stylua", -- https://mason-registry.dev/registry/list#stylua
					"taplo", -- https://mason-registry.dev/registry/list#taplo
					"ruff", -- https://mason-registry.dev/registry/list#ruff
				},
			},
		},
	},
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
	init = function()
		-- If you want the formatexpr, here is the place to set it
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}
