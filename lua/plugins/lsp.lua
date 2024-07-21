local M = {}

M.setup = function()
  require('lazydev').setup()
  require('mason').setup()
  require('mason-null-ls').setup({
    automatic_installation = true,
    handlers = {},
  })
  local mason_lsp = require('mason-lspconfig')
  mason_lsp.setup()

  local default_config = require('config.lsp.default')
  local servers = {
    'asm_lsp',
    'clangd',
    'glsl_analyzer',
    'zls',
    unpack(mason_lsp.get_installed_servers()),
  }

  for _, name in ipairs(servers) do
    local ok, config = pcall(require, ('config.lsp.servers.%s'):format(name))
    config = ok and config or {}
    require('lspconfig')[name].setup(default_config.with(config))
  end

  require('null-ls').setup(default_config)
end

return M
