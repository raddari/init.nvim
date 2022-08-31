local default = require('config.lsp.providers.default')
local rt = require('rust-tools')

local config = {}

config.tools = {
  inlay_hints = {
    only_current_line = true,
  },
}

config.server = {
  settings = {
    ['rust-analyzer'] = {
      checkOnSave = {
        command = 'clippy',
      },
    },
  },
  on_attach = function(client, bufnr)
    default.on_attach(client, bufnr)
    local set = function(mode, lhs, rhs)
      vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
    end

    set('n', '<Leader>rr', rt.runnables.runnables)
    set('n', '<Leader>re', rt.expand_macro.expand_macro)
    set('n', '<Leader>rc', rt.open_cargo_toml.open_cargo_toml)
    set('n', '<Leader>rp', rt.parent_module.parent_module)
    set('n', '<Leader>rj', rt.join_lines.join_lines)
    set('n', '<Leader>rR', function()
      vim.ui.input({ prompt = 'Enter SSR query: ', default = 'foo($a, $b) ==>> ($a).foo($b)' }, function(input)
        if input then
          rt.ssr.ssr(input)
        end
      end)
    end)
  end,
}

return config
