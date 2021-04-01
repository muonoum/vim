-- vim.api.nvim_set_keymap('n', '<c-t>', ':FTermToggle<cr>', {})
-- vim.api.nvim_set_keymap('t', '<c-t>', '<esc>:FTermToggle<cr>', {})
vim.api.nvim_set_keymap('n', '<C-t>', ':FTermToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-t>', '<C-\\><C-n>:FTermToggle<CR>', { noremap = true, silent = true })
