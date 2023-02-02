return {
  {
    'folke/neodev.nvim',
    opts = { lspconfig = false },
  },
  {
    'ahmedkhalf/project.nvim',
    lazy = false,
    keys = {
      { '<Leader>fp', '<Cmd>Telescope projects<CR>', desc = 'List recently opened projects' },
    },
    config = function(_, opts)
      require('project_nvim').setup(opts)
      require('telescope').load_extension('projects')
    end,
  },
  { 'raddari/last-color.nvim' },
  { 'folke/which-key.nvim', config = true },
  { 'folke/lazy.nvim' },
}
