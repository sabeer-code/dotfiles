-- Line Numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Indent Options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Line Wrap
vim.opt.wrap = false

-- Undo settings
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search highlight settings
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Scroll settings
vim.opt.scrolloff = 8

-- Ruler settings
vim.opt.colorcolumn = "80"
