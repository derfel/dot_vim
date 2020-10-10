" ----------------------------------------
" Mappings
" ----------------------------------------

" Set leader to ,
" Note: This line MUST come before any <leader> mappings
let mapleader=','
let maplocalleader = ' '

" -----------------------
" Unmapped While Learning
" -----------------------

" No-op ^ and $ while learning H and L
noremap ^ <nop>
noremap $ <nop>
nnoremap <leader>sc <nop>

" ---------------
" Regular Mappings
" ---------------

" Use ; for : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :

" Quit with one key
nnoremap <C-x> :qa<cr>

" Yank entire buffer with gy
nnoremap gy :0,$ y<cr>

" Select entire buffer
nnoremap vy ggVG

" Make Y behave like other capital commands.
" Hat-tip http://vimbits.com/bits/11
nnoremap Y y$

" Just to beginning and end of lines easier. From http://vimbits.com/bits/16
noremap H ^
noremap L $

" Create newlines without entering insert mode
nnoremap go m`o<Esc>``
nnoremap gO m`O<Esc>``

" remap U to <C-r> for easier redo
" from http://vimbits.com/bits/356
nnoremap U <C-r>

" Swap implementations of ` and ' jump to markers
" By default, ' jumps to the marked line, ` jumps to the marked line and
" column, so swap them
nnoremap ' `
nnoremap ` '

" switch from Terminal mode back to Normal mode by pressing they <Esc> key
if has('nvim')
	tnoremap <Esc> <C-\><C-n>
	tnoremap <C-v><Esc> <Esc>
endif

" ----------------------------------------
" Personal Bindings
" ----------------------------------------
" Delete word in command mode.
map <C-W> bdw
" Empty line in command mode.
map <C-U> 1\|D
" F4: Paste with(out) indent.
set pastetoggle=<F4>
" F5: Reload File
map <F5> :e<CR>
" F6: TagBar -- Vim Class Outline viewer
nmap <F6> :TagbarToggle<CR>
" F7: converte da formato DOS a unix
map <F7> :set fileformat=unix<CR>
" F8: converte da formato unix a DOS
map <F8> :set fileformat=dos<CR>
" F9: show white space
noremap <F9> :set list!<CR>
" F3: show undotree
nnoremap <F3> :UndotreeToggle<cr>
" F2: show undotree
nnoremap <F2> :SignifyToggle<cr>

:nnoremap <CR> :nohlsearch<cr>
" clear the search buffer when hitting return

" Switch tab
map <C-Left> <Esc>:tabprev<CR>
map <C-Right> <Esc>:tabnext<CR>
map <C-n> <Esc>:tabnew

" svuota le righe con solo spazi o tab
map <leader>slv :%s/^\s\+$//<C-M>
" cancella le righe con solo spazi o tab
map <leader>clv :g/^\s\+$/d<C-M>
" converte piu` righe vuote in una sola
map <leader>ulv :g/^$/,/./-j<C-M>
" Empty quoted lines
map <leader>slqv :%s/^[><C-I> ]\+$//<C-M>
" Delete empty quoted lines
map <leader>clqv :g/^[><C-I> ]\+$/d<C-M>
" Delete spaces between '>'
map <leader>cstq :%s/> >/>>/g<C-M>
" Toglie completamente il quote
map <leader>tq :%s/^[><C-I> ]*//g<C-M>
" rimuove le signature quotate
map <leader>cf G/^[><C-I> ]*-- $<C-M>dG
" quota il testo
" FIXME: Fare una funzione che non aggiunga lo spazio in caso di più livelli.
map <leader>aq :%s/^/> /<C-M>

" ---------------
" Nextval
" ---------------
nmap <silent> <unique> + <Plug>nextvalInc
nmap <silent> <unique> - <Plug>nextvalDec

" ---------------
" Expand Region
" ---------------
vmap + <Plug>(expand_region_expand)
vmap - <Plug>(expand_region_shrink)

" ----------------------------------------
" SmartHome
" ----------------------------------------
" Cycle between first char and first non space char
noremap  <expr> <Home> (col('.') == matchend(getline('.'), '^\s*')+1 ? '0'  : '^')
noremap  <expr> <End>  (col('.') == match(getline('.'),    '\s*$')   ? '$'  : 'g_')
vnoremap <expr> <End>  (col('.') == match(getline('.'),    '\s*$')   ? '$h' : 'g_')
imap <Home> <C-o><Home>
imap <End>  <C-o><End>

" ---------------
" Window Movement
" ---------------

" Move windows directionally
nnoremap <silent> <M-h> :wincmd h<CR>
nnoremap <silent> <M-j> :wincmd j<CR>
nnoremap <silent> <M-k> :wincmd k<CR>
nnoremap <silent> <M-l> :wincmd l<CR>

"   4 Window Splits
"
"   -----------------
"   g1 | g2 | g3 | g4
"   -----------------
nnoremap <silent> g1 :WriteBufferIfNecessary<CR>:wincmd t<CR>
nnoremap <silent> g2 :WriteBufferIfNecessary<CR>:wincmd t<bar>:wincmd l<CR>
nnoremap <silent> g3 :WriteBufferIfNecessary<CR>:wincmd t<bar>:wincmd l<bar>
      \:wincmd l<CR>
nnoremap <silent> g4 :WriteBufferIfNecessary<CR>:wincmd b<CR>

" Equal Size Windows
nnoremap <silent> g= :wincmd =<CR>
" Swap Windows
nnoremap <silent> gx :wincmd x<CR>

" ---------------
" Modifer Mappings
" ---------------

" Make line completion easier.
inoremap <C-l> <C-x><C-l>

" ---------------
" Insert Mode Mappings
" ---------------

" Let's make escape better, together.
inoremap jk <Esc>
inoremap JK <Esc>
inoremap Jk <Esc>
inoremap jK <Esc>

" ---------------
" Leader Mappings
" ---------------

" Clear search
noremap <silent><leader>/ :nohls<CR>

" Toggle spelling mode
nnoremap <silent> <leader>sp :set spell!<CR>

" Quickly switch to last buffer
nnoremap <leader>, :e#<CR>

" Surround the commented line with lines.
"
" Example:
"          # Test 123
"          becomes
"          # --------
"          # Test 123
"          # --------
nnoremap <silent> <leader>cul :normal "lyy"lpwvLr-^"lyyk"lP<cr>

" Split window vertically or horizontally *and* switch to the new split!
nnoremap <silent> <leader>hs :split<Bar>:wincmd j<CR>:wincmd =<CR>
nnoremap <silent> <leader>vs :vsplit<Bar>:wincmd l<CR>:wincmd =<CR>

" Close the current window
nnoremap <silent> <M-w> :close<CR>

" Plug mappings here because they don't work in plug.vim
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pu :PlugUpdate<CR>
nnoremap <leader>pc :PlugClean<CR>

" ---------------
" Typo Fixes
" ---------------

cnoremap w' w<CR>

" Disable the ever-annoying Ex mode shortcut key. Type visual my ass. Instead,
" make Q repeat the last macro instead. *hat tip* http://vimbits.com/bits/263
nnoremap Q @@

" Removes doc lookup mapping because it's easy to fat finger and never useful.
nnoremap K k
vnoremap K k

" Toggle paste mode with F5
nnoremap <silent> <F5> :set paste!<CR>

" Paste and select pasted
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Insert date
iabbrev ddate <C-R>=strftime("%Y-%m-%d")<CR>

" copy current file name (relative/absolute) to system clipboard
" from http://stackoverflow.com/a/17096082/22423
if has('mac') || has('gui_macvim') || has('gui_mac')
  " relative path  (src/foo.txt)
  nnoremap <silent> <leader>yp :let @*=expand("%")<CR>

  " absolute path  (/something/src/foo.txt)
  nnoremap <silent> <leader>yP :let @*=expand("%:p")<CR>

  " filename       (foo.txt)
  nnoremap <silent> <leader>yf :let @*=expand("%:t")<CR>

  " directory name (/something/src)
  nnoremap <silent> <leader>yd :let @*=expand("%:p:h")<CR>
endif
