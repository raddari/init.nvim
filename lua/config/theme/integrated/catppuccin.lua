local M = {}

M.config = function()
  require('catppuccin').setup({
    dim_inactive = { enabled = true },
    term_colors = true,
    styles = {
      comments = {},
      conditionals = {},
    },
    integrations = {
      dap = {
        enabled = true,
        enabled_gui = true,
      },
      which_key = true,
    },
  })
end

M.colors = function()
  local theme = require('catppuccin.palettes').get_palette()
  return {
    white = theme.white,
    bg = theme.gray2,
    bg_highlight = theme.black4,
    normal = theme.maroon,
    insert = theme.pink,
    command = theme.red,
    visual = theme.yellow,
    replace = theme.flamingo,
    diffAdd = theme.blue,
    diffModified = theme.teal,
    diffDeleted = theme.red,
    trace = theme.red,
    hint = theme.white,
    info = theme.teal,
    error = theme.flamingo,
    warn = theme.red,
    floatBorder = theme.black4,
    selection_caret = theme.maroon,
  }
end

return M
