local keymap = vim.keymap

keymap.set('n', '<Leader>ff', require('telescope.builtin').git_files)
keymap.set('n', '<Leader>fa', require('telescope.builtin').find_files)
keymap.set('n', '<Leader>fg', require('telescope.builtin').live_grep)
keymap.set('n', '<Leader>fb', require('telescope.builtin').buffers)
keymap.set('n', '<Leader>fh', require('telescope.builtin').help_tags)
keymap.set('n', '<Leader>ft', require('telescope').extensions.file_browser.file_browser)
