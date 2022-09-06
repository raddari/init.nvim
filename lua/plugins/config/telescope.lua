local telescope = require('telescope')
local trouble = require('trouble.providers.telescope')

telescope.setup({
  defaults = {
    prompt_prefix = ' ',
    selection_caret = '❯ ',
    path_display = { 'truncate' },
    selection_strategy = 'reset',
    sorting_strategy = 'ascending',
    layout_strategy = 'horizontal',
    layout_config = {
      horizontal = {
        prompt_position = 'top',
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    mappings = {
      i = {
        ['<C-t>'] = trouble.open_with_trouble,
      },
      n = {
        ['<C-t>'] = trouble.open_with_trouble,
      },
    },
  },
})
