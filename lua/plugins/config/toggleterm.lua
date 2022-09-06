require('toggleterm').setup({
  size = 10,
  open_mapping = '<Leader>/',
  insert_mappings = false,
  shading_factor = 2,
  direction = 'float',
  float_opts = {
    border = 'curved',
    highlights = {
      border = 'Normal',
      background = 'Normal',
    },
  },
})
