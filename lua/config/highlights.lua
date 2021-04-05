return function()
  local hl = require'junkbox.util'.hl
  local c = require'config.palette'

  hl 'Normal' { guibg='none' }

  hl 'VertSplit' { guifg=c.gray1, guibg=c.gray1 }

  hl 'StatusLineNC' { guifg=c.gray1 }
  hl 'StatusLine' { guifg=c.gray1 }

  hl 'PMenu' { guibg=c.gray2 }
  hl 'PMenuSel' { guifg=c.black, guibg=c.brown, gui='bold' }

  hl 'Todo' { guifg=c.black, guibg=c.brown, gui='bold' }

  hl 'TabLineFill' { guifg=c.gray3, guibg=c.black, gui='none' }
  hl 'TabLine' { guifg=c.gray4, guibg=c.gray2, gui='none' }
  hl 'TabLineSel' { guifg=c.black, guibg=c.brown, gui='bold' }

  hl 'TelescopeBorder' { guifg=c.gray3 }
  hl 'TelescopePromptBorder' { guifg=c.gray3 }
  hl 'TelescopeResultsBorder' { guifg=c.gray3 }
  hl 'TelescopePreviewBorder' { guifg=c.gray3 }
  hl 'TelescopePromptPrefix' { guifg=c.gray3 }
end
