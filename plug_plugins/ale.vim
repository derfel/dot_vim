if exists('g:plug_installing_plugins')
  Plug 'w0rp/ale'
  finish
endif

let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
" Otherwise huge files might get linted and freeze.
let g:ale_lint_on_enter = 0

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
