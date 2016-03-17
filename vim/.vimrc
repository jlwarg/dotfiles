set nocompatible              " be iMproved, required
filetype off                  " required
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set encoding=utf8
set number
set relativenumber
set hlsearch
set incsearch
set mouse=a
set background=dark
"set background=light
set hidden
set backspace=2
syntax on

:inoremap # X<C-H>#

source /usr/lib/python3.5/site-packages/powerline/bindings/vim/plugin/powerline.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
" fuzzy file finder, will probably replace Nerdtree in the long run
Plugin 'ctrlpvim/ctrlp.vim'
" Nerdtree
Plugin 'scrooloose/nerdtree'
" NerdCommenter
Plugin 'scrooloose/nerdcommenter'
" colorschemes
Plugin 'flazz/vim-colorschemes'
" syntastic
Plugin 'scrooloose/syntastic'
" minibufexplorer
Plugin 'fholgado/minibufexpl.vim'
" virtualenv
Plugin 'jmcantrell/vim-virtualenv'
" tslime (send stuff to tmux)
Plugin 'jgdavey/tslime.vim'
" for seamless vim split/tmux pane navigation
Plugin 'christoomey/vim-tmux-navigator'
" auto-close parentheses
Plugin 'jiangmiao/auto-pairs'
" The following are for clojure(script) mostly
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme 256_noir
let mapleader = " "

map <F3> :bp<CR> 
map <F4> :bn<CR>
map <F12> :Tlist<CR>
map <F2> :NERDTreeToggle<CR>
map <Leader>fs :w<CR>
map <Leader>ft :NERDTreeToggle<CR>
map <Leader>pt :NERDTreeToggle<CR>
imap fd <ESC>

set guifont=DejaVu\ Sans\ Mono\ for\ Powwerline\ 9
"Always show statusline
set laststatus=2

"Use 256 colours
set t_Co=256
set term=xterm-256color
"Solarized
let g:solarized_termcolors=16
"MiniBufexplorer
"keep syntax highlighting when closing buffer
let g:MiniBufExplForceSyntaxEnable=1

"YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion=1

"Powerline
let g:powerline_pycmd="py3"

"tslime
vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars
