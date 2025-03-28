if exists('g:vscode')
  finish
endif

if exists('g:plug_installing_plugins')
  Plug 'editorconfig/editorconfig-vim'
  finish
endif

let g:EditorConfig_exec_path = '/usr/bin/editorconfig'

let g:EditorConfig_exclude_patterns = ['fugitive://.*']
" Keep Vim from automatically wrapping lines
let g:EditorConfig_preserve_formatoptions = 1
