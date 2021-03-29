vim.o.completeopt = "menuone,noselect"

vim.api.nvim_set_keymap(
  'i', '<C-Space>', 'compe#complete()',
  {silent = true; expr = true; noremap = true}
)

require"compe".setup {
  min_length = 2;
  preselect = "disable";
  documentation = false;
  source = {
    nvim_lsp = true;
    buffer = true;
  };
}
