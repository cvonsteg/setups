local opt = vim.opt
-- line numbers
opt.nu = true
opt.relativenumber = true
-- tab spacing
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true
opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.scrolloff =  8
-- splitting
opt.splitright = true
opt.splitbelow = true

vim.g.mapleader = " "
vim.g.highlightedyank_highlight_duration = 400

