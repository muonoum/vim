local util = require('junkbox.util')

util.lnmap('1', [[:lua require('buftabline').go_to_buffer(1)<cr>]])
util.lnmap('2', [[:lua require('buftabline').go_to_buffer(2)<cr>]])
util.lnmap('3', [[:lua require('buftabline').go_to_buffer(3)<cr>]])
util.lnmap('4', [[:lua require('buftabline').go_to_buffer(4)<cr>]])
util.lnmap('5', [[:lua require('buftabline').go_to_buffer(5)<cr>]])
util.lnmap('6', [[:lua require('buftabline').go_to_buffer(6)<cr>]])
util.lnmap('7', [[:lua require('buftabline').go_to_buffer(7)<cr>]])
util.lnmap('8', [[:lua require('buftabline').go_to_buffer(8)<cr>]])
util.lnmap('9', [[:lua require('buftabline').go_to_buffer(9)<cr>]])

util.lnmap('k1', [[:lua require('buftabline').kill_buffer(1)<cr>]])
util.lnmap('k2', [[:lua require('buftabline').kill_buffer(2)<cr>]])
util.lnmap('k3', [[:lua require('buftabline').kill_buffer(3)<cr>]])
util.lnmap('k4', [[:lua require('buftabline').kill_buffer(4)<cr>]])
util.lnmap('k5', [[:lua require('buftabline').kill_buffer(5)<cr>]])
util.lnmap('k6', [[:lua require('buftabline').kill_buffer(6)<cr>]])
util.lnmap('k7', [[:lua require('buftabline').kill_buffer(7)<cr>]])
util.lnmap('k8', [[:lua require('buftabline').kill_buffer(8)<cr>]])
util.lnmap('k9', [[:lua require('buftabline').kill_buffer(9)<cr>]])

util.lnmap('v1', [[:lua require('buftabline').custom_command(1)<cr>]])
util.lnmap('v2', [[:lua require('buftabline').custom_command(2)<cr>]])
util.lnmap('v3', [[:lua require('buftabline').custom_command(3)<cr>]])
util.lnmap('v4', [[:lua require('buftabline').custom_command(4)<cr>]])
util.lnmap('v5', [[:lua require('buftabline').custom_command(5)<cr>]])
util.lnmap('v6', [[:lua require('buftabline').custom_command(6)<cr>]])
util.lnmap('v7', [[:lua require('buftabline').custom_command(7)<cr>]])
util.lnmap('v8', [[:lua require('buftabline').custom_command(8)<cr>]])
util.lnmap('v9', [[:lua require('buftabline').custom_command(9)<cr>]])

require("buftabline").setup{
  index_format = '%d-',
  custom_command = 'vertical sb',
  go_to_maps = false,
  kill_maps = false,
  highlight_hidden = true,
  hlgroup_current = 'TabLineSel',
  hlgroup_normal = 'TabLine',
  hlgroup_hidden = 'TabLineFill',
}
