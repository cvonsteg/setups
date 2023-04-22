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

opt.formatoptions:remove('cro')

vim.g.mapleader = " "
vim.g.highlightedyank_highlight_duration = 400
-- disable comments auto-continuing on next line
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

local options = { noremap = true }
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<ESC>", options)
vim.keymap.set('n', '<leader>.', vim.cmd.sp)
vim.keymap.set('n', '<leader>/', vim.cmd.vsp)
-- quick save
vim.keymap.set('n', '<C-s>', vim.cmd.w)
-- buffers
vim.keymap.set('n', 'bd', vim.cmd.bdelete)
vim.keymap.set('n', 'bn', vim.cmd.bnext)
vim.keymap.set('n', 'bp', vim.cmd.bprev)

