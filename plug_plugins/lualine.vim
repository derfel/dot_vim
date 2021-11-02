if exists('g:plug_installing_plugins')
  Plug 'hoob3rt/lualine.nvim'
  finish
endif

lua << EOF
require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'dracula',
  },
  sections = {
    lualine_b = {'branch', 'diff', {'diagnostics', sources={'coc'}}},
    lualine_c = {{ 'filename', path = 1, file_status = true }},
    lualine_x = {'encoding', 'fileformat', { 'filetype', coloreed = true }},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
})
EOF
