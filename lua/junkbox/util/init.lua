local function ends_with(str, pattern)
  return str:sub(-string.len(pattern)) == pattern
end

local function exec(cmd)
  vim.api.nvim_exec(cmd, false)
end

local function source()
  local current_file = vim.fn.expand('%')

  if ends_with(current_file, ".lua") then
    vim.cmd('silent luafile ' .. current_file)
  else
    vim.cmd('silent source ' .. current_file)
  end

  print("sourced " .. current_file)
end

local function lmap(mode, key, action, opts)
  vim.api.nvim_set_keymap(mode, '<leader>' .. key, action, opts or {})
end

local function lvmap(key, action, opts)
  lmap('v', key, action, opts)
end

local function lnmap(key, action, opts)
  lmap('n', key, action, opts)
end

return {
  exec = exec,
  source = source,
  lnmap = lnmap,
  lvmap = lvmap,
}
