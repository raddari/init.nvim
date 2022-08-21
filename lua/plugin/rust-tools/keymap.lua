local keymap = vim.keymap
local rt = require('rust-tools')

local M = {}

M.apply = function(_, bufnr)
  keymap.set('n', '<Leader>h', rt.hover_actions.hover_actions, { buffer = bufnr })
  keymap.set('n', '<Leader>a', rt.code_action_group.code_action_group, { buffer = bufnr })
end

return M
