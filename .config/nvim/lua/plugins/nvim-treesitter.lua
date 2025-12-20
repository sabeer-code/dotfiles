return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
    branch = "main",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({})
		require("nvim-treesitter").install({
			"bash",         -- https://github.com/tree-sitter/tree-sitter-bash
			"c",            -- https://github.com/tree-sitter/tree-sitter-c
			"css",          -- https://github.com/tree-sitter/tree-sitter-css
			"go",           -- https://github.com/tree-sitter/tree-sitter-go
			"html",         -- https://github.com/tree-sitter/tree-sitter-html
			"java",         -- https://github.com/tree-sitter/tree-sitter-java
			"javascript",   -- https://github.com/tree-sitter/tree-sitter-javascript
			"jsdoc",        -- https://github.com/tree-sitter/tree-sitter-jsdoc
			"json",         -- https://github.com/tree-sitter/tree-sitter-json
			"python",       -- https://github.com/tree-sitter/tree-sitter-python
			"regex",        -- https://github.com/tree-sitter/tree-sitter-regex
			"ruby",         -- https://github.com/tree-sitter/tree-sitter-ruby
			"rust",         -- https://github.com/tree-sitter/tree-sitter-rust
			"scala",        -- https://github.com/tree-sitter/tree-sitter-scala
			"tsx",          -- https://github.com/tree-sitter/tree-sitter-typescript
			"typescript",   -- https://github.com/tree-sitter/tree-sitter-typescript
		})
	end,
}
