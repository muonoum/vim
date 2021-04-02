local map = vim.api.nvim_set_keymap

local nmap = function(k, x)
  map('n', '<leader>' .. k, x, {})
end

-- top
nmap('q', ':Sayonara<cr>')
nmap('Q', ':Sayonara!<cr>')

-- nmap('-', ':Vexplore!<cr>')
nmap('-', ':vsplit $PWD<cr>')
-- nmap('-', ':vsplit | silent Dirvish<cr>')
nmap('u', ':UndotreeToggle<cr>')
nmap('c', ':lcd %:p:h<cr>:pwd<cr>') -- TODO Glcd || lcd
nmap('T', ':vsplit | term<cr>')
nmap('R', ':botright split | term<cr>')
nmap('%', ":lua require'config.util'.source_current_file()<cr>")
nmap('z', ':vsplit $MYVIMRC<cr>')

-- find
-- nmap('ff', ':call v:lua.git_files_or_find_files()<cr>')
nmap('ff', ':Telescope find_files<cr>')
nmap('fb', ':Telescope buffers<cr>')
nmap('fg', ':Telescope git_branches<cr>')
nmap('fs', ':Telescope lsp_document_symbols<cr>')
nmap('fr', ':Telescope file_browser<cr>')
nmap('fw', ':Telescope current_buffer_fuzzy_find<cr>')
nmap('fp', ':Telescope live_grep<cr>')

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
map('n', '<leader>pc', ':PackerClean<cr>', {})

-- git
map('n', '<leader>gp', ':Git push<cr>', {})
map('n', '<leader>gg', ':vertical Git<cr>', {})
map('n', '<leader>gd', ':Gvdiffsplit<cr>', {})

vim.api.nvim_exec([[
  nmap <leader>1 <Plug>BufTabLine.Go(1)
  nmap <leader>2 <Plug>BufTabLine.Go(2)
  nmap <leader>3 <Plug>BufTabLine.Go(3)
  nmap <leader>4 <Plug>BufTabLine.Go(4)
  nmap <leader>5 <Plug>BufTabLine.Go(5)
  nmap <leader>6 <Plug>BufTabLine.Go(6)
  nmap <leader>7 <Plug>BufTabLine.Go(7)
  nmap <leader>8 <Plug>BufTabLine.Go(8)
  nmap <leader>9 <Plug>BufTabLine.Go(9)
  nmap <leader>0 <Plug>BufTabLine.Go(-1)
]], false)
