local config = require('config.settings.user')

require('mason').setup({
  ui = {
    border = config.border,
    icons = {
      package_installed = '✔',
      package_pending = '❕',
      package_uninstalled = '❌',
    },
  },
})
