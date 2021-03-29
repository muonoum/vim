local map = vim.api.nvim_set_keymap

-- top
map('n', '<leader>-', ':Vexplore!<cr>', {})
map('n', '<leader>u', ':UndotreeToggle<cr>', {})
map('n', '<leader>c', ':cd %:p:h<cr>:pwd<cr>', {})
map('n', '<leader>T', ':vsplit | term <cr>', {})

-- find
map('n', '<leader>ff', ':Files<cr>', {})
map('n', '<leader>fb', ':Buffers<cr>', {})

-- windows
map('n', '<leader>ww', '<Plug>(golden_ratio_resize)', {})
map('n', '<leader>wf', '<C-w><Bar><C-w>_', {})
map('n', '<leader>w=', '<C-w>=', {})
map('n', '<leader>wo', ':only<cr>', {})
map('n', '<leader>wr', '<C-w>r', {})
map('n', '<leader>wd', ':bd<cr>', {})
map('n', '<leader>wW', ':%bd!<cr>', {})

-- toggles
map('n', '<leader>tw', ':set wrap!<cr>', {})

-- packages
map('n', '<leader>pu', ':PaqUpdate<cr>', {})
map('n', '<leader>pi', ':PaqInstall<cr>', {})
map('n', '<leader>pc', ':PaqClean<cr>', {})

-- git
map('n', '<leader>gp', ':Git push<cr>', {})
map('n', '<leader>gg', ':vertical Git<cr>', {})
