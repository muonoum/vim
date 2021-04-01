local map = vim.api.nvim_set_keymap

local nmap = function(k, x)
  map('n', '<leader>' .. k, x, {})
end

-- top
nmap('<space>', '<Plug>(golden_ratio_resize)')
nmap('-', ':Vexplore!<cr>')
nmap('u', ':UndotreeToggle<cr>')
nmap('c', ':cd %:p:h<cr>:pwd<cr>') -- TODO git cd || cd
nmap('T', ':vsplit | term <cr>')
nmap('%', ":lua require'config.util'.source_current_file()<cr>")

-- find
nmap('ff', ':Telescope find_files<cr>')
nmap('fb', ':Telescope buffers<cr>')
nmap('fg', ':Telescope git_branches<cr>')
nmap('fs', ':Telescope lsp_document_symbols<cr>')
nmap('fr', ':Telescope file_browser<cr>')

-- windows
nmap('ww', '<Plug>(golden_ratio_resize)')
nmap('wf', '<C-w><Bar><C-w>_')
nmap('w=', '<C-w>=')
nmap('wo', ':only<cr>')
nmap('wr', '<C-w>r')
nmap('wd', ':bd<cr>')
nmap('wW', ':%bd!<cr>')

-- toggles
nmap('tw', ':set wrap!<cr>')
nmap('tg', ':GoldenRatioToggle<cr>')

-- packages
map('n', '<leader>ps', ':PackerSync<cr>', {})
map('n', '<leader>pc', ':PaqClean<cr>', {})
-- map('n', '<leader>pu', ':PaqUpdate<cr>', {})
-- map('n', '<leader>pi', ':PaqInstall<cr>', {})
-- map('n', '<leader>pc', ':PaqClean<cr>', {})

-- git
map('n', '<leader>gp', ':Git push<cr>', {})
map('n', '<leader>gg', ':vertical Git<cr>', {})
map('n', '<leader>gd', ':Gvdiffsplit<cr>', {})
