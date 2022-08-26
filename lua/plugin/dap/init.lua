return {
  'mfussenegger/nvim-dap',
  config = function()
    require('plugin.dap.config')
    require('plugin.dap.keymap')
  end,
  ft = {
    'rust',
    'toml',
  },
}
