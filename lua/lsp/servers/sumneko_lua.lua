local config = { settings = {} }

config.before_init = require('neodev.lsp').before_init

config.settings.Lua = {
  diagnostics = {
    globals = { 'vim' },
  },
  format = {
    enable = false,
  },
  hint = {
    enable = true,
    setType = true,
  },
  runtime = {
    version = 'LuaJIT',
  },
  telemetery = {
    enable = false,
  },
  completion = {
    callSnippet = 'Replace',
  },
  workspace = {
    checkThirdParty = false,
  },
}

return config
