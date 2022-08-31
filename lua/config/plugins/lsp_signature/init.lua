return {
  'ray-x/lsp_signature.nvim',
  config = function()
    require('config.plugins.lsp_signature.setup')
  end,
  event = 'BufWinEnter',
}
