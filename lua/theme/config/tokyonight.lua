local M = {}

M.config = function()
  local g = vim.g
  g.tokyonight_italic_comments = false
  g.tokyonight_italic_keywords = false
end

M.colors = function()
  local theme = require('tokyonight.colors').setup()
  return {
    white = theme.fg_dark,
    bg = theme.bg,
    bg_highlight = theme.bg_highlight,
    normal = theme.blue,
    insert = theme.teal,
    command = theme.orange,
    visual = theme.magenta,
    replace = theme.red,
    diffAdd = theme.git.add,
    diffModified = theme.git.change,
    diffDeleted = theme.git.delete,
    trace = theme.orange,
    hint = theme.teal,
    info = theme.green2,
    error = theme.magenta2,
    warn = theme.orange,
    floatBorder = theme.border_highlight,
    selection_caret = theme.purple,
  }
end

return M
