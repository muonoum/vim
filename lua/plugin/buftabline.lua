local key = require('junkbox.key')
local map = function(op, index, prefix)
  key.lnmap(
    string.format('%s%d', prefix or '', index),
    string.format(":lua require('buftabline').%s(%d)<cr>", op, index)
  )
end

for i=1,9 do
  map('go_to_buffer', i)
  map('kill_buffer', i, 'k')
  map('custom_command', i, 'v')
end

require("buftabline").setup{
  index_format = '%d-',
  custom_command = 'vertical sb',
  go_to_maps = false,
  kill_maps = false,
  highlight_hidden = true,
  hlgroup_current = 'TabLineSel',
  hlgroup_normal = 'TabLine',
  hlgroup_hidden = 'TabLineFill',
  show_flags = false,
}
