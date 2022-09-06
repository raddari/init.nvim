local icons = require('theme.icons')

require('lualine').setup({
  options = {
    theme = 'auto',
    section_separators = {
      left = icons.rounded_right_filled,
      right = icons.rounded_left_filled,
    },
    component_separators = {
      left = icons.rounded_right,
      right = icons.rounded_left,
    },
  },
})
