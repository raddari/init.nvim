require('telescope').setup({
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
  },
})

local map = vim.keymap.set
map('n', '<Leader>t', '<Cmd>Telescope file_browser path=%:p:h<CR>', { desc = 'File browser' })
map('n', '<Leader>fg', '<Cmd>Telescope live_grep<CR>', { desc = 'Search for strings in workspace files' })
map('n', '<Leader>ff', '<Cmd>Telescope git_files<CR>', { desc = 'Search for git versioned files in workspace' })
map('n', '<Leader>fa', '<Cmd>Telescope find_files<CR>', { desc = 'Search for files in workspace' })
map('n', '<Leader>fb', '<Cmd>Telescope buffers<CR>', { desc = 'Open buffer picker' })
map('n', '<Leader>fc', '<Cmd>Telescope colorscheme<CR>', { desc = 'Open colorscheme picker' })
map('n', '<Leader>fh', '<Cmd>Telescope help_tags<CR>', { desc = 'Search for help pages' })
map('n', '<Leader>fk', '<Cmd>Telescope keymaps<CR>', { desc = 'Search for keymaps' })
map('n', '<Leader>fm', '<Cmd>Telescope man_pages sections=2,3,5,7<CR>', { desc = 'Search man pages' })
map('n', '<Leader>"', '<Cmd>Telescope registers<CR>', { desc = 'Show contents of registers' })
