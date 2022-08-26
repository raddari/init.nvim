local rt = require('rust-tools')
local config = {
  server = {
    settings = {
      on_attach = function(client, bufnr)
        local set = vim.keymap.set
        set('n', '<C-Space>', rt.hover_actions.hover_actions, { buffer = bufnr })
        set('n', '<Leader>ca', rt.code_action_group.code_action_group, { buffer = bufnr })
        require('illuminate').on_attach(client)
      end,
      ['rust-analyzer'] = {
        checkOnSave = {
          command = 'clippy',
        },
      },
    },
  },
  inlay_hints = {
    only_current_line = true,
  },
  dap = {
    adapter = {
      type = 'executable',
      command = 'lldb-vscode-12',
      name = 'rt_lldb',
    },
  },
}

rt.setup(config)
