local colors = {
  -- color2   = '#0f1419',
  color2   = '#000000',
  color3   = '#ffee99',
  color4   = '#e6e1cf',
  color5   = '#14191f',
  color13  = '#b8cc52',
  color10  = '#36a3d9',
  color8   = '#f07178',
  color9   = '#3e4b59',
}

local ayu_darker = {
  visual = {
    -- a = {fg = colors.color2, bg = colors.color3, 'bold'},
    a = {fg = colors.color2, bg = colors.color3},
    b = {fg = colors.color4, bg = colors.color5},
    c = {fg = colors.color4, bg = colors.color2},
  },
  replace = {
    -- a = {fg = colors.color2, bg = colors.color8, 'bold'},
    a = {fg = colors.color2, bg = colors.color8},
    b = {fg = colors.color4, bg = colors.color5},
    c = {fg = colors.color4, bg = colors.color2},
  },
  inactive = {
    -- a = {fg = colors.color4, bg = colors.color5, 'bold'},
    a = {fg = colors.color4, bg = colors.color5},
    b = {fg = colors.color4, bg = colors.color5},
    c = {fg = colors.color5, bg = colors.color2},
  },
  normal = {
    -- a = {fg = colors.color2, bg = colors.color10, 'bold'},
    a = {fg = colors.color2, bg = colors.color10},
    b = {fg = colors.color4, bg = colors.color5},
    c = {fg = colors.color9, bg = colors.color2},
  },
  insert = {
    a = {fg = colors.color2, bg = colors.color13, 'bold'},
    b = {fg = colors.color4, bg = colors.color5},
    c = {fg = colors.color4, bg = colors.color2},
  }
}


require'lualine'.setup{
  options = {
    theme = ayu_darker;
    section_separators = {'', ''};
    component_separators = {'', ''};
    icons_enabled = false;
  };
  extensions = {
    'fzf';
  }
}

-- lightline simpleblack
-- https://github.com/itchyny/lightline.vim/blob/master/colorscheme.md#simpleblack

-- let s:black = [ '#000000', '0' ]
-- let s:black2 = [ '#121212', '233' ]

-- let s:gray = [ '#262626', '235' ]
-- let s:gray2 = [ '#3a3a3a', '237' ]
-- let s:gray3 = [ '#4e4e4e', '239' ]
-- let s:gray4 = [ '#626262', '241' ]

-- let s:violet = [ '#cf73e6', '170' ]

-- let s:blue = [ '#5f87af', '67' ]
-- let s:blue2 = [ '#91aadf', '110' ]

-- let s:green = [ '#57ba37', '71' ]
-- let s:gold = [ '#f0d50c', '220' ]
-- let s:red = [ '#d70000', '160' ]
-- let s:none = [ 'NONE', 'NONE' ]


-- let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
-- let s:p.normal.left = [ [ s:black, s:blue ], [ s:gray4, s:black2 ] ]
-- let s:p.normal.right = [ [ s:gray, s:gray4 ], [ s:gray3, s:gray ], [ s:gray2, s:black2 ] ]
-- let s:p.inactive.right = [ [ s:black, s:black2 ], [ s:gray, s:black ] ]
-- let s:p.inactive.left =  [ [ s:gray, s:black ], [ s:black2, s:black ] ]
-- let s:p.insert.left = [ [ s:black, s:green ], [ s:gray4, s:black2 ] ]
-- let s:p.replace.left = [ [ s:black, s:red ], [ s:gray4, s:black2 ] ]
-- let s:p.visual.left = [ [ s:black, s:violet ], [ s:gray4, s:black2 ] ]
-- let s:p.normal.middle = [ [ s:gray, s:black ] ]
-- let s:p.inactive.middle = [ [ s:black2, s:black ] ]
-- let s:p.tabline.left = [ [ s:gray4, s:black ] ]
-- let s:p.tabline.tabsel = [ [ s:blue, s:black ] ]
-- let s:p.tabline.middle = [ [ s:black2, s:black ] ]
-- let s:p.tabline.right = copy(s:p.normal.right)
-- let s:p.normal.error = [ [ s:red, s:black ] ]
-- let s:p.normal.warning = [ [ s:gold, s:black2 ] ]
