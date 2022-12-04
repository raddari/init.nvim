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
    require('lsp.default').on_attach(client, bufnr)

    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, { desc = desc, buffer = bufnr })
    end

    map('n', '<Leader>rr', rt.runnables.runnables, 'Open runnables')
    map('n', '<Leader>re', rt.expand_macro.expand_macro, 'Expand macro')
    map('n', '<Leader>rc', rt.open_cargo_toml.open_cargo_toml, 'Open Cargo.toml')
    map('n', '<Leader>rp', rt.parent_module.parent_module, 'Goto parent module')
    map('n', '<Leader>rj', rt.join_lines.join_lines, 'Join lines')
    map('n', '<Leader>rR', function()
      vim.ui.input({ prompt = 'Enter SSR query: ', default = 'foo($a, $b) ==>> ($a).foo($b)' }, function(input)
        if input then
          rt.ssr.ssr(input)
        end
      end)
    end, 'Structural search and replace')
  end,
}

config.tools = {
  runnables = {
    use_telescope = true,
  },
  inlay_hints = {
    only_current_line = false,
    parameter_hints_prefix = '',
    other_hints_prefix = '',
  },
}

return config
