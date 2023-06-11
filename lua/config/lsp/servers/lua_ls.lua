local config = {}

config.before_init = require('neodev.lsp').before_init

config.settings = {
  Lua = {
    completion = {
      callSnippet = 'Replace',
    },
    format = {
      enable = false,
    },
  },
}

return config
