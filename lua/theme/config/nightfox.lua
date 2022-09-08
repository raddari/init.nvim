local M = {}

M.config = function()
  require('nightfox').setup({
    options = {
      dim_inactive = false,
      modules = {
        coc = { enable = false },
      },
    },
  })
end

return M
