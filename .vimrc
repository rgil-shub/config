" .vimrc

" Requires: 
" + monokai colorscheme
" + vim-spell-en vim-spell-es
" URLs:
" + https://github.com/sickill/vim-monokai
" + ftp://ftp.vim.org/pub/vim/runtime/spell
" + http://vimdoc.sourceforge.net/htmldoc/options.html
" Version: 20141211

" SPELL 
" set spell
" set spelllang=en
" set spelllang=es

" COLOR
set background=dark   " (dark/light) background
" colorscheme monokai " colorscheme dir: ~/.vim/colors

" SYNTAX
syntax on             " Syntax highlighting
set showmatch         " Show matching brackets

" INTERFACE
set showcmd           " Show (partial) command in the last line of the screen
set wildmenu          " Visual autocomplete for command menu
set cursorline        " Highlight current line
" set number          " Show line numbers
" set visualbell      " Use visual bell instead of beeping

" GENERAL
set autoread          " Auto read when a file is changed from the outside
set lazyredraw        " Redraw only when we need to
filetype plugin on    " Enable filetype plugins
filetype indent on    " Load filetype-specific indent files

" SEARCH 
set ignorecase        " Ignore case in search patterns
set smartcase         " Search pattern with upper case characters
set incsearch         " Incremental searching
set hlsearch          " Highlight all matches
set wrapscan          " Searches wrap around the end of the file

" TABS
set tabstop=4         " tab = 4 spaces
set shiftwidth=4      " tab after indent = 4 spaces
set softtabstop=4     " real tab character instead of spaces
set expandtab         " use spaces instead of tabs to indent
set autoindent        " copy the indentation from the previous line

" MAPPINGS
nmap :W :w
nmap :X :x
nmap :Q :q
