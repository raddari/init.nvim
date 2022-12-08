local lsp_attach = require('lsp.attach')
local M = {}

-- TODO(raddari): refactor this into cmp config
M.capabilities = require('cmp_nvim_lsp').default_capabilities()

M.on_attach = function(client, bufnr)
  lsp_attach.keymaps(client, bufnr)
  lsp_attach.codelens(client, bufnr)
  lsp_attach.format_on_save(client, bufnr)
  lsp_attach.document_highlights(client, bufnr)
end

return M
