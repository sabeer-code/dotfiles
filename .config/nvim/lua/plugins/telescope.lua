return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
            { "<leader>pf", "<cmd>Telescope find_files<cr>" },
            { "<C-p>", "<cmd>Telescope git_files<cr>" },
        }
    },
}
