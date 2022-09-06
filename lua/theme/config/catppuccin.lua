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

return M
