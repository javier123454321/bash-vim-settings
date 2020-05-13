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

map ` :NERDTreeToggle <cr>

"Vim 8 allows for adding packages in the ~/.vim/pack/vendor/start/ directory that will be loaded when vim is loaded.

"======================== Install Plugins by cloning then running the following commands =================================="

" git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
" git clone git://github.com/ajh17/VimCompletesMe.git ~/.vim/pack/vendor/start/VimCompletesMe"

" git clone https://github.com/Valloric/YouCompleteMe ~/.vim/pack/plugins/opt/YouCompleteMe"
" cd ~/.vim/pack/plugins/opt/YouCompleteMe && git submodule update --init --recursive && ./install.py --all
packadd YouCompleteMe
