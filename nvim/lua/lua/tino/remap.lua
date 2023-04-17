local options = { noremap = true }
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<ESC>", options)
-- quick save
vim.keymap.set('n', '<C-s>', vim.cmd.w)
-- window split
vim.keymap.set('n', '<leader>.', vim.cmd.sp)
vim.keymap.set('n', '<leader>/', vim.cmd.vsp)
-- buffers
vim.keymap.set('n', 'bn', vim.cmd.bnext)
vim.keymap.set('n', 'bp', vim.cmd.bprev)
vim.keymap.set('n', 'bd', vim.cmd.bdelete)
-- move visual blocks up and down
-- when searching keep cursor centered
vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv'")
vim.keymap.set('v', 'k', ":m '<-2<cr>gv=gv'")
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
