local M = {}

M.config = function()
  vim.g.catppuccin_flavour = 'mocha'

  require('catppuccin').setup({
    dim_inactive = { enabled = false },
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
