if exists('g:vscode')
  finish
endif

if exists('g:plug_installing_plugins')
  Plug 'mhinz/vim-startify'
  finish
endif

let g:startify_list_order = [
        \ ['   Last modified'],
        \ 'dir',
        \ ['   Recent'],
        \ 'files',
        \ ]
let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ $VIMRUNTIME .'/doc',
            \ 'bundle/.*/doc',
            \ ]
let g:startify_files_number = 10
let g:startify_fortune_use_unicode = 1
let g:startify_custom_indices = ['a', 'd', 'f', 'g', 'h']
let g:startify_change_to_dir = 0
let g:startify_custom_header = []

hi StartifyBracket ctermfg=240
hi StartifyFooter  ctermfg=111
hi StartifyHeader  ctermfg=203
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240

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

