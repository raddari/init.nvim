local icons = require('theme.icons')

vim.diagnostic.config({
  signs = true,
  severity_sort = true,
})

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = 'none' })
vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signatureHelp, { border = 'none' })

for _, sign in ipairs({
  { 'DiagnosticSignError', icons.error },
  { 'DiagnosticSignWarn', icons.warn },
  { 'DiagnosticSignHint', icons.hint },
  { 'DiagnosticSignInfo', icons.info },
}) do
  local name = sign[1]
  local icon = sign[2]
  vim.fn.sign_define(name, { texthl = name, text = icon, numhl = '' })
end
