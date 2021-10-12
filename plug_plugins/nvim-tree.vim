if exists('g:plug_installing_plugins')
  Plug 'kyazdani42/nvim-tree.lua'
  finish
endif

lua << EOF
require'nvim-tree'.setup {
	auto_close = true,
	open_on_setup = true,
	view = {
		width = 50,
	}
}
EOF

nnoremap <silent><leader>nn :NvimTreeToggle<CR>
nnoremap <silent><leader>nf :NvimTreeFindFile<CR>

let g:nvim_tree_indent_markers = 1

