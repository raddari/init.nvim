local M = {}

M.config = function()
  require('kanagawa').setup({
    commentStyle = {},
    keywordStyle = {},
    dimInactive = false,
    globalStatus = true,
  })
end

return M
