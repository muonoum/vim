return function()
  local hl = require'junkbox.util'.hl

  hl 'Normal' {guibg='none'}

  hl 'VertSplit' {guifg='#101010', guibg='#101010'}

  hl 'StatusLineNC' {guifg='#101010'}
  hl 'StatusLine' {guifg='#101010'}

  hl 'PMenu' {guibg='#222222'}
  hl 'PMenuSel' {guifg='#000000', guibg='#928374', gui='bold'}

  hl 'Todo' {guifg='#000000', guibg='#928374', gui='bold'}

  hl 'TabLineFill' {guifg='#444444', guibg='#000000', gui='none'}
  hl 'TabLine' {guifg='#666666', guibg='#222222', gui='none'}
  hl 'TabLineSel' {guifg='#000000', guibg='#928374', gui='bold'}

  hl 'TelescopeBorder' {guifg='#555555'}
  hl 'TelescopePromptBorder' {guifg='#555555'}
  hl 'TelescopeResultsBorder' {guifg='#555555'}
  hl 'TelescopePreviewBorder' {guifg='#555555'}
  hl 'TelescopePromptPrefix' {guifg='#555555'}
end
