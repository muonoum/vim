local M = {}

M.map = function(mode, key, arg, opts)
  local opts = opts or {}
  -- opts.noremap = true

  if type(arg) == 'string' then
    vim.api.nvim_set_keymap(mode, key, arg, opts)
  elseif type(arg) == 'function' then
    M.mapfn(mode, key, arg, opts)
  end
end

M.func_map = {}

M.mapfn = function(mode, key, func, opts)
  local opts = opts or {}

  local name = 'func_' .. #M.func_map
  local cmd = string.format(
    ":lua require'junkbox.key'.func_map['%s']()<cr>", name
  )

  M.func_map[name] = func
  vim.api.nvim_set_keymap(mode, key, cmd, opts)
end

M.lmap = function(mode, key, arg, opts)
  M.map(mode, '<leader>' .. key, arg, opts)
end

M.lnmap = function(key, arg, opts)
  M.lmap('n', key, arg, opts)
end

M.lvmap = function(key, arg, opts)
  M.lmap('v', key, arg, opts)
end

return M
