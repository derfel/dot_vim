if exists('g:plug_installing_plugins')
  Plug 'scrooloose/nerdtree'
  finish
endif

nnoremap <silent><leader>nn :NERDTreeToggle<CR>:wincmd =<CR>
nnoremap <silent><leader>nf :NERDTreeFind<CR>:wincmd =<CR>

nmap <F12> :NERDTreeToggle<CR>

let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 0
let g:NERDTreeMinimalUI = 0
let g:NERDTreeNaturalSort = 1

" Close Vim if NERDTree is the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif

autocmd FileType nerdtree setlocal nocursorline
