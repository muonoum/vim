local mod = {}

local function ends_with(str, pattern)
  return str:sub(-string.len(pattern)) == pattern
end

mod.source_current_file = function()
  local current_file = vim.fn.expand('%')
  print("source " .. current_file)

  if ends_with(current_file, ".lua") then
    vim.cmd('silent luafile ' .. current_file)
  else
    vim.cmd('silent source ' .. current_file)
  end
end

return mod
