local M = {}

M.config = function()
  require('tokyonight').setup({
    styles = {
      comments = 'NONE',
      keywords = 'NONE',
    },
    dim_inactive = false,
    lualine_bold = true,
  })
end

return M
