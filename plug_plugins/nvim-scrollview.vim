if exists('g:plug_installing_plugins')
  Plug 'dstein64/nvim-scrollview'
  finish
endif

" Specify custom highlighting for ScrollView
highlight ScrollView ctermbg=159 guibg=#836fff
