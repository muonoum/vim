local which_key_register = vim.fn['which_key#register']
local map = vim.api.nvim_set_keymap

vim.g.which_key_use_floating_win = 0
vim.g.which_key_timeout = 250

map('n', '<leader>', ":WhichKey '<space>'<cr>", { noremap = true })

local find_group = {
  name = '+find',
  f    = 'files',
  b    = 'buffers',
  g    = 'branches',
  s    = 'symbols',
  r    = 'browser',
  w    = 'words',
  p    = 'grep',
}

local packages_group = {
  name = '+packages',
  s    = 'sync',
  c    = 'clean',
}

local git_group = {
  name = '+git',
  g    = 'status',
  p    = 'push',
  d    = 'diff',
}

local toggles_group = {
  name = '+toggles',
  w    = 'wrap',
  g    = 'golden-ratio'
}

local windows_group = {
  name  = '+windows',
  w     = 'golden-ratio',
  ['='] = 'balance',
  f     = 'full',
  o     = 'only',
  r     = 'rotate',
  W     = 'wipe',
  d     = 'delete',
}

local which_key_map = {
  ['-'] = 'explore',
  u     = 'undo-tree',
  c     = 'cd',
  T     = 'terminal',
  R     = 'terminal',
  q     = 'close',
  Q     = 'which_key_ignore',
  ['%'] = 'source-file',
  f     = find_group,
  p     = packages_group,
  g     = git_group,
  t     = toggles_group,
  w     = windows_group,
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
}

which_key_register('<space>', which_key_map)
