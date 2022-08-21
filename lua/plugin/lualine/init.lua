return {
  'hoob3rt/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  config = function()
    require('plugin.lualine.config')
  end,
}
