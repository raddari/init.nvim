local M = {}

M.config = function()
  require('kanagawa').setup({
    commentStyle = {},
    keywordStyle = {},
    dimInactive = true,
    globalStatus = true,
  })
end

return M
