local telescope = require('telescope')
local action_state = require('telescope.actions.state')
local actions = require('telescope.actions')

-- file browser:
-- preview: ls -1 style
-- actions:
--   dir up (-)
--   new file (%)
--   new directory (d)
--   set pwd -- current dir
--   set pwd -- selected dir
--   rename/copy/delete?

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    },
    preview_cutoff = 80,
    prompt_prefix = '  ',
    selection_caret = '  ',
  }
}

-- local project_files = function()
--   local opts = {}
--   local ok = pcall(require'telescope.builtin'.git_files, opts)
--   if not ok then
--     require'telescope.builtin'.find_files(opts)
--   end
-- end

-- local file_browser = require('telescope.builtin').file_browser

-- if entry().value != '..' then value else entry().cwd

-- file_browser{
--   attach_mappings = function(prompt_bufnr, map)
--     map('i', '<C-x>', function()
--       local dir = action_state.get_selected_entry().cwd
--       print(vim.inspect(dir))
--       vim.fn.execute('lcd ' .. dir)
--       -- actions.close(prompt_bufnr)
--     end)
--     return true
--   end
-- }
