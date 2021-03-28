vim.g.lightline = {
    colorscheme = 'ayu_dark',
    component_function = {
      git = 'FugitiveHead',
    },
    active = {
      left = {
        {'mode', 'paste'},
        {'readonly', 'filename', 'modified'},
        },
      right = {
        {'lineinfo'},
        {'percent'},
        {'git', 'fileencoding', 'filetype'},
      },
  },
}
