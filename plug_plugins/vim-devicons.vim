if exists('g:plug_installing_plugins')
  Plug 'ryanoasis/vim-devicons'
  Plug 'kyazdani42/nvim-web-devicons'
  finish
endif

let g:airline_powerline_fonts = 1
" Hide file format symbol b/c it's always an Apple logo (for utf-8)
let g:webdevicons_enable_airline_statusline_fileformat_symbols = 0
