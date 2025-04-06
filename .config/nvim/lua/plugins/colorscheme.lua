local M = { -- Colorscheme settings
	"rebelot/kanagawa.nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	init = function()
		require("kanagawa").setup({
			theme = "dragon", -- Load "wave" theme
			background = { -- map the value of 'background' option to a theme
				dark = "dragon",
			},
		})

		vim.cmd.colorscheme("kanagawa")

		-- You can configure highlights by doing something like:
		vim.cmd.hi("Comment gui=none")
	end,
}

return M
