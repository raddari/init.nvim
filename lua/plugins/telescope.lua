return {
  {
    'nvim-telescope/telescope.nvim',
    keys = {
      { '<Leader>t', '<Cmd>Telescope file_browser path=%:p:h<CR>',  desc = 'File browser' },
      { '<Leader>fg', '<Cmd>Telescope live_grep<CR>', desc = 'Search for strings in workspace files' },
      { '<Leader>ff', '<Cmd>Telescope git_files<CR>', desc = 'Search for git versioned files in workspace' },
      { '<Leader>fa', '<Cmd>Telescope find_files<CR>', desc = 'Search for files in workspace' },
      { '<Leader>fb', '<Cmd>Telescope buffers<CR>', desc = 'Open buffer picker' },
      { '<Leader>fc', '<Cmd>Telescope colorscheme<CR>', desc = 'Open colorscheme picker' },
      { '<Leader>fh', '<Cmd>Telescope help_tags<CR>', desc = 'Search for help pages' },
      { '<Leader>fk', '<Cmd>Telescope keymaps<CR>', desc = 'Search for keymaps' },
      { '<Leader>fm', '<Cmd>Telescope man_pages sections=2,3,5,7<CR>', desc = 'Search man pages' },
      { '<Leader>"', '<Cmd>Telescope registers<CR>', desc = 'Show contents of registers' },
    },
    opts = {
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
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons',
    },
  },
  {
    'nvim-telescope/telescope-file-browser.nvim',
    config = function()
      require('telescope').load_extension('file_browser')
    end,
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    config = function()
      require('telescope').load_extension('fzf')
    end,
  },
}
