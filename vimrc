let skip_defaults_vim=1


set nocompatible
syntax on

"set shortmess+=I
set background=dark
colorscheme synthwave

"Sets the left hand column to show you the line# and the rel#
set number
set relativenumber

"Sets the tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"share clipboard with the OS (yanks can be pasted with cmd + v)
"set clipboard=unnamed

set backspace=indent,eol,start
set autoindent

"Scrolloff is the number of lines to buffer from the top or bottom when scrolling
set scrolloff=7

" Makes the set list command easier to understand.
set listchars=tab:→\ ,eol:↲,nbsp:␣,space:·,trail:·,extends:⟩,precedes:⟨

" Map to commonly mistyped words
:command WQ wq
:command Wq wq
:command W w
:command Q q

"Use ctrl+s to save even in insert mode
noremap <C-S> :update<CR>
inoremap <C-S> <C-O>:update<CR>
"Use ctrl+s to save in visual mode without removing selection
vnoremap <C-S> <C-C>:update<CR>gv


" keep search items highlited when in normal mode
" use :noh to turn highlighting off, and press n to highlight again
set hlsearch
set incsearch
set smartcase
set incsearch

"Cursor = | for insert otherwise block
let &t_SI .= "\e[6 q"
let &t_EI .= "\e[2 q"

"Viminfo buffer is how cut and paste persists accross files, which can truncate yanks
set viminfo='20,<1000,s1000
"set viminfo=%,<800,'10,/50,:100,h,f0,n~/.vim/cache/.viminfo
"           | |    |   |   |    | |  + viminfo file path
"           | |    |   |   |    | + file marks 0-9,A-Z 0=NOT stored
"           | |    |   |   |    + disable 'hlsearch' loading viminfo
"           | |    |   |   + command-line history saved
"           | |    |   + search history saved
"           | |    + files marks saved
"           | + lines saved each register (old name for <, vi6.2)
"           + save/restore buffer list

" Disables error sounds and visuals
set noerrorbells visualbell t_vb=

map ` :NERDTreeToggle <cr>

"Vim 8 allows for adding packages in the ~/.vim/pack/vendor/start/ directory that will be loaded when vim is loaded.

"======== Install Plugins by cloning then running the following commands ========"

" git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
" git clone git://github.com/ajh17/VimCompletesMe.git ~/.vim/pack/vendor/start/VimCompletesMe"

" git clone https://github.com/Valloric/YouCompleteMe ~/.vim/pack/plugins/opt/YouCompleteMe"
" cd ~/.vim/pack/plugins/opt/YouCompleteMe && git submodule update --init --recursive && ./install.py --all
" git clone https://github.com/TroyFletcher/vim-colors-synthwave.git ~/.vim/color && mv ~/.vim/color/colors/* ~/.vim/colors/ && rm -rf ~/.vim/color
" If installed using Homebrew
" Install Fuzzy file finder for mac 
" brew install fzf
set rtp+=/usr/local/opt/fzf
 
set encoding=utf-8
packadd YouCompleteMe
