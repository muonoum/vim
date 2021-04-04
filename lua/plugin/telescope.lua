local telescope = require('telescope')
local action_state = require('telescope.actions.state')
local actions = require('telescope.actions')

telescope.setup {
  defaults = {
    preview_cutoff = 80,
    prompt_prefix = '  ',
    selection_caret = '  ',
  }
}

vim.api.nvim_exec([[
  highlight TelescopeBorder        guifg=#555555
  highlight TelescopePromptBorder  guifg=#555555
  highlight TelescopeResultsBorder guifg=#555555
  highlight TelescopePreviewBorder guifg=#555555
  highlight TelescopePromptPrefix  guifg=#555555
]], false)

_G.git_files_or_find_files = function()
  local opts = {}
  local ok = pcall(require'telescope.builtin'.git_files, opts)
  if not ok then
    require'telescope.builtin'.find_files(opts)
  end
end
