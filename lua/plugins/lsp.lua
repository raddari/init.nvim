local M = {}

M.setup = function()
  require('lazydev').setup()
  require('mason').setup()
  local mason_lsp = require('mason-lspconfig')
  mason_lsp.setup()

  local default_config = require('config.lsp.default')
  local servers = {
    'asm_lsp',
    'clangd',
    'glsl_analyzer',
    unpack(mason_lsp.get_installed_servers()),
  }

  for _, name in ipairs(servers) do
    if name == 'lua_ls' then
      goto continue
    end
    local ok, config = pcall(require, ('config.lsp.servers.%s'):format(name))
    config = ok and config or {}
    require('lspconfig')[name].setup(default_config.with(config))
    ::continue::
  end
end

return M
