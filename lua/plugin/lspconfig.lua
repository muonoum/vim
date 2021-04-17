local lspconfig = require 'lspconfig'

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
    signs = false,
    update_in_insert = false,
  }
)

lspconfig.elmls.setup{}
lspconfig.gopls.setup{}
lspconfig.elixirls.setup{}
