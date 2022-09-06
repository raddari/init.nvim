local M = {}

M.config = function()
  local g = vim.g

  g.everforest_background = 'medium'
  g.everforest_disable_italic_comment = 1
  g.everforest_transparent_background = 0
  g.everforest_sign_column_background = 'grey'
  g.everforest_ui_contrast = 'high'
  g.everforest_diagnostic_virtual_text = 'colored'
end

return M
