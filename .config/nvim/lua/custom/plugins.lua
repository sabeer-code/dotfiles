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
    },
    {
        "williamboman/mason-lspconfig.nvim",
    },
    {
        "christoomey/vim-tmux-navigator",
        lazy = false
    },
    {
        "github/copilot.vim",
        lazy = false,
        config = function()  -- Mapping tab is already used by NvChad
            vim.g.copilot_no_tab_map = true;
            vim.g.copilot_assume_mapped = true;
            vim.g.copilot_tab_fallback = "";
            -- The mapping is set to other key, see custom/lua/mappings
            -- or run <leader>ch to see copilot mapping section
        end
    },
}
return plugins
