local map = vim.keymap.set

-- zen-mode/twilight
map('n', '<Leader>z', '<Cmd>Twilight<CR>', { desc = 'Toggle Twilight' })
map('n', '<Leader>Z', '<Cmd>ZenMode<CR>', { desc = 'Toggle Zen mode' })

-- notify
map('n', '<Leader>nh', function()
  require('notify').history()
end, { desc = 'Show notification history' })

-- trouble.nvim
map('n', '<Leader>xx', '<Cmd>TroubleToggle<CR>', { desc = 'Toggle trouble.nvim diagnostics' })
map('n', '<Leader>xw', '<Cmd>TroubleToggle workspace_diagnostics<CR>', { desc = 'Toggle workspace diagnostics' })
map('n', '<Leader>xd', '<Cmd>TroubleToggle document_diagnostics<CR>', { desc = 'Toggle document diagnostics' })
map('n', '<Leader>xl', '<Cmd>TroubleToggle loclist<CR>', { desc = 'Toggle trouble.nvim loclist' })
map('n', '<Leader>xq', '<Cmd>TroubleToggle quickfix<CR>', { desc = 'Toggle trouble.nvim quickfix' })
map('n', 'gR', '<Cmd>TroubleToggle lsp_references<CR>', { desc = 'Toggle references' })

-- telescope.nvim
map('n', '<Leader>ff', '<Cmd>Telescope git_files<CR>', { desc = 'Search for files in workspace versioned by git' })
map('n', '<Leader>fa', '<Cmd>Telescope find_files<CR>', { desc = 'Search for files in workspace' })
map('n', '<Leader>fg', '<Cmd>Telescope live_grep<CR>', { desc = 'Search for strings in workspace files' })
map('n', '<Leader>fb', '<Cmd>Telescope buffers<CR>', { desc = 'Open buffer picker' })
map('n', '<Leader>fh', '<Cmd>Telescope help_tags<CR>', { desc = 'Search for help pages' })
map('n', '<Leader>fk', '<Cmd>Telescope keymaps<CR>', { desc = 'Search for keymaps' })
map('n', '<Leader>fr', '<Cmd>Telescope registers<CR>', { desc = 'Show register contents' })
map('n', '<Leader>fu', '<Cmd>Telescope symbols<CR>', { desc = 'Open emoji/math symbol picker' })
map('i', '<M-u>', '<Cmd>Telescope symbols<CR>', { desc = 'Open emoji/math symbol picker' })

-- telescope:extensions
map('n', '<Leader>t', '<Cmd>Telescope file_browser<CR>', { desc = 'Open file browser from current working directory' })
map('n', '<Leader>fp', '<Cmd>Telescope packer<CR>', { desc = 'Open packer plugin picker' })
map('n', '<Leader>fs', '<Cmd>Telescope luasnip<CR>', { desc = 'Open LuaSnip picker' })
map('n', '<Leader>fe', '<Cmd>Telescope env<CR>', { desc = 'Open environment variables picker' })
map('n', '<Leader>fn', '<Cmd>Telescope notify<CR>', { desc = 'Open notification history' })
