local key = require('junkbox.key')

vim.g.mapleader = ' '

key.lnmap('<space>', [[:bnext<cr>]])
key.lnmap('<bs>', [[:bprev<cr>]])

key.lnmap('j',  [[%! jq .<cr>]])
key.lvmap('64', [[c<c-r>=system('base64 --decode', @")<cr><esc>]])

-- +top
key.lnmap('/',  [[:Telescope live_grep<cr>]])
key.lnmap('%',  require'junkbox.util'.source, { silent = true })
key.lnmap('k',  [[:close<cr>]])
key.lnmap('q',  [[:Sayonara<cr>]], { silent = true })
key.lnmap('c',  [[:lcd %:p:h<cr>:pwd<cr>]])
key.lnmap('-',  [[:vsplit $PWD<cr>]])
key.lnmap('T',  [[:vsplit | term<cr>]])
key.lnmap('#',  [[:Telescope buffers<cr>]])

-- +toggles
key.lnmap('tw', [[:set wrap!<cr>]])
key.lnmap('tg', [[:GoldenRatioToggle<cr>]])

-- +files
key.lnmap('ff', [[:Telescope find_files<cr>]])

-- +buffers
key.lnmap('bf', [[:Telescope buffers<cr>]])
key.lnmap('bl', [[:ls<cr>:b<space>]])
key.lnmap('bs', [[:ls<cr>:sb<space>]])
key.lnmap('bv', [[:ls<cr>:vertical sb<space>]])
key.lnmap('ba', [[:vertical ball<cr>]])

-- +wipe
key.lnmap('bwo', [[:OtherBufDo bwipeout!<cr>]])
key.lnmap('bwh', [[:HiddenBufDo bwipeout!<cr>]])
key.lnmap('bwa', [[:%bwipeout!<cr>]])

-- +windows
key.lnmap('ww', [[<Plug>(golden_ratio_resize)]])
key.lnmap('wf', [[<C-w><Bar><C-w>_]])
key.lnmap('w=', [[<C-w>=]])
key.lnmap('wo', [[:only<cr>]])
key.lnmap('wr', [[<C-w>r]])

-- +git
key.lnmap('gp', [[:Git push<cr>]])
key.lnmap('gg', [[:vertical Git<cr>]])
key.lnmap('gd', [[:Gvdiffsplit<cr>]])
