local M = {}

-- TODO(raddari): refactor this into cmp config
M.capabilities = vim.tbl_deep_extend(
  'force',
  vim.lsp.protocol.make_client_capabilities(),
  require('cmp_nvim_lsp').default_capabilities()
)

M.on_attach = function(client, bufnr)
  local lsp_attach = require('config.lsp.attach')
  lsp_attach.codelens(client, bufnr)
  lsp_attach.format_on_save(client, bufnr)
  lsp_attach.document_highlights(client, bufnr)
end

M.with = function(config)
  local combined = { capabilities = M.capabilities, on_attach = M.on_attach }
  return vim.tbl_deep_extend('force', combined, config)
end

return M
