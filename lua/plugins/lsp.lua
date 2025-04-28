local M = {}

M.setup = function()
  require('lazydev').setup()
  require('mason').setup()
  require('mason-lspconfig').setup()
end

return M
