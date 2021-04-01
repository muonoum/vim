local colors = {
  black = '#000000',
  gray1 = '#444444',
  gray2 = '#252525',
  gray3 = '#101010',
  brown = '#928374',
  blue = '#83a598',
  red = '#fb4934',
  yellow = '#d79921',
  purple = '#b16286',
  blue2 = '#5f87af',
  dark_blue = '#3e4b59',
}

local function mode_colors(a, b, c)
 return {
    a = { fg = colors.black, bg = a, gui = 'bold' },
    b = { fg = colors.gray1, bg = b or colors.black },
    c = { fg = colors.gray2, bg = c or colors.black },
  }
end

local theme = {
  normal = mode_colors(colors.brown),
  visual = mode_colors(colors.yellow),
  insert = mode_colors(colors.blue),
  command = mode_colors(colors.purple),
  replace = mode_colors(colors.red),
  -- terminal =
  inactive = mode_colors(
    colors.gray3, colors.gray3, colors.gray3
  ),
}

require 'lualine'.setup{
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'filename' };
    lualine_c = { 'branch' },

    lualine_x = { 'encoding', 'fileformat', 'filetype' },
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
