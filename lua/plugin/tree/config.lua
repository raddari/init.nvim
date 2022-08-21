require('nvim-tree').setup({
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  filters = {
    custom = { '.git' }
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        file = true,
        folder = true,
        git = true,
      },
    },
  },
})
