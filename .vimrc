" .vimrc
" Version: 2014082209
" http://vimdoc.sourceforge.net/htmldoc/options.html

" COLOR
set background=dark   " (dark/light) background
" colorscheme desert

" SYNTAX
syntax on             " Syntax highlighting
set showmatch         " Show matching brackets

" INTERFACE
set showcmd           " Show (partial) command in the last line of the screen
set wildmenu          " Visual autocomplete for command menu
" set cursorline      " Highlight current line
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
