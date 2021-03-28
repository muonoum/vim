local map = vim.api.nvim_set_keymap

-- top
map('n', '<leader>-', ':Vexplore!<cr>', {})
map('n', '<leader>D', ':bd<cr>', {})
map('n', '<leader>g', ':vertical Git<cr>', {})
map('n', '<leader>u', ':UndotreeToggle<cr>', {})
map('n', '<leader>c', ':cd %:p:h<cr>:pwd<cr>', {})
map('n', '<leader>T', ':vsplit term://$SHELL<cr>', {})

-- find
map('n', '<leader>ff', ':Files<cr>', {})
map('n', '<leader>fb', ':Buffers<cr>', {})

-- windows
map('n', '<leader>ww', '<Plug>(golden_ratio_resize)', {})
map('n', '<leader>wf', '<C-w><Bar><C-w>_', {})
map('n', '<leader>w=', '<C-w>=', {})
map('n', '<leader>wo', ':only<cr>', {})

-- toggles
map('n', '<leader>tw', ':set wrap!<cr>', {})

-- packages
map('n', '<leader>pu', ':PaqUpdate<cr>', {})
map('n', '<leader>pi', ':PaqInstall<cr>', {})
map('n', '<leader>pc', ':PaqClean<cr>', {})

-- process
map('n', '<leader>xj', '%! jq .<cr>', {})
map('n', '<leader>xb', [[c<c-r>=system('base64 --decode', @")<cr><esc>]], {})


