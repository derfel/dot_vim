if exists('g:vscode')
  finish
endif

if exists('g:plug_installing_plugins')
  Plug 'nvim-treesitter/nvim-treesitter', {'branch': 'main', 'do': ':TSUpdate' }
  Plug 'JoosepAlviste/nvim-ts-context-commentstring'

  if !exists('g:vscode')
    Plug 'hiphish/rainbow-delimiters.nvim'
    Plug 'nvim-treesitter/nvim-treesitter-context'
  endif

  finish
endif

lua <<EOF
require('nvim-treesitter').install('all')

vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})
EOF
