-- TODO: highlight groups
-- https://github.com/rcarriga/nvim-notify#configuration
local notify = require('notify')
local icons = require('theme.icons')

notify.setup({
  stages = 'fade',
  icons = {
    DEBUG = icons.debug,
    ERROR = icons.error,
    INFO = icons.info,
    TRACE = icons.trace,
    WARN = icons.warn,
  }
})

vim.notify = notify
