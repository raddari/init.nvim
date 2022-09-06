local M = {}

M.config = function()
  local g = vim.g

  g.gruvbox_material_background = 'medium'
  g.gruvbox_material_foreground = 'default'
  g.gruvbox_material_disable_italic_comment = 1
  g.gruvbox_material_transparent_background = 0
  g.gruvbox_material_sign_column_background = 'grey'
  g.gruvbox_material_ui_contrast = 'high'
  g.everforest_diagnostic_virtual_text = 'colored'
end

return M
