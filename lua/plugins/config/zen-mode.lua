require('zen-mode').setup({
  window = {
    backdrop = 0.95,
  },
  plugins = {
    gitsigns = { enabled = true },
    tmux = { enabled = true },
  },
  on_open = function(_)
    local gs = require('gitsigns')
    local config = require('gitsigns.config').config

    local state = require('zen-mode.view').state
    state.current_line_blame = config.current_line_blame
    config.current_line_blame = false

    gs.refresh()
  end,
  on_close = function()
    local gs = require('gitsigns')
    local config = require('gitsigns.config').config

    local state = require('zen-mode.view').state
    config.current_line_blame = state.current_line_blame

    gs.refresh()
  end,
})

vim.keymap.set('n', '<Leader>Z', '<Cmd>ZenMode<CR>', { desc = 'Toggle Zen-Mode' })
