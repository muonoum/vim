local M = {}

M.map = function(mode, key, arg, opts)
  if type(arg) == 'string' then
    vim.api.nvim_set_keymap(mode, key, arg, opts or {})
  elseif type(arg) == 'function' then
    M.mapfn(mode, key, arg, opts or {})
  end
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

M.func_map = {}

M.mapfn = function(mode, key, func, opts)
  local name = 'func_' .. #M.func_map
  local cmd = string.format(
    ":lua require'junkbox.key'.func_map['%s']()<cr>", name
  )

  M.func_map[name] = func
  vim.api.nvim_set_keymap(mode, key, cmd, opts or {})
end

return M
