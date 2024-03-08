if exists('g:plug_installing_plugins')
  Plug 'glepnir/indent-guides.nvim'
  finish
endif

lua << EOF
  require('indent_guides').setup({
    indent_guide_size = 4,
    indent_tab_guides = true,
    exclude_filetypes = {'help','startify','NvimTree', 'starter'},
    even_colors = { fg ='#cccccc', bg='#141414' },
    odd_colors = {fg='#cccccc', bg='#1d1d1d' }
  })
EOF
