set nocompatible
let mapleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'wincent/Command-T'
Plugin '29decibel/codeschool-vim-theme'
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/nerdcommenter' " remove that and write a custom function
Plugin 'tmhedberg/matchit'
Plugin 'ntpeters/vim-better-whitespace'

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

" disable netrw
" let g:loaded_netrw = 1
" let g:loaded_netrwPlugin = 1

