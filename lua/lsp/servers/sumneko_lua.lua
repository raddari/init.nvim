local config = { settings = {} }

config.settings.Lua = {
  format = {
    enable = false,
  },
  hint = {
    enable = true,
    setType = true,
  },
  runtime = {
    version = 'LuaJIT',
  },
  telemetery = {
    enable = false,
  },
  completion = {
    callSnippet = 'Replace',
  },
}

return config
