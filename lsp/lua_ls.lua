return {
  on_attach = require('config.lsp.default').on_attach,
  settings = {
    Lua = {
      completion = {
        callSnippet = 'Replace',
      },
      format = {
        enable = false,
      },
    },
  },
}
