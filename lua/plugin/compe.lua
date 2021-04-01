vim.o.completeopt = "menuone,noselect"

require"compe".setup {
  min_length = 3;
  preselect = "disable";
  documentation = false;
  source = {
    nvim_lsp = true;
    path = true;
    buffer = true;
  };
}
