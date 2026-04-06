local h = require("plugins.helpers")

-- Plugin
if vim.fn.executable("tree-sitter") == 1 then

  vim.pack.add({
    h.gh("nvim-treesitter/nvim-treesitter"),
  })

  -- Configuration
  require("nvim-treesitter").install({
    "bash",        -- https://github.com/tree-sitter/tree-sitter-bash
    "c",           -- https://github.com/tree-sitter/tree-sitter-c
    "css",         -- https://github.com/tree-sitter/tree-sitter-css
    "go",          -- https://github.com/tree-sitter/tree-sitter-go
    "html",        -- https://github.com/tree-sitter/tree-sitter-html
    "java",        -- https://github.com/tree-sitter/tree-sitter-java
    "javascript",  -- https://github.com/tree-sitter/tree-sitter-javascript
    "jsdoc",       -- https://github.com/tree-sitter/tree-sitter-jsdoc
    "json",        -- https://github.com/tree-sitter/tree-sitter-json
    "python",      -- https://github.com/tree-sitter/tree-sitter-python
    "regex",       -- https://github.com/tree-sitter/tree-sitter-regex
    "ruby",        -- https://github.com/tree-sitter/tree-sitter-ruby
    "rust",        -- https://github.com/tree-sitter/tree-sitter-rust
    "scala",       -- https://github.com/tree-sitter/tree-sitter-scala
    "tsx",         -- https://github.com/tree-sitter/tree-sitter-typescript
    "typescript",  -- https://github.com/tree-sitter/tree-sitter-typescript
  })

else
  vim.notify("'tree-sitter' is not installed/executable.", vim.log.levels.WARN)
end
