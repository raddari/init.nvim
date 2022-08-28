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
    white = colors.fujiWhite,
    bg = colors.sumiInk0,
    bg_highlight = colors.sumiInk2,
    normal = colors.sumiInk4,
    insert = colors.waveBlue2,
    command = colors.boatYellow2,
    visual = colors.dragonBlue,
    replace = colors.autumnRed,
    diffAdd = colors.autumnGreen,
    diffModified = colors.autumnYellow,
    diffDeleted = colors.autumnRed,
    trace = colors.surimiOrange,
    hint = colors.dragonBlue,
    info = colors.waveAqua1,
    error = colors.samuraiRed,
    warn = colors.roninYellow,
    floatBorder = colors.sumiInk4,
    selection_caret = colors.oniViolet,
  }
end

return M
