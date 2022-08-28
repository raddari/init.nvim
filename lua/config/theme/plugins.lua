local M = {}

M.supported_themes = {
  'catppuccin',
  'kanagawa',
  'tokyonight',
}

M.init = function(theme)
  return {
    {
      'catppuccin/nvim',
      as = 'catppuccin',
      config = function()
        require('config.theme.integrated.catppuccin').config()
        vim.cmd('colorscheme catppuccin')
      end,
      disable = theme ~= 'catppuccin',
    },
    {
      'rebelot/kanagawa.nvim',
      as = 'kanagawa',
      config = function()
        require('config.theme.integrated.kanagawa').config()
        vim.cmd('colorscheme kanagawa')
      end,
      disable = theme ~= 'kanagawa',
    },
    {
      'folke/tokyonight.nvim',
      as = 'tokyonight',
      config = function()
        require('config.theme.integrated.tokyonight').config()
        vim.cmd('colorscheme tokyonight')
      end,
      disable = theme ~= 'tokyonight',
    }
  }
end

return M
