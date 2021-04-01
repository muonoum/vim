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
}

local packages_group = {
  name = '+packages',
  s    = 'sync',
  c    = 'clean',
  -- i    = 'install',
  -- c    = 'clean',
  -- u    = 'update',
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

-- local source_group = {
--   name  = '+source',
--   l     = 'source-lua',
--   v     = 'source-vim',
-- }

local which_key_map = {
  ['-'] = 'explore',
  u     = 'undo-tree',
  c     = 'cd',
  T     = 'terminal',
  ['%'] = 'source',
  f     = find_group,
  p     = packages_group,
  g     = git_group,
  t     = toggles_group,
  w     = windows_group,
}

which_key_register('<space>', which_key_map)
