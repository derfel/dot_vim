if exists('g:plug_installing_plugins')
	Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
	finish
endif

let g:pymode_rope_complete_on_dot = 0
let g:pymode_indent = 0
let g:pymode_options_max_line_length = 130
let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length, 'ignore': 'E266,C191,C391,W191,E128'}
let g:pymode_lint_options_pylint = {'max-line-length': g:pymode_options_max_line_length}
