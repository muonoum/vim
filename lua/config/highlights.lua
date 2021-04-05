return function()
  local c = require'config.palette'
  local hi = require'junkbox.util'.hi

  hi 'Normal' { guibg='none' }
  hi 'VertSplit' { guifg=c.gray1, guibg=c.gray1 }
  hi 'StatusLineNC' { guifg=c.gray1 }
  hi 'StatusLine' { guifg=c.gray1 }
  hi 'PMenu' { guibg=c.gray2 }
  hi 'PMenuSel' { guifg=c.black, guibg=c.brown, gui='bold' }
  hi 'Todo' { guifg=c.black, guibg=c.brown, gui='bold' }
  hi 'TabLineFill' { guifg=c.gray3, guibg=c.black, gui='none' }
  hi 'TabLine' { guifg=c.gray4, guibg=c.gray2, gui='none' }
  hi 'TabLineSel' { guifg=c.black, guibg=c.brown, gui='bold' }
  hi 'TelescopeBorder' { guifg=c.gray2 }
  hi 'TelescopePromptBorder' { guifg=c.gray2 }
  hi 'TelescopeResultsBorder' { guifg=c.gray2 }
  hi 'TelescopePreviewBorder' { guifg=c.gray2 }
  hi 'TelescopePromptPrefix' { guifg=c.gray2 }
end
