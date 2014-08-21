" Version: 20140821
" http://vimdoc.sourceforge.net/htmldoc/options.html

" COLOR
set background=dark   " (dark/light) background
" colorscheme desert

" SYNTAX
syntax on             " Syntax highlighting
set showmatch         " Show matching brackets

" INTERFACE
set showcmd           " Show (partial) command in the last line of the screen
set visualbell        " Use visual bell instead of beeping

" SEARCH 
set ignorecase        " Ignore case in search patterns
set incsearch         " Incremental searching
set hlsearch          " Highlight all matches

" TABS
set tabstop=4         " tab = 4 spaces
set shiftwidth=4      " tab after indent = 4 spaces
set softtabstop=4     " real tab character instead of spaces
set expandtab         " use spaces instead of tabs to indent

" MAPPINGS
nmap :W :w
nmap :X :x
nmap :Q :q
