local which_key_register = vim.fn['which_key#register']
local map = vim.api.nvim_set_keymap

vim.g.which_key_use_floating_win = 0
vim.g.which_key_timeout = 250

map('n', '<leader>', ":WhichKey '<space>'<cr>", { noremap = true })

local find_group = {
  name = '+find',
  f    = 'files',
  b    = 'buffers',
}

local packages_group = {
  name = '+packages',
  i    = 'install',
  c    = 'clean',
  u    = 'update',
}

local git_group = {
  name = '+git',
  g    = 'status',
  p    = 'push',
}

local toggles_group = {
  name = '+toggles',
  w    = 'wrap',
}

local windows_group = {
  name  = '+windows',
  w     = 'zoom',
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
  f     = find_group,
  p     = packages_group,
  g     = git_group,
  t     = toggles_group,
  w     = windows_group,
}

which_key_register('<space>', which_key_map)
