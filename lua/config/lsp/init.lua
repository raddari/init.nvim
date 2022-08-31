require('config.lsp.providers')

local lsp = vim.lsp

lsp.handlers['textDocument/hover'] = lsp.with(lsp.handlers.hover, {
  border = 'none',
})

lsp.handlers['textDocument/signatureHelp'] = lsp.with(lsp.handlers.signature_help, {
  border = 'none',
})
