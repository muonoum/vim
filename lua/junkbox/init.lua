local telescope = require('telescope')
local builtin = require('telescope.builtin')
local action_state = require('telescope.actions.state')
local actions = require('telescope.actions')

local mod = {}

-- start in normal
-- 'j/k' navigate
-- '-' dir up
-- preview 'ls -1' like
-- change cwd
-- sort dirs,files then by score

mod.file_browser = function()
  builtin.file_browser({
    defaults = {
      initial_mode = 'normal',
      mappings = {
        n = {
          ["<j>"] = actions.move_selection_previous,
          ["<k>"] = actions.move_selection_next,
        }
      },
    },
    -- attach_mappings = function(_, map)
    --   map('n', '-', actions.todo)
    --   return true
    -- end,
  })
end

return mod
