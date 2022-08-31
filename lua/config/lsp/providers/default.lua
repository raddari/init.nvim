local M = {}

M.on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  require('config.lsp.keymap').init(client, bufnr)
end

return M
