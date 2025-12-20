-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

-- Start Treesitter highlighting
--  See `:help vim.treesitter.start()`
vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"bash",
		"c",
		"css",
		"go",
		"html",
		"java",
		"javascript",
		"jsdoc",
		"json",
		"python",
		"regex",
		"ruby",
		"rust",
		"scala",
		"tsx",
		"typescript",
	},
	callback = function()
		-- syntax highlighting, provided by Neovim
		vim.treesitter.start()
	end,
})
