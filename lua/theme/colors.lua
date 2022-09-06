local M = {}

M.init = function(theme)
  local config_path = ('theme.config.%s'):format(theme)
  local ok, config = pcall(require, config_path)
  if not ok then
    vim.notify(('Config for theme %s not found: %s'):format(theme, config_path), vim.log.levels.WARN)
    return
  end

  local colors = config.colors()
  if vim.tbl_isempty(colors) then
    return
  end

  local get_highlight = require('theme.util').get_highlight
  local set_highlight = require('theme.util').set_highlight

  local statusline_colors = get_highlight('StatusLine')
  local error_colors = get_highlight('DiagnosticError')
  local warning_colors = get_highlight('DiagnosticWarn')
  local hint_colors = get_highlight('DiagnosticHint')
  local info_colors = get_highlight('DiagnosticInfo')

  set_highlight('DiagnosticErrorInv', {
    guibg = error_colors.guifg,
    guifg = statusline_colors.guibg,
  })

  set_highlight('DiagnosticWarnInv', {
    guibg = warning_colors.guifg,
    guifg = statusline_colors.guibg,
  })

  set_highlight('DiagnosticHintInv', {
    guibg = hint_colors.guifg,
    guifg = statusline_colors.guibg,
  })

  set_highlight('DiagnosticInfoInv', {
    guibg = info_colors.guifg,
    guifg = statusline_colors.guibg,
  })
end

return M
