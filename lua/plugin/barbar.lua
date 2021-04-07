local hi = require'junkbox.util'.hi
local color = require'config.palette'

vim.g.bufferline = {
  clickable = false,
  closable = false,
  icons = false,
  -- icon_separator_active = '',
  -- icon_separator_inactive = '',
}

hi 'BufferCurrent' {
  guifg=color.black, guibg=color.accent, gui='bold',
}
hi 'BufferCurrentIndex' {
  guifg=color.black, guibg=color.accent, gui='bold',
}
hi 'BufferCurrentSign' {
  guifg=color.black, guibg=color.accent, gui='bold',
}
hi 'BufferCurrentMod' {
  guifg=color.black, guibg=color.accent, gui='bold',
}
hi 'BufferCurrentTarget' {
  guifg=color.white, guibg=color.black, gui='bold',
}

hi 'BufferVisible' {
  guifg=color.gray4, guibg=color.gray2, gui='none',
}
hi 'BufferVisibleIndex' {
  guifg=color.gray4, guibg=color.gray2, gui='none',
}
hi 'BufferVisibleSign' {
  guifg=color.gray4, guibg=color.gray2, gui='none',
}
hi 'BufferVisibleMod' {
  guifg=color.gray4, guibg=color.gray2, gui='none',
}
hi 'BufferVisibleTarget' {
  guifg=color.white, guibg=color.black, gui='bold',
}

hi 'BufferInactive' {
  guifg=color.gray3, guibg=color.gray1, gui='none',
}
hi 'BufferInactiveIndex' {
  guifg=color.gray3, guibg=color.gray1, gui='none',
}
hi 'BufferInactiveSign' {
  guifg=color.gray3, guibg=color.gray1, gui='none',
}
hi 'BufferInactiveMod' {
  guifg=color.gray3, guibg=color.gray1, gui='none',
}
hi 'BufferInactiveTarget' {
  guifg=color.white, guibg=color.black, gui='bold',
}
