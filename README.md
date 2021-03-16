# The Vim Configuration of Champions

A fork of [Jeremy Mack](https://github.com/mutewinter) [dot_vim repo](https://github.com/mutewinter/dot_vim)

[Jump to Plugin List](#plugin-list)

[![Screenshot][ss]][ss]

[ss]: https://github.com/derfel/dot_vim/raw/master/screenshots/screenshot_1.png

## Plugins and Configuration in their Own File

Each plugin is included and managed in its [own file](/plug_plugins).

## Installation

1. `git clone http://github.com/derfel/dot_vim.git ~/.config/nvim`.
1. `cd ~/.config/nvim`.

Now you have a choice. The automated script or the manual process.

1. Run `scripts/setup`.

**or**

1. `rake vim:link` to make the `.vimrc` and `.nvimrc` symbolic links.
3. `vim +PlugInstall +qall`

Enjoy enhanced productivity, increased levitation, reduced watermelon-related
accidents, and startling sex appeal.

## Vim Requirements

* I'm using [NeoVim](https://github.com/neovim/neovim)
  [via Homebrew](https://github.com/neovim/neovim/wiki/Installing-Neovim) on OS X.

## Plugin Requirements

Here's a list of plugins that require further installation or have
dependencies.

* [Fugitive](https://github.com/tpope/vim-fugitive) Requires Git to be
  installed.
* [Ale](https://github.com/w0rp/ale) Uses various linding and style
  checking tools that are sepately installed.
* [fzf.vim](https://github.com/junegunn/fzf.vim) Requires
  [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) to be
  installed.
* [Source Code Nerd Font Complete](https://git.io/vPBU6) The custom font I'm using
  for vim-airline and vim-devicons.
* [Editorconfig.vim](https://github.com/editorconfig/editorconfig-vim) Requires [editorconfig](http://editorconfig.org/) to be installed.

## Mappings

* Typing `jk` insert mode is equivalent to `Escape`.
* Pressing `enter` in normal mode saves the current buffer, if needed.

And many more. See [`mappings.vim`](mappings.vim) and
[`plug_plugins`](plug_plugins) for more.

## Installing Custom Plugins

Create a new `.vim` file with the same name as the plugin you'd like to install
in [`plug_plugins/custom`](plug_plugins/custom). Then add the installation
block. For example:

`plug_plugins/custom/vim-move.vim`

```viml
if exists('g:plug_installing_plugins')
  Plug 'matze/vim-move.vim'
  finish
endif

let g:move_key_modifier = 'C'
```

This example installs [`vim-move`](https://github.com/matze/vim-move).

## Plugin List

| Stars&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Plugin** | **Description** |
| :------- | :--------- | :-------------- |
| ![Star count](https://flat.badgen.net/github/stars/junegunn/fzf?label=★&color=black) |[fzf](https://github.com/junegunn/fzf) [:page_facing_up:](plug_plugins/fzf.vim)|:cherry_blossom: A command-line fuzzy finder |
| ![Star count](https://flat.badgen.net/github/stars/scrooloose/nerdtree?label=★&color=black) |[nerdtree](https://github.com/scrooloose/nerdtree) [:page_facing_up:](plug_plugins/nerdtree.vim)|A tree explorer plugin for vim. |
| ![Star count](https://flat.badgen.net/github/stars/neoclide/coc.nvim?label=★&color=black) |[coc.nvim](https://github.com/neoclide/coc.nvim) [:page_facing_up:](plug_plugins/coc.nvim.vim)|Intellisense engine for Vim8 & Neovim, full language server protocol support as VSCode |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-fugitive?label=★&color=black) |[vim-fugitive](https://github.com/tpope/vim-fugitive) [:page_facing_up:](plug_plugins/vim-fugitive.vim)|fugitive.vim: A Git wrapper so awesome, it should be illegal |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-surround?label=★&color=black) |[vim-surround](https://github.com/tpope/vim-surround) [:page_facing_up:](plug_plugins/vim-surround.vim)|surround.vim: quoting/parenthesizing made simple |
| ![Star count](https://flat.badgen.net/github/stars/junegunn/fzf.vim?label=★&color=black) |[fzf.vim](https://github.com/junegunn/fzf.vim) [:page_facing_up:](plug_plugins/fzf.vim)|fzf :heart: vim |
| ![Star count](https://flat.badgen.net/github/stars/easymotion/vim-easymotion?label=★&color=black) |[vim-easymotion](https://github.com/easymotion/vim-easymotion) [:page_facing_up:](plug_plugins/vim-easymotion.vim)|Vim motions on speed! |
| ![Star count](https://flat.badgen.net/github/stars/python-mode/python-mode?label=★&color=black) |[python-mode](https://github.com/python-mode/python-mode) [:page_facing_up:](plug_plugins/python-mode.vim)|Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box. |
| ![Star count](https://flat.badgen.net/github/stars/majutsushi/tagbar?label=★&color=black) |[tagbar](https://github.com/majutsushi/tagbar)|Vim plugin that displays tags in a window, ordered by scope |
| ![Star count](https://flat.badgen.net/github/stars/sheerun/vim-polyglot?label=★&color=black) |[vim-polyglot](https://github.com/sheerun/vim-polyglot) [:page_facing_up:](plug_plugins/vim-polyglot.vim)|A solid language pack for Vim. |
| ![Star count](https://flat.badgen.net/github/stars/mhinz/vim-startify?label=★&color=black) |[vim-startify](https://github.com/mhinz/vim-startify) [:page_facing_up:](plug_plugins/vim-startify.vim)|:link: The fancy start screen for Vim. |
| ![Star count](https://flat.badgen.net/github/stars/ryanoasis/vim-devicons?label=★&color=black) |[vim-devicons](https://github.com/ryanoasis/vim-devicons) [:page_facing_up:](plug_plugins/vim-devicons.vim)|Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more |
| ![Star count](https://flat.badgen.net/github/stars/jiangmiao/auto-pairs?label=★&color=black) |[auto-pairs](https://github.com/jiangmiao/auto-pairs)|Vim plugin, insert or delete brackets, parens, quotes in pair |
| ![Star count](https://flat.badgen.net/github/stars/editorconfig/editorconfig-vim?label=★&color=black) |[editorconfig-vim](https://github.com/editorconfig/editorconfig-vim) [:page_facing_up:](plug_plugins/editorconfig-vim.vim)|EditorConfig plugin for Vim |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-unimpaired?label=★&color=black) |[vim-unimpaired](https://github.com/tpope/vim-unimpaired)|unimpaired.vim: Pairs of handy bracket mappings |
| ![Star count](https://flat.badgen.net/github/stars/nathanaelkane/vim-indent-guides?label=★&color=black) |[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) [:page_facing_up:](plug_plugins/vim-indent-guides.vim)|A Vim plugin for visually displaying indent levels in code |
| ![Star count](https://flat.badgen.net/github/stars/godlygeek/tabular?label=★&color=black) |[tabular](https://github.com/godlygeek/tabular)|Vim script for text filtering and alignment |
| ![Star count](https://flat.badgen.net/github/stars/justinmk/vim-sneak?label=★&color=black) |[vim-sneak](https://github.com/justinmk/vim-sneak) [:page_facing_up:](plug_plugins/vim-sneak.vim)|The missing motion for Vim :athletic_shoe: |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-abolish?label=★&color=black) |[vim-abolish](https://github.com/tpope/vim-abolish)|abolish.vim: easily search for, substitute, and abbreviate multiple variants of a word |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-dadbod?label=★&color=black) |[vim-dadbod](https://github.com/tpope/vim-dadbod) [:page_facing_up:](plug_plugins/vim-dadbod.vim)|dadbod.vim: Modern database interface for Vim |
| ![Star count](https://flat.badgen.net/github/stars/janko-m/vim-test?label=★&color=black) |[vim-test](https://github.com/janko-m/vim-test)|Run your tests at the speed of thought |
| ![Star count](https://flat.badgen.net/github/stars/wellle/targets.vim?label=★&color=black) |[targets.vim](https://github.com/wellle/targets.vim)|Vim plugin that provides additional text objects |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-repeat?label=★&color=black) |[vim-repeat](https://github.com/tpope/vim-repeat)|repeat.vim: enable repeating supported plugin maps with "." |
| ![Star count](https://flat.badgen.net/github/stars/Xuyuanp/nerdtree-git-plugin?label=★&color=black) |[nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)|A plugin of NERDTree showing git status |
| ![Star count](https://flat.badgen.net/github/stars/iamcco/markdown-preview.nvim?label=★&color=black) |[markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)|markdown preview plugin for (neo)vim |
| ![Star count](https://flat.badgen.net/github/stars/mbbill/undotree?label=★&color=black) |[undotree](https://github.com/mbbill/undotree) [:page_facing_up:](plug_plugins/undotree.vim)|The undo history visualizer for VIM |
| ![Star count](https://flat.badgen.net/github/stars/nanotech/jellybeans.vim?label=★&color=black) |[jellybeans.vim](https://github.com/nanotech/jellybeans.vim) [:page_facing_up:](plug_plugins/jellybeans.vim)|A colorful, dark color scheme for Vim. |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-eunuch?label=★&color=black) |[vim-eunuch](https://github.com/tpope/vim-eunuch)|eunuch.vim: Helpers for UNIX |
| ![Star count](https://flat.badgen.net/github/stars/AndrewRadev/splitjoin.vim?label=★&color=black) |[splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim) [:page_facing_up:](plug_plugins/splitjoin.vim)|Switch between single-line and multiline forms of code |
| ![Star count](https://flat.badgen.net/github/stars/dyng/ctrlsf.vim?label=★&color=black) |[ctrlsf.vim](https://github.com/dyng/ctrlsf.vim)|An ack.vim alternative mimics Ctrl-Shift-F on Sublime Text 2 |
| ![Star count](https://flat.badgen.net/github/stars/ap/vim-css-color?label=★&color=black) |[vim-css-color](https://github.com/ap/vim-css-color)|Preview colours in source code while editing |
| ![Star count](https://flat.badgen.net/github/stars/tomtom/tcomment_vim?label=★&color=black) |[tcomment_vim](https://github.com/tomtom/tcomment_vim) [:page_facing_up:](plug_plugins/tcomment_vim.vim)|An extensible & universal comment vim-plugin that also handles embedded filetypes |
| ![Star count](https://flat.badgen.net/github/stars/kana/vim-textobj-user?label=★&color=black) |[vim-textobj-user](https://github.com/kana/vim-textobj-user)|Vim plugin: Create your own text objects |
| ![Star count](https://flat.badgen.net/github/stars/mhinz/vim-grepper?label=★&color=black) |[vim-grepper](https://github.com/mhinz/vim-grepper) [:page_facing_up:](plug_plugins/vim-grepper.vim)|:space_invader: Helps you win at grep. |
| ![Star count](https://flat.badgen.net/github/stars/haya14busa/incsearch.vim?label=★&color=black) |[incsearch.vim](https://github.com/haya14busa/incsearch.vim) [:page_facing_up:](plug_plugins/incsearch.vim)|:flashlight: Improved incremental searching for Vim |
| ![Star count](https://flat.badgen.net/github/stars/xolox/vim-session?label=★&color=black) |[vim-session](https://github.com/xolox/vim-session) [:page_facing_up:](plug_plugins/vim-session.vim)|Extended session management for Vim (:mksession on steroids) |
| ![Star count](https://flat.badgen.net/github/stars/sbdchd/neoformat?label=★&color=black) |[neoformat](https://github.com/sbdchd/neoformat) [:page_facing_up:](plug_plugins/neoformat.vim)|:sparkles: A (Neo)vim plugin for formatting code. |
| ![Star count](https://flat.badgen.net/github/stars/octol/vim-cpp-enhanced-highlight?label=★&color=black) |[vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight) [:page_facing_up:](plug_plugins/vim-cpp-enhanced-highlight.vim)|Additional Vim syntax highlighting for C++ (including C++11/14/17) |
| ![Star count](https://flat.badgen.net/github/stars/mg979/vim-visual-multi?label=★&color=black) |[vim-visual-multi](https://github.com/mg979/vim-visual-multi) [:page_facing_up:](plug_plugins/vim-visual-multi.vim)|Multiple cursors plugin for vim/neovim |
| ![Star count](https://flat.badgen.net/github/stars/moll/vim-node?label=★&color=black) |[vim-node](https://github.com/moll/vim-node)|Tools and environment to make Vim superb for developing with Node.js. Like Rails.vim for Node. |
| ![Star count](https://flat.badgen.net/github/stars/chrisbra/csv.vim?label=★&color=black) |[csv.vim](https://github.com/chrisbra/csv.vim)|A Filetype plugin for csv files |
| ![Star count](https://flat.badgen.net/github/stars/junegunn/vim-peekaboo?label=★&color=black) |[vim-peekaboo](https://github.com/junegunn/vim-peekaboo) [:page_facing_up:](plug_plugins/vim-peekaboo.vim)|:eyes: " / @ / CTRL-R |
| ![Star count](https://flat.badgen.net/github/stars/maksimr/vim-jsbeautify?label=★&color=black) |[vim-jsbeautify](https://github.com/maksimr/vim-jsbeautify) [:page_facing_up:](plug_plugins/vim-jsbeautify.vim)|vim plugin which formated javascript files by js-beautify |
| ![Star count](https://flat.badgen.net/github/stars/MaxMEllon/vim-jsx-pretty?label=★&color=black) |[vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty)|:flashlight: [Vim script] JSX and TSX syntax pretty highlighting for vim. |
| ![Star count](https://flat.badgen.net/github/stars/machakann/vim-highlightedyank?label=★&color=black) |[vim-highlightedyank](https://github.com/machakann/vim-highlightedyank)|Make the yanked region apparent! |
| ![Star count](https://flat.badgen.net/github/stars/takac/vim-hardtime?label=★&color=black) |[vim-hardtime](https://github.com/takac/vim-hardtime) [:page_facing_up:](plug_plugins/vim-hardtime.vim)|Plugin to help you stop repeating the basic movement keys |
| ![Star count](https://flat.badgen.net/github/stars/tiagofumo/vim-nerdtree-syntax-highlight?label=★&color=black) |[vim-nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight) [:page_facing_up:](plug_plugins/vim-nerdtree-syntax-highlight.vim)|Extra syntax and highlight for nerdtree files |
| ![Star count](https://flat.badgen.net/github/stars/Valloric/MatchTagAlways?label=★&color=black) |[MatchTagAlways](https://github.com/Valloric/MatchTagAlways) [:page_facing_up:](plug_plugins/MatchTagAlways.vim)|A Vim plugin that always highlights the enclosing html/xml tags |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-rhubarb?label=★&color=black) |[vim-rhubarb](https://github.com/tpope/vim-rhubarb)|rhubarb.vim: GitHub extension for fugitive.vim |
| ![Star count](https://flat.badgen.net/github/stars/AndrewRadev/switch.vim?label=★&color=black) |[switch.vim](https://github.com/AndrewRadev/switch.vim) [:page_facing_up:](plug_plugins/switch.vim)|A simple Vim plugin to switch segments of text with predefined replacements |
| ![Star count](https://flat.badgen.net/github/stars/wellle/tmux-complete.vim?label=★&color=black) |[tmux-complete.vim](https://github.com/wellle/tmux-complete.vim)|Vim plugin for insert mode completion of words in adjacent tmux panes |
| ![Star count](https://flat.badgen.net/github/stars/lifepillar/vim-colortemplate?label=★&color=black) |[vim-colortemplate](https://github.com/lifepillar/vim-colortemplate)|The Toolkit for Vim Color Scheme Designers! |
| ![Star count](https://flat.badgen.net/github/stars/psliwka/vim-smoothie?label=★&color=black) |[vim-smoothie](https://github.com/psliwka/vim-smoothie) [:page_facing_up:](plug_plugins/vim-smoothie.vim)|Smooth scrolling for Vim done right🥤 |
| ![Star count](https://flat.badgen.net/github/stars/wellle/tmux-complete.vim?label=★&color=black) |[tmux-complete.vim](https://github.com/wellle/tmux-complete.vim)|Vim plugin for insert mode completion of words in adjacent tmux panes |
| ![Star count](https://flat.badgen.net/github/stars/yuki-ycino/fzf-preview.vim?label=★&color=black) |[fzf-preview.vim](https://github.com/yuki-ycino/fzf-preview.vim) [:page_facing_up:](plug_plugins/fzf-preview.vim)|Dark powered fzf plugin |
| ![Star count](https://flat.badgen.net/github/stars/tyru/open-browser.vim?label=★&color=black) |[open-browser.vim](https://github.com/tyru/open-browser.vim) [:page_facing_up:](plug_plugins/open-browser.vim)|Open URI with your favorite browser from your most favorite editor |
| ![Star count](https://flat.badgen.net/github/stars/jparise/vim-graphql?label=★&color=black) |[vim-graphql](https://github.com/jparise/vim-graphql)|A Vim plugin that provides GraphQL file detection, syntax highlighting, and indentation. |
| ![Star count](https://flat.badgen.net/github/stars/xolox/vim-misc?label=★&color=black) |[vim-misc](https://github.com/xolox/vim-misc)|Miscellaneous auto-load Vim scripts |
| ![Star count](https://flat.badgen.net/github/stars/jparise/vim-graphql?label=★&color=black) |[vim-graphql](https://github.com/jparise/vim-graphql)|A Vim plugin that provides GraphQL file detection, syntax highlighting, and indentation. |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-ragtag?label=★&color=black) |[vim-ragtag](https://github.com/tpope/vim-ragtag)|ragtag.vim: ghetto HTML/XML mappings (formerly allml.vim) |
| ![Star count](https://flat.badgen.net/github/stars/tmux-plugins/vim-tmux-focus-events?label=★&color=black) |[vim-tmux-focus-events](https://github.com/tmux-plugins/vim-tmux-focus-events)|Make terminal vim and tmux work better together. |
| ![Star count](https://flat.badgen.net/github/stars/tmux-plugins/vim-tmux?label=★&color=black) |[vim-tmux](https://github.com/tmux-plugins/vim-tmux) [:page_facing_up:](plug_plugins/vim-tmux.vim)|vim plugin for tmux.conf |
| ![Star count](https://flat.badgen.net/github/stars/haya14busa/vim-asterisk?label=★&color=black) |[vim-asterisk](https://github.com/haya14busa/vim-asterisk) [:page_facing_up:](plug_plugins/vim-asterisk.vim)|:snowflake: *-Improved |
| ![Star count](https://flat.badgen.net/github/stars/kristijanhusak/vim-dadbod-ui?label=★&color=black) |[vim-dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui) [:page_facing_up:](plug_plugins/vim-dadbod-ui.vim)|Simple UI for https://github.com/tpope/vim-dadbod |
| ![Star count](https://flat.badgen.net/github/stars/antoinemadec/coc-fzf?label=★&color=black) |[coc-fzf](https://github.com/antoinemadec/coc-fzf) [:page_facing_up:](plug_plugins/coc-fzf.vim)|fzf :heart: coc.nvim |
| ![Star count](https://flat.badgen.net/github/stars/lifepillar/pgsql.vim?label=★&color=black) |[pgsql.vim](https://github.com/lifepillar/pgsql.vim) [:page_facing_up:](plug_plugins/pgsql.vim)|The best PostgreSQL plugin for Vim! |
| ![Star count](https://flat.badgen.net/github/stars/antoinemadec/coc-fzf?label=★&color=black) |[coc-fzf](https://github.com/antoinemadec/coc-fzf) [:page_facing_up:](plug_plugins/coc-fzf.vim)|fzf :heart: coc.nvim |
| ![Star count](https://flat.badgen.net/github/stars/christoomey/vim-sort-motion?label=★&color=black) |[vim-sort-motion](https://github.com/christoomey/vim-sort-motion)|Vim mapping for sorting a range of text |
| ![Star count](https://flat.badgen.net/github/stars/machakann/vim-swap?label=★&color=black) |[vim-swap](https://github.com/machakann/vim-swap) [:page_facing_up:](plug_plugins/vim-swap.vim)|Reorder delimited items. |
| ![Star count](https://flat.badgen.net/github/stars/yssl/QFEnter?label=★&color=black) |[QFEnter](https://github.com/yssl/QFEnter) [:page_facing_up:](plug_plugins/QFEnter.vim)|Open a Quickfix item in a window you choose. (Vim plugin) |
| ![Star count](https://flat.badgen.net/github/stars/Valloric/ListToggle?label=★&color=black) |[ListToggle](https://github.com/Valloric/ListToggle) [:page_facing_up:](plug_plugins/ListToggle.vim)|A vim plugin for toggling the display of the quickfix list and the location-list. |
| ![Star count](https://flat.badgen.net/github/stars/AndrewRadev/tagalong.vim?label=★&color=black) |[tagalong.vim](https://github.com/AndrewRadev/tagalong.vim)|Change an HTML(ish) opening tag and take the closing one along as well |
| ![Star count](https://flat.badgen.net/github/stars/haya14busa/incsearch-fuzzy.vim?label=★&color=black) |[incsearch-fuzzy.vim](https://github.com/haya14busa/incsearch-fuzzy.vim) [:page_facing_up:](plug_plugins/incsearch-fuzzy.vim)| |
| ![Star count](https://flat.badgen.net/github/stars/jszakmeister/vim-togglecursor?label=★&color=black) |[vim-togglecursor](https://github.com/jszakmeister/vim-togglecursor) [:page_facing_up:](plug_plugins/vim-togglecursor.vim)|Toggle the cursor shape in the terminal for Vim. |
| ![Star count](https://flat.badgen.net/github/stars/itspriddle/vim-marked?label=★&color=black) |[vim-marked](https://github.com/itspriddle/vim-marked)|Open the current Markdown buffer in Marked.app |
| ![Star count](https://flat.badgen.net/github/stars/haya14busa/incsearch-easymotion.vim?label=★&color=black) |[incsearch-easymotion.vim](https://github.com/haya14busa/incsearch-easymotion.vim) [:page_facing_up:](plug_plugins/incsearch-easymotion.vim)| |
| ![Star count](https://flat.badgen.net/github/stars/sk1418/Join?label=★&color=black) |[Join](https://github.com/sk1418/Join)|a better (hopefully) :Join command in vim |
| ![Star count](https://flat.badgen.net/github/stars/ludovicchabant/vim-lawrencium?label=★&color=black) |[vim-lawrencium](https://github.com/ludovicchabant/vim-lawrencium)|A Mercurial wrapper for Vim. |
| ![Star count](https://flat.badgen.net/github/stars/jonsmithers/vim-html-template-literals?label=★&color=black) |[vim-html-template-literals](https://github.com/jonsmithers/vim-html-template-literals)|Syntax highlighting for html template literals in javascript (as in lit-html and polymer 3) |
| ![Star count](https://flat.badgen.net/github/stars/vim-scripts/scratch.vim?label=★&color=black) |[scratch.vim](https://github.com/vim-scripts/scratch.vim)|Plugin to create and use a scratch Vim buffer |
| ![Star count](https://flat.badgen.net/github/stars/papanikge/vim-voogle?label=★&color=black) |[vim-voogle](https://github.com/papanikge/vim-voogle) [:page_facing_up:](plug_plugins/vim-voogle.vim)|google for the word under the cursor to a browser because 2013 |
| ![Star count](https://flat.badgen.net/github/stars/justinj/vim-textobj-reactprop?label=★&color=black) |[vim-textobj-reactprop](https://github.com/justinj/vim-textobj-reactprop)|A vim text object for a React prop |
| ![Star count](https://flat.badgen.net/github/stars/vim-scripts/HelpClose?label=★&color=black) |[HelpClose](https://github.com/vim-scripts/HelpClose)|Close all help windows |
| ![Star count](https://flat.badgen.net/github/stars/mutewinter/vim-autoreadwatch?label=★&color=black) |[vim-autoreadwatch](https://github.com/mutewinter/vim-autoreadwatch)|A forked script for vim auto reloading of buffers when changed on disk. |

_That's 83 plugins, holy crap._

_Generated by `rake update_readme` on 2020/10/10._

