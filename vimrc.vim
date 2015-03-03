set nocompatible
let mapleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'rking/ag.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ajh17/Spacegray.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tomtom/tcomment_vim'
Plugin 'tmhedberg/matchit'
Plugin 'Raimondi/delimitMate' " autocloses (,[,' etc.
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'

call vundle#end()
filetype plugin indent on

" include keyboard shortcuts
source ~/.vim/keybindings.vim

" include custom functions
source ~/.vim/functions.vim

" sensible defaults
set laststatus=2
set showcmd
set wildmenu
set ttimeout
set ttimeoutlen=100
set backspace=indent,eol,start
set complete-=i
set history=1000

" centralize backups, swapfiles, history and undo
set undofile
set viminfo+=n~/.vim/viminfo
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" looks
set t_Co=256
colorscheme spacegray
syntax enable
set number
set ruler
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set scrolloff=3
set noerrorbells visualbell t_vb= " Disable error bells

" tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" search settings
set hlsearch
set ignorecase
set smartcase
set incsearch

" line wrapping
set wrap
set textwidth=80
set formatoptions=qrn1
set linebreak

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

