local mason = {
  'williamboman/mason.nvim',
  config = function()
    require('plugin.mason.config.mason')
  end,
}

local mason_lspconfig = {
  'williamboman/mason-lspconfig.nvim',
  after = 'mason.nvim',
  config = function()
    require('plugin.mason.config.mason-lspconfig')
  end,
}

return { mason, mason_lspconfig }
