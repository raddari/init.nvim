local add = MiniDeps.add

-- util
add({ source = 'nvim-lua/plenary.nvim' })
add({ source = 'raddari/last-color.nvim' })
add({ source = 'ziglang/zig.vim' })
add({ source = 'folke/snacks.nvim' })

-- colorscheme
add({ source = 'bluz71/vim-nightfly-colors', name = 'nightfly' })
add({ source = 'AlexvZyl/nordic.nvim', name = 'nordic' })
add({ source = 'EdenEast/nightfox.nvim', name = 'nightfox' })

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
    'https://git.sr.ht/~p00f/clangd_extensions.nvim',
    'b0o/SchemaStore.nvim',
  },
})

-- TODO: consider https://github.com/Saghen/blink.cmp
add({
  source = 'hrsh7th/nvim-cmp',
  depends = {
    'hrsh7th/cmp-nvim-lsp',
    'dcampos/cmp-snippy',
    'dcampos/nvim-snippy',
    'rafamadriz/friendly-snippets',
  },
})

-- config
require('plugins.snacks').setup()
require('plugins.colorscheme').setup()
require('plugins.treesitter').setup()
require('plugins.mini').setup()
require('plugins.lsp').setup()
require('plugins.cmp').setup()
