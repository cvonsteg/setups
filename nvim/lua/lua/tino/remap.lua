local options = { noremap = true }
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<ESC>", options)
-- window split
vim.keymap.set('n', '<leader>.', vim.cmd.sp)
vim.keymap.set('n', '<leader>/', vim.cmd.vsp)
-- buffers
vim.keymap.set('n', 'bn', vim.cmd.bnext)
vim.keymap.set('n', 'bp', vim.cmd.bprev)
vim.keymap.set('n', 'bd', vim.cmd.bdelete)
-- move visual blocks up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv'")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv'")
-- when searching keep cursor centered
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
