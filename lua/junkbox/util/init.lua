local function lmap(mode, key, action, opts)
  vim.api.nvim_set_keymap(mode, '<leader>' .. key, action, opts or {})
end

local function ends_with(str, pattern)
  return str:sub(-string.len(pattern)) == pattern
end

local M = {}

M.otherbufdo = function(what)
  local bufs = vim.api.nvim_list_bufs()
  if #bufs == 0 then return end

  local active = vim.fn.winbufnr(vim.fn.winnr())
  local cmds = {}

  local first = (bufs[0] or bufs[1])
  if active ~= first then
    table.insert(cmds, string.format(
      '%d,%d-%s', first, active, what
    ))
  end

  if active ~= bufs[#bufs] then
    table.insert(cmds, string.format(
        '%d+,$%s', active, what
    ))
  end

  local cmd = table.concat(cmds, '|')
  print(cmd)
  vim.cmd(cmd)
end

M.exec = function(cmd)
  vim.api.nvim_exec(cmd, false)
end

M.source = function()
  local current_file = vim.fn.expand('%')

  if ends_with(current_file, ".lua") then
    vim.cmd('silent luafile ' .. current_file)
  else
    vim.cmd('silent source ' .. current_file)
  end

  print("sourced " .. current_file)
end

M.hl = function(group)
  local r = {'highlight', group}

  return function(props)
    for k, v in pairs(props) do
      table.insert(r, k..'='..v)
    end

    local cmd = table.concat(r, ' ')
    vim.cmd(cmd)
  end
end

M.lvmap = function(key, action, opts)
  lmap('v', key, action, opts)
end

M.lnmap = function(key, action, opts)
  lmap('n', key, action, opts)
end

return M
