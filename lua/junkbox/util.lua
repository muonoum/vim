local mod = {}

local function ends_with(str, pattern)
  return str:sub(-string.len(pattern)) == pattern
end

mod.otherbufdo = function(what)
  local bufs = vim.api.nvim_list_bufs()
  local active = vim.fn.winbufnr(vim.fn.winnr())

  for i=1,#bufs do
    if bufs[i] ~= active then
      local cmd = string.format('%dbufdo %s', bufs[i], what)
      print(cmd)
      vim.cmd(cmd)
    end
  end
end

mod.source = function()
  local current_file = vim.fn.expand('%')

  if ends_with(current_file, ".lua") then
    vim.cmd('silent luafile ' .. current_file)
  else
    vim.cmd('silent source ' .. current_file)
  end

  print("sourced " .. current_file)
end

mod.lnmap = function(key, action, opts)
  vim.api.nvim_set_keymap('n', '<leader>' .. key, action, opts or {})
end

return mod
