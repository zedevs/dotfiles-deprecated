set nocompatible
let mapleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'ajh17/Spacegray.vim'
Plugin 'rking/ag.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'JazzCore/ctrlp-cmatcher' " manual install required
Plugin 'tpope/vim-vinegar'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'AndrewRadev/writable_search.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mtth/scratch.vim'

" Lnaguage specific
Plugin 'slim-template/vim-slim'
Plugin 'othree/html5.vim'
Plugin 'chrisbra/csv.vim'
Plugin 'kchmck/vim-coffee-script'

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
set backspace=2
set backspace=indent,eol,start
set complete-=i
set history=1000
set hidden

" centralize backups, swapfiles, history and undo
set undofile
set undolevels=100
set undodir=~/.vim/undo
set viminfo+=n~/.vim/viminfo
set backupdir=~/.vim/backups
set noswapfile

" look and feel
set t_Co=256
colorscheme spacegray
syntax enable
set number
set ruler
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set scrolloff=3
set noerrorbells visualbell t_vb=

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

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" CtrlP + Cmatcher
let g:ctrlp_match_func = {'match' : 'matcher#cmatch'}
let g:ctrlp_custom_ignore = { 'dir': '\v(vundle|vim-backup|vim-undo)|([\/]\.(git|hg|svn)$)' }
let g:ctrlp_working_path_mode = '0'


" Writable Search
let g:writable_search_backends = ['ag.vim', 'egrep']

" TComment
map <Leader>, :TComment<cr>

