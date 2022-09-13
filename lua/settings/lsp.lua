local icons = require('theme.icons')

vim.diagnostic.config({
  signs = true,
  severity_sort = true,
})

local signs = {
  Error = icons.error,
  Warn = icons.warn,
  Hint = icons.hint,
  Info = icons.info,
}

for type, icon in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
end

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = icons.border })
vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signatureHelp, { border = icons.border })
vim.lsp.handlers['window/showMessage'] = function(_, result, ctx)
  local client = vim.lsp.get_client_by_id(ctx.client_id)
  local severity = {
    'error',
    'warn',
    'info',
    'debug',
  }
  vim.notify(result.message, severity[result.type], { title = client.name })
end
