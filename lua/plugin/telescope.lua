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

_G.git_files_or_find_files = function()
  local opts = {}
  local ok = pcall(require'telescope.builtin'.git_files, opts)
  if not ok then
    require'telescope.builtin'.find_files(opts)
  end
end
