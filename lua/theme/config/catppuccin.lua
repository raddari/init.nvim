local M = {}

M.config = function()
  vim.g.catppuccin_flavour = 'mocha'

  local colors = require('catppuccin.palettes').get_palette()

  require('catppuccin').setup({
    dim_inactive = { enabled = false },
    styles = {
      comments = {},
      conditionals = {},
    },
    integrations = {
      treesitter = true,
      treesitter_context = true,
      which_key = true,
      dap = {
        enabled = true,
        enabled_gui = true,
      },
      native_lsp = {
        enabled = true,
        virtual_text = {
          errors = {},
          hints = {},
          warnings = {},
          information = {},
        },
      },
    },
    custom_highlights = {
      ['@namespace'] = { fg = colors.yellow, style = {} },
      ['@parameter'] = { fg = colors.maroon, style = {} },
      ['@tag.attribute'] = { fg = colors.teal, style = {} },
      ['@text.literal'] = { fg = colors.teal, style = {} },
      ['@text.uri'] = { fg = colors.rosewater, style = { 'underline' } },
      ['@type.builtin'] = { fg = colors.yellow, style = {} },
    },
  })
end

return M
