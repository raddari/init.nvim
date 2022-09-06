local M = {}

M.config = function()
  require('kanagawa').setup({
    commentStyle = { italic = false },
    keywordStyle = { italic = false },
    dimInactive = true,
    globalStatus = true,
  })
end

M.colors = function()
  local theme = require('kanagawa.colors').setup()
  return {
    white = theme.fujiWhite,
    bg = theme.sumiInk0,
    bg_highlight = theme.sumiInk2,
    normal = theme.sumiInk4,
    insert = theme.waveBlue2,
    command = theme.boatYellow2,
    visual = theme.dragonBlue,
    replace = theme.autumnRed,
    diffAdd = theme.autumnGreen,
    diffModified = theme.autumnYellow,
    diffDeleted = theme.autumnRed,
    trace = theme.surimiOrange,
    hint = theme.dragonBlue,
    info = theme.waveAqua1,
    error = theme.samuraiRed,
    warn = theme.roninYellow,
    floatBorder = theme.sumiInk4,
    selection_caret = theme.oniViolet,
  }
end

return M
