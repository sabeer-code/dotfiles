local plugins = {
    {
        "neovim/nvim-lspconfig",
        config = function ()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "clangd",
                "eslint-lsp",
                "gopls",
                "lua-language-server",
                "pyright",
                "rust-analyzer",
                "tailwindcss-language-server",
                "typescript-language-server",
                "yamlfmt",
            },
        }
    },
    {
        "christoomey/vim-tmux-navigator",
        lazy = false
    }
}
return plugins
