local which_key_register = vim.fn['which_key#register']
local map = vim.api.nvim_set_keymap

vim.g.which_key_use_floating_win = 0
vim.g.which_key_timeout = 250

map('n', '<leader>', ":WhichKey '<space>'<cr>", { noremap = true })

vim.api.nvim_exec(
[[
	autocmd! FileType which_key
	autocmd  FileType which_key set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 showmode ruler
]], false)

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
}

local process_group = {
	name = '+process',
	j    = 'jq',
	b    = 'base64-decode',
}

local which_key_map = {
	['-'] = 'explore',
	D     = 'delete-buffer',
	g     = 'git',
	u     = 'undo-tree',
	c     = 'cd',
	T     = 'terminal',
	f     = find_group,
	p     = packages_group,
	t     = toggles_group,
	w     = windows_group,
	x     = process_group,
}

which_key_register('<space>', which_key_map)

