set nocompatible
syntax on

set shortmess+=I
set background=dark
colorscheme peachpuff

"Sets the left hand column to show you the line# and the rel#
set number
set relativenumber

set laststatus=2
set backspace=indent,eol,start
set hidden

set ignorecase
set smartcase
set incsearch

set noerrorbells visualbell t_vb=

"Vim 8 allows for adding packages in the ~/.vim/pack/vendor/start/ directory that will be loaded when vim is loaded.

"======================== Install NerdTree by cloning the repo =================================="
"git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
map ` :NERDTreeToggle <cr>
