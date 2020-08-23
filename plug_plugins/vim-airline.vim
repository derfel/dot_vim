if exists('g:plug_installing_plugins')
  Plug 'vim-airline/vim-airline'
  finish
endif

let g:airline_theme = 'kalisi'

let g:airline_powerline_fonts = 1
let g:airline_detect_modified = 0
"let g:airline_symbols = { 'modified': '*' }
"let g:airline#extensions#branch#enabled = 1
"let g:airline#extensions#branch#empty_message = '♯(no branch)'
"let g:airline#extensions#branch#displayed_head_limit = 20

"let g:airline#extensions#whitespace#enabled = 0
"let g:airline#extensions#hunks#enabled = 1
"let g:airline#extensions#hunks#non_zero_only = 1
"let g:airline_mode_map = {
""      \ 'n'  : 'N',
""      \ 'i'  : 'I',
""      \ 'R'  : 'R',
""      \ 'v'  : 'V',
""      \ 'V'  : 'VL',
""      \ 'c'  : 'CMD',
""      \ '' : 'VB',
""      \ }
" Show the current working directory folder name
"let g:airline_section_b = '%{substitute(getcwd(), ".*\/", "", "g")} '
" Just show the file name
"let g:airline_section_c = '%{expand("%:p:h:t")}/%t'
"let g:airline_section_y = ''
"let g:airline_section_z = '%3p%% %#__accent_bold#%4l%#__restore__#:%3'
"let g:airline_section_z = '%3p%% %{substitute(line("."), "\\v(\\d)((\\d\\d\\d)+\\d@!)@=", "\\1,", "g")}|%{substitute(line("$"), "\\v(\\d)((\\d\\d\\d)+\\d@!)@=", "\\1,", "g")}'

"let g:airline#extensions#default#layout = [
""  \ [ 'a', 'b', 'warning', 'c' ],
""  \ [ 'x', 'y', 'z' ]
""  \ ]
" From https://github.com/bling/vim-airline/issues/316
" Custmize modified flag

call airline#parts#define_raw('modified', '%{&modified ? " [*]" : ""}')
call airline#parts#define_accent('modified', 'red')
let g:airline_section_c = airline#section#create(['%f', 'modified'])
