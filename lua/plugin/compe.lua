vim.o.completeopt = "menuone,noselect"

require"compe".setup {
  min_length = 2;
  preselect = "disable";
  documentation = false;
  source = {
    nvim_lsp = true;
    -- buffer = true;
  };
}
