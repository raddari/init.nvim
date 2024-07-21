local add = MiniDeps.add

-- colorscheme
add({ source = 'raddari/last-color.nvim' })
add({ source = 'embark-theme/vim', name = 'embark' })
add({ source = 'bluz71/vim-nightfly-colors', name = 'nightfly' })

-- treesitter
add({
  source = 'nvim-treesitter/nvim-treesitter',
  hooks = {
    post_checkout = function()
      vim.cmd('TSUpdate')
    end,
  },
})
add({ source = 'JoosepAlviste/nvim-ts-context-commentstring' })
add({ source = 'nvim-treesitter/nvim-treesitter-textobjects' })
add({ source = 'windwp/nvim-ts-autotag' })

-- lsp
add({ source = 'folke/lazydev.nvim' })
add({
  source = 'neovim/nvim-lspconfig',
  depends = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig',
    'jay-babu/mason-null-ls.nvim',
    'nvimtools/none-ls.nvim',
    'zeioth/none-ls-autoload.nvim',
    'https://git.sr.ht/~p00f/clangd_extensions.nvim',
    'b0o/SchemaStore.nvim',
  },
})

-- cmp
add({
  source = 'hrsh7th/nvim-cmp',
  depends = {
    'hrsh7th/cmp-nvim-lsp',
    'dcampos/cmp-snippy',
    'dcampos/nvim-snippy',
    'honza/vim-snippets',
  },
})

-- ui
add({ source = 'levouh/tint.nvim' })
add({ source = 'stevearc/dressing.nvim' })

-- util
add({ source = 'nvim-lua/plenary.nvim' })

-- config
require('plugins.colorscheme').setup()
require('plugins.treesitter').setup()
require('plugins.mini').setup()
require('plugins.ui').setup()
require('plugins.lsp').setup()
require('plugins.cmp').setup()
