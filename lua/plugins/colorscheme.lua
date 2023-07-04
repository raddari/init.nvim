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
      require('util').hl_overrides('gruber-darker', {
        Cursor = { bg = c['niagara-1'] },
        ['@type.qualifier'] = { link = '@keyword' },
      })
    end,
  },
}
