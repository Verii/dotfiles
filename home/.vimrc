set background=dark
colorscheme jellybeans

syntax enable
filetype indent on

set textwidth=79
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set showcmd
set number
set relativenumber
set linebreak
set cursorline
set lazyredraw
set showmatch
set hlsearch
set incsearch
set foldenable
set viminfo+=n~/.vim/viminfo
set ruler

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

"set history=50
"set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

execute pathogen#infect()
