local M = {}

local config = {
  runtime = {
    version = 'LuaJIT',
  },
  diagnostics = {
    globals = { 'vim' },
  },
  workspace = {
    library = vim.api.nvim_get_runtime_file('', true),
  },
  format = {
    enable = false,
  },
  telemetry = {
    enable = false,
  },
}

M.settings = {
  Lua = config,
}

return M
