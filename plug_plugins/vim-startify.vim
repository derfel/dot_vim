if exists('g:plug_installing_plugins')
  Plug 'mhinz/vim-startify'
  finish
endif

let g:startify_files_number = 24
let g:startify_fortune_use_unicode = 1

let g:startify_list_order = [
	\ ['   Last modified in current directory'],
	\ 'dir',
	\ ['   Recent files'],
	\ 'files',
	\ ['   Bookmarks'],
	\ 'bookmarks',
	\ ['   Sessions'],
	\ 'sessions',
	\ ['   Commands'],
	\ 'commands',
\ ]

