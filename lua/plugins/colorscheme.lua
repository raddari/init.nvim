local hl_overrides = function(colors_name, overrides)
  local group = vim.api.nvim_create_augroup('hl-overrides', {})
  vim.api.nvim_create_autocmd({ 'Colorscheme' }, {
    group = group,
    pattern = { colors_name },
    callback = function(_)
      for hl, override in pairs(overrides) do
        vim.api.nvim_set_hl(0, hl, override)
      end
    end,
  })
end

return {
  {
    'blazkowolf/gruber-darker.nvim',
    opts = {
      italic = {
        strings = false,
        comments = false,
        operators = false,
        folds = false,
      },
    },
    lazy = false,
    priority = 1000,
    config = function(_, opts)
      require('gruber-darker').setup(opts)

      local c = setmetatable({}, {
        __index = function(_, k)
          return require('gruber-darker.palette')[k]:to_string()
        end,
      })
      hl_overrides('gruber-darker', {
        Cursor = { bg = c['niagara-1'] },
      })
    end,
  },
}
