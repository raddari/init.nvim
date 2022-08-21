return {
  settings = {
    Lua = {
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
        enable = true,
        defaultConfig = {
          quote_style = 'single',
          space_before_function_open_parenthesis = false,
        },
      },
      telemetry = {
        enable = false,
      },
    },
  },
  on_attach = function(client, bufnr)
    require('lsp.config.default').on_attach(client, bufnr)
  end,
}
