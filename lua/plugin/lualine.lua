local colors = {
  black = '#000000',
  gold = '#f0d50c',
  green = '#57ba37',
  blue = '#5f87af',
  dark_blue = '#3e4b59',
  grey = '#3a3a3a',
  grey2 = '#1a1a1a',
  grey3 = '#101010',

  bg = '#928374',
  bg2 = '#504945',
  bg3 = '#3c3836',
}

local normal_colors = {
  a = { fg = colors.black, bg = colors.bg2, gui = 'bold' },
  b = { fg = colors.black, bg = colors.bg3 },
  c = { fg = colors.grey, bg = colors.black },
}
local inactive_colors = {
  a = { fg = colors.blue, bg = colors.grey2, gui = 'bold' },
  b = { fg = colors.dark_blue, bg = colors.grey2, gui = 'bold' },
  c = { fg = colors.grey, bg = colors.grey3 },
}

local theme = {
  normal = normal_colors;
  inactive = inactive_colors;
  visual = normal_colors;
  insert = normal_colors;
  command = normal_colors;
  replace = normal_colors;
}

require'lualine'.setup{
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'filename' };
    lualine_c = { 'branch' },

    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  };
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename', },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {},
  },
  options = {
    theme = theme,
    section_separators = '',
    component_separators = '',
    icons_enabled = false,
  },
}
