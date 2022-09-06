local M = {}

M.init = function(_, bufnr)
  local lsp = vim.lsp.buf
  local diagnostic = vim.diagnostics

  local wk = require('which-key')
  wk.register({
    name = 'lsp',
    ['<Leader>'] = {
      g = {
        d = {
          function()
            lsp.definition()
          end,
          'Goto definition',
        },
        D = {
          function()
            lsp.declaration()
          end,
          'Goto declaration',
        },
        i = {
          function()
            lsp.implementation()
          end,
          'Goto implementation',
        },
        t = {
          function()
            lsp.type_definition()
          end,
          'Goto definition',
        },
        r = {
          function()
            lsp.references()
          end,
          'Goto references',
        },
        n = {
          function()
            lsp.rename()
          end,
          'Rename symbol',
        },
        f = {
          function()
            lsp.format()
          end,
          'Format file',
        },
        e = {
          function()
            diagnostic.open_float()
          end,
          'Open diagnostics',
          buffer = nil,
        },
      },
      c = {
        a = {
          function()
            lsp.code_action()
          end,
          'Code actions',
        },
      },
      w = {
        e = {
          function()
            require('telescope.builtin').diagnostics()
          end,
          'Open workspace diagnostics',
        },
        a = {
          function()
            lsp.add_workspace_folder()
          end,
          'Add workspace folder',
        },
        d = {
          function()
            lsp.remove_workspace_folder()
          end,
          'Remove workspace folder',
        },
        s = {
          function()
            lsp.workspace_symbol()
          end,
          'List workplace symbols',
        },
        l = {
          function()
            lsp.list_workspace_folders()
          end,
          'List workspace symbols',
        },
      },
    },
    ['[g'] = {
      function()
        diagnostic.goto_prev()
      end,
      'Goto previous diagnostic',
      buffer = nil,
    },
    [']g'] = {
      function()
        diagnostic.goto_next()
      end,
      'Goto next diagnostic',
      buffer = nil,
    },
    K = {
      function()
        lsp.hover()
      end,
      'Open hover menu',
    },
    ['<C-k>'] = {
      function()
        lsp.signature_help()
      end,
      'Signature help',
    },
  }, { buffer = bufnr })
end

return M
