local util = require('junkbox.util')
local which_key_register = vim.fn['which_key#register']

util.exec [[
  augroup which_key
    autocmd!
    autocmd FileType which_key set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler
  augroup END
]]

vim.g.which_key_use_floating_win = 0
vim.g.which_key_timeout = 250

util.lnmap('', [[:WhichKey '<space>'<cr>]])

local toggles_group = {
  name = '+toggles',
  g    = 'golden-ratio',
  w    = 'wrap',
}

local files_group = {
  name  = '+files',
  f     = 'find',
}

local buffers_group = {
  name  = '+buffers',
  f     = 'find',
  l     = 'ls',
  s     = 'split',
  v     = 'vsplit',
  a     = 'all',
  D     = 'delete-all',
  W     = 'wipe-all',
}

local windows_group = {
  name  = '+windows',
  w     = 'golden-ratio',
  ['='] = 'equal',
  f     = 'full',
  o     = 'only',
  r     = 'rotate',
}

local git_group = {
  name  = '+git',
  g     = 'status',
  p     = 'push',
  d     = 'diff',
}

local which_key_map = {
  t     = toggles_group,
  f     = files_group,
  b     = buffers_group,
  w     = windows_group,
  g     = git_group,

  ['%'] = 'source',
  ['-'] = 'explore',
  q     = 'sayonara',
  k     = 'close',
  c     = 'cd',
  T     = 'terminal',

  ['<space>'] = 'which_key_ignore',
  ['<BS>'] = 'which_key_ignore',
  ['j'] = 'which_key_ignore',
  ['64'] = 'which_key_ignore',

  ['1'] = 'which_key_ignore',
  ['2'] = 'which_key_ignore',
  ['3'] = 'which_key_ignore',
  ['4'] = 'which_key_ignore',
  ['5'] = 'which_key_ignore',
  ['6'] = 'which_key_ignore',
  ['7'] = 'which_key_ignore',
  ['8'] = 'which_key_ignore',
  ['9'] = 'which_key_ignore',
  ['0'] = 'which_key_ignore',

  ['k1'] = 'which_key_ignore',
  ['k2'] = 'which_key_ignore',
  ['k3'] = 'which_key_ignore',
  ['k4'] = 'which_key_ignore',
  ['k5'] = 'which_key_ignore',
  ['k6'] = 'which_key_ignore',
  ['k7'] = 'which_key_ignore',
  ['k8'] = 'which_key_ignore',
  ['k9'] = 'which_key_ignore',
  ['k0'] = 'which_key_ignore',

  ['v1'] = 'which_key_ignore',
  ['v2'] = 'which_key_ignore',
  ['v3'] = 'which_key_ignore',
  ['v4'] = 'which_key_ignore',
  ['v5'] = 'which_key_ignore',
  ['v6'] = 'which_key_ignore',
  ['v7'] = 'which_key_ignore',
  ['v8'] = 'which_key_ignore',
  ['v9'] = 'which_key_ignore',
  ['v0'] = 'which_key_ignore',
}

which_key_register('<space>', which_key_map)
