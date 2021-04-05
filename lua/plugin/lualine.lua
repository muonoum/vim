local colors = require'config.palette'

local function mode_colors(a, b, c)
 return {
    a = { fg = colors.black, bg = a, gui = 'bold' },
    b = { fg = colors.gray3, bg = b or colors.black },
    c = { fg = colors.gray2, bg = c or colors.black },
  }
end

local theme = {
  normal = mode_colors(colors.brown),
  visual = mode_colors(colors.yellow),
  insert = mode_colors(colors.blue),
  command = mode_colors(colors.purple),
  replace = mode_colors(colors.red),
  terminal = mode_colors(colors.aqua),
  inactive = mode_colors(
    colors.gray1, colors.gray1, colors.gray1
  ),
}

require 'lualine'.setup{
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'filename' };
    lualine_c = { 'branch' },

    lualine_x = { 'encoding', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename', },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {},
  },
  options = {
    theme = theme, -- 'gruvbox',
    section_separators = '',
    component_separators = '',
    icons_enabled = false,
  },
}
