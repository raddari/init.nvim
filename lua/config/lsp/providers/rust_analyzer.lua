local rt = require('rust-tools')

local config = {}

config.server = {
  settings = {
    ['rust-analyzer'] = {
      checkOnSave = {
        command = 'clippy',
      },
    },
  },
  on_attach = function(client, bufnr)
    require('config.lsp.keymap').init(client, bufnr)
    local map = function(mode, lhs, rhs)
      vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
    end

    map('n', '<Leader>rr', rt.runnables.runnables)
    map('n', '<Leader>re', rt.expand_macro.expand_macro)
    map('n', '<Leader>rc', rt.open_cargo_toml.open_cargo_toml)
    map('n', '<Leader>rp', rt.parent_module.parent_module)
    map('n', '<Leader>rj', rt.join_lines.join_lines)
    map('n', '<Leader>rR', function()
      vim.ui.input({ prompt = 'Enter SSR query: ', default = 'foo($a, $b) ==>> ($a).foo($b)' }, function(input)
        if input then
          rt.ssr.ssr(input)
        end
      end)
    end)
  end,
}

config.tools = {
  inlay_hints = {
    only_current_line = true,
    parameter_hints_prefix = ' ',
    other_hints_prefix = ' ',
  },
}

return config
