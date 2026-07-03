if exists('g:vscode')
  finish
endif

if exists('g:plug_installing_plugins')
  Plug 'lukas-reineke/indent-blankline.nvim'
  finish
endif

lua << EOF
  local highlight = { 'IndentOdd', 'IndentEven' }
  local hooks = require('ibl.hooks')
  hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, 'IndentOdd', { fg = '#cccccc', bg = '#1d1d1d' })
    vim.api.nvim_set_hl(0, 'IndentEven', { fg = '#cccccc', bg = '#141414' })
  end)

  require('ibl').setup({
    indent = { highlight = highlight, char = '' },
    whitespace = {
      highlight = highlight,
      remove_blankline_trail = false,
    },
    scope = { enabled = false },
    exclude = {
      filetypes = { 'help', 'startify', 'NvimTree', 'starter' },
    },
  })
EOF
