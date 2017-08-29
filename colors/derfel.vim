" Vim color file
" Maintainer: Federico 'Derfel' Stella <derfel@derfel.net>
" Last Change: 21 May 2016
" Version: 2.1
" optimized for Me ;-)

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif
"let g:colors_name="derfel"
let colors_name = "derfel"

" General colors
hi Normal guifg=#ffffff guibg=#000000

hi Directory	term=bold ctermfg=blue guifg=royalblue
hi ErrorMsg	term=standout ctermfg=white ctermbg=red guifg=white guibg=red3
hi NonText	term=bold ctermfg=darkgray guibg=gray3 guifg=#a8a8a8
hi SpecialKey	term=bold ctermfg=darkgray guifg=#5fdf5f
hi LineNr         gui=NONE   guifg=#8b8bcd   guibg=#2e2e2e
hi CursorLineNr   gui=bold   guifg=#cb0b0d   guibg=#a0a0a0
hi IncSearch	term=reverse cterm=reverse gui=reverse,bold guibg=#ffdfaf guifg=red2
hi Search	term=reverse ctermfg=black ctermbg=yellow guifg=white guibg=#f73faf
hi Visual	term=bold,reverse cterm=bold,reverse ctermfg=gray ctermbg=black gui=bold,reverse guifg=gray40 guibg=black
hi VisualNOS	term=bold,underline cterm=bold,underline gui=bold,underline
hi MoreMsg	term=bold ctermfg=green gui=bold guifg=olivedrab1
hi ModeMsg	term=bold cterm=bold gui=bold
hi Question	term=standout ctermfg=green gui=bold guifg=olivedrab1
hi WarningMsg	term=standout ctermfg=red gui=bold guifg=red3
hi WildMenu	term=standout ctermfg=black ctermbg=yellow guifg=black guibg=gold2
hi Folded	term=standout ctermfg=blue ctermbg=white guifg=royalblue1 guibg=white
hi FoldColumn	term=standout ctermfg=blue ctermbg=white guifg=royalblue3 guibg=white
hi DiffAdd	term=bold ctermbg=blue guibg=royalblue2
hi DiffChange	term=bold ctermbg=darkmagenta guibg=maroon
hi DiffDelete	term=bold cterm=bold ctermfg=lightblue ctermbg=cyan gui=bold guifg=lightblue guibg=cyan4
hi DiffText	term=reverse cterm=bold ctermbg=red gui=bold guibg=red3
hi Cursor	guifg=bg guibg=fg
hi lCursor	guifg=bg guibg=fg
"hi StatusLine	term=reverse cterm=reverse gui=reverse guifg=gray60
"hi StatusLineNC	term=reverse cterm=reverse gui=reverse guifg=gray40
"hi VertSplit	term=reverse cterm=reverse gui=bold,reverse guifg=gray40
hi Title	term=bold ctermfg=magenta gui=bold guifg=aquamarine

hi StatusLine     gui=BOLD   guifg=#c9c9c9   guibg=#3e3e5e
hi User1          gui=BOLD   guifg=#00ff8b   guibg=#3e3e5e
hi User2          gui=BOLD   guifg=#7070a0   guibg=#3e3e5e
hi StatusLineNC   gui=NONE   guifg=#b9b9b9   guibg=#3e3e5e
hi VertSplit      gui=NONE   guifg=#b9b9b9   guibg=#3e3e5e

"hi EasyMotionTargetDefault term=NONE cterm=bold ctermbg=bg ctermfg=196 gui=bold guibg=bg guifg=#ff0000
"hi EasyMotionShadeDefault term=NONE cterm=NONE ctermbg=bg ctermfg=240 gui=NONE guibg=bg guifg=#585858
hi EasyMotionTargetDefault gui=bold guibg=bg guifg=#ff0000
hi EasyMotionShadeDefault  gui=NONE guibg=bg guifg=#585858

highlight link SignifyLineAdd             DiffAdd
highlight link SignifyLineChange          DiffChange
highlight link SignifyLineDelete          DiffDelete
highlight link SignifyLineChangeDelete    SignifyLineChange
highlight link SignifyLineDeleteFirstLine SignifyLineDelete

" Support for vim-signify
highlight SignifySignAdd	term=bold ctermfg=green gui=bold guifg=green3
highlight SignifySignDelete	term=bold ctermfg=red gui=bold guifg=red3
highlight SignifySignChange	term=bold ctermfg=yellow gui=bold guifg=yellow

highlight link SignifySignChangeDelete    SignifySignChange
highlight link SignifySignDeleteFirstLine SignifySignDelete

" Multiple cursors
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual


"hi Visual         gui=NONE   guifg=#eeeeee   guibg=#4e4e8f
hi Visual         guifg=#005f87 guibg=#afdfff gui=none
hi VIsualNOS      guifg=#005f87 guibg=#afdfff gui=none

" syntax hi colors
hi Comment guifg=#80a0ff guibg=NONE
hi Constant	term=underline ctermfg=darkred guifg=firebrick3
hi String guifg=#ff00ff guibg=NONE
hi htmlTagName guifg=#ff0000 guibg=NONE
hi Identifier guifg=#f0702b guibg=NONE
hi Statement	term=bold ctermfg=yellow gui=none guifg=yellow
"hi PreProc guifg=#e14cff guibg=NONE
hi PreProc	term=underline ctermfg=darkblue guifg=dodgerblue
"hi Type guifg=#00ff00 guibg=NONE
hi Type		term=underline ctermfg=green gui=none guifg=green
"hi Function guifg=#ff7700 guibg=NONE
hi Function	term=underline ctermfg=darkgreen guifg=orange2
"hi Repeat guifg=#eeff00 guibg=NONE
hi Repeat	term=bold ctermfg=yellow gui=none guifg=yellow
hi Operator guifg=#ff0000 guibg=NONE
hi Error	term=reverse ctermfg=gray ctermbg=red guifg=gray guibg=red3
hi TODO guibg=#0011ff guifg=#ffffff
hi link character	constant
hi link number	constant
hi link boolean	constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link htmlTag	Special
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special

"" Special
""" .diff
hi diffAdded     guifg=#afdf87
hi diffRemoved   guifg=#df8787
""" vimdiff
hi diffAdd       guifg=bg guibg=#afdfaf
hi diffDelete    guifg=bg guibg=#949494 gui=none
hi diffChange    guifg=bg guibg=#dfafaf
hi diffText      guifg=bg guibg=#df8787 gui=none

hi  SpellBad        guisp=#ee2c2c   gui=undercurl
hi  SpellCap        guisp=#00ff00   gui=undercurl
hi  SpellLocal      guisp=#008b8b   gui=undercurl
hi  SpellRare       guisp=#ff00ff   gui=undercurl


" TagHighlight Specific
hi link Class		Type
hi link Namespace	Type
hi link Union		Type
"hi DefinedName		term=bold ctermfg=cyan guifg=green4
"hi Member		term=bold ctermfg=red gui=none guifg=#e00f43
"hi File		term=bold ctermfg=red gui=none guifg=purple
"hi Import		term=bold ctermfg=red gui=none guifg=yellow
"hi LocalVariable	term=bold ctermfg=cyan guifg=cyan4 guibg=red
"hi GlobalVariable	ctermfg=red ctermbg=yellow guifg=red guibg=yellow
