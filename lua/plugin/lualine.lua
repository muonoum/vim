local colors = require'config.palette'

local function mode_colors(a, b, c)
 return {
    a = { fg = colors.black, bg = a, gui = 'bold' },
    b = { fg = colors.gray3, bg = b or colors.black },
    c = { fg = colors.gray2, bg = c or colors.black },
  }
end

local theme = {
  normal = mode_colors(colors.normal),
  visual = mode_colors(colors.visual),
  insert = mode_colors(colors.insert),
  command = mode_colors(colors.command),
  replace = mode_colors(colors.replace),
  terminal = mode_colors(colors.terminal),
  inactive = mode_colors(
    colors.gray1, colors.gray1, colors.gray1
  ),
}

require 'lualine'.setup{
  -- tabline = {
  --   lualine_a = { 'buffers' },
  --   lualine_b = { };
  --   lualine_c = { },

  --   lualine_x = { 'filetype' },
  --   lualine_y = { 'progress' },
  --   lualine_z = { 'location' },
  -- },

  sections = {
    -- lualine_a = { 'mode' },
    -- lualine_b = { 'filename' };
    -- lualine_c = { 'branch' },
    lualine_a = { 'filename' },
    lualine_b = { 'branch' };
    lualine_c = { },

    -- lualine_x = { 'encoding', 'filetype' },
    lualine_x = { 'filetype' },
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
