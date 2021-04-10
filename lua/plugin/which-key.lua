local util = require('junkbox.util')
local key = require('junkbox.key')

local which_key_register = vim.fn['which_key#register']

vim.g.which_key_use_floating_win = 0
vim.g.which_key_timeout = 250

key.lnmap('', [[:WhichKey '<space>'<cr>]])

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
  O     = 'wipe-others',
  H     = 'wipe-hidden',
  A     = 'wipe-all',
}

local windows_group = {
  name  = '+windows',
  w     = 'golden-ratio',
  f     = 'full',
  ['='] = 'equal',
  o     = 'only',
  r     = 'rotate',
  c     = 'close',
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

  ['<space>'] = 'which_key_ignore',
  ['<BS>'] = 'which_key_ignore',
  ['/'] = 'grep',
  ['%'] = 'source',
  ['-'] = 'explore',
  q     = 'sayonara',
  c     = 'cd',
  T     = 'terminal',
  ['#'] = 'buffers',


  -- ['j'] = 'which_key_ignore',
  -- ['64'] = 'which_key_ignore',
}

which_key_register('<space>', which_key_map)
