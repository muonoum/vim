return function()
  local util = require'junkbox.util'

  util.hl 'Normal' {guibg='none'}

  util.hl 'VertSplit' {guifg='#101010', guibg='#101010'}

  util.hl 'StatusLineNC' {guifg='#101010'}
  util.hl 'StatusLine' {guifg='#101010'}

  util.hl 'PMenu' {guibg='#222222'}
  util.hl 'PMenuSel' {guifg='#000000', guibg='#928374', gui='bold'}

  util.hl 'Todo' {guifg='#000000', guibg='#928374', gui='bold'}

  util.hl 'TabLineFill' {guifg='#444444', guibg='#000000', gui='none'}
  util.hl 'TabLine' {guifg='#666666', guibg='#222222', gui='none'}
  util.hl 'TabLineSel' {guifg='#000000', guibg='#928374', gui='bold'}

  util.hl 'TelescopeBorder' {guifg='#555555'}
  util.hl 'TelescopePromptBorder' {guifg='#555555'}
  util.hl 'TelescopeResultsBorder' {guifg='#555555'}
  util.hl 'TelescopePreviewBorder' {guifg='#555555'}
  util.hl 'TelescopePromptPrefix' {guifg='#555555'}
end
