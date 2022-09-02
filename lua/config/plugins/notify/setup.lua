-- TODO(raddari): highlight groups
-- https://github.com/rcarriga/nvim-notify#configuration
local notify = require('notify')
local icons = require('config.theme.icons')

notify.setup({
  icons = {
    DEBUG = icons.debug,
    ERROR = icons.error,
    INFO = icons.info,
    TRACE = icons.trace,
    WARN = icons.warn,
  }
})

vim.notify = notify
