local icons = require('config.theme.icons')

require('lualine').setup({
  options = {
    theme = 'auto',
    section_separators = {
      left = icons.rounded_right_filled,
      right = icons.rounded_left_filled,
    },
    component_separators = {
      left = icons.arrow_right,
      right = icons.arrow_left,
    },
  },
})
