if exists('g:plug_installing_plugins')
  Plug 'mhinz/vim-grepper'
  finish
endif

nnoremap <leader>ag :Grepper -tool ag<cr>

let g:grepper = {}
let g:grepper.ag={ 'grepprg': 'ag --vimgrep --smart-case' }
let g:grepper.tools = ['ag', 'rg', 'git', 'grep']

" Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>

" Search for the currenct selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

function! SetupCommandAlias(input, output)
	exec 'cabbrev <expr> '.a:input
		\ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:input.'")'
		\ .'? ("'.a:output.'") : ("'.a:input.'"))'
endfunction
call SetupCommandAlias("grep", "GrepperGrep")
