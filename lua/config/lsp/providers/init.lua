local lspconfig = require('lspconfig')
local default_config = require('config.lsp.providers.default')

local provider_mapping = {
  ['json-lsp'] = 'jsonls',
  ['lua-language-server'] = 'sumneko_lua',
}

require('mason-lspconfig').setup_handlers({
  function(server_name)
    local provider = provider_mapping[server_name] or server_name

    local config = (function()
      local ok, result = pcall(require, ('config.lsp.providers.%s'):format(provider))
      if not ok then
        return default_config
      end
      return result
    end)()

    config.on_attach = config.on_attach or default_config.on_attach
    config.capabilities = config.capabilities or default_config.capabilities
    lspconfig[provider].setup(config)
  end,

  ['clangd'] = function()
    require('clangd_extensions').setup(require('config.lsp.providers.clangd'))
  end,

  ['rust_analyzer'] = function()
    require('rust-tools').setup(require('config.lsp.providers.rust_analyzer'))
  end,
})
