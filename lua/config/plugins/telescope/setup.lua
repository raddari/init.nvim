local telescope = require('telescope')

telescope.setup({
})

telescope.load_extension('env')
telescope.load_extension('fzf')
telescope.load_extension('file_browser')
telescope.load_extension('luasnip')
telescope.load_extension('notify')
telescope.load_extension('packer')
