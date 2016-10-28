" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Looks
Plugin 'ajh17/Spacegray.vim'
Plugin 'mhartington/oceanic-next'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'ryanoasis/vim-devicons'

" Utils
Plugin 'rking/ag.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'JazzCore/ctrlp-cmatcher' " manual install required
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'tomtom/tcomment_vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'AndrewRadev/writable_search.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mtth/scratch.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'chrisbra/csv.vim'
Plugin 'bfontaine/Brewfile.vim'

" tpope
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-haml'

" tmux
Plugin 'epeli/slimux'
Plugin 'tmux-plugins/vim-tmux'

" Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script'

" PHP
Plugin 'StanAngeloff/php.vim'
Plugin 'scrooloose/syntastic'

" Front-end
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'
Plugin 'alvan/vim-closetag'

call vundle#end()
filetype plugin indent on

" include keyboard shortcuts
source $HOME/.vim/keybindings.vim

" include functions
for fnfile in split(globpath($HOME . "/.vim/functions/", "*.vim"), '\n')
  execute('source ' . fnfile)
endfor

" Neovim
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" sensible defaults
set laststatus=2
set showcmd
set wildmenu
set ttimeout
set ttimeoutlen=100
set backspace=2
set complete-=i
set history=1000
set hidden

" centralize backups, swapfiles, history and undo
set undofile
set undolevels=100
set undodir=$HOME/.vim/undo
set noswapfile
set nobackup
set nowritebackup

" theme settings
syntax enable
set background=dark
colorscheme OceanicNext
" hack correct background color
highlight Normal guibg=000000
set number
set ruler
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set scrolloff=3
set noerrorbells visualbell

" tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
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

" Remember cursor position between vim sessions
autocmd BufReadPost *
            \ if line("'\"") > 0 && line ("'\"") <= line("$") |
            \   exe "normal! g'\"" |
            \ endif

" Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme='oceanicnext'

" CtrlP + Cmatcher
let g:ctrlp_match_func = {'match' : 'matcher#cmatch'}
let g:ctrlp_custom_ignore = { 'dir': '\v(vundle|vim-backup|vim-undo)|([\/]\.(git|hg|svn)$)' }
let g:ctrlp_working_path_mode = '0'

" NERDTree
let g:NERDTreeShowHidden=1
let g:NERDTreeHijackNetrw=0
let g:NERDTreeWinSize=30
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeQuitOnOpen=1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

" Writable Search
let g:writable_search_backends = ['ag.vim', 'egrep']

" rspec-vim
let g:rspec_command = 'SlimuxShellRun zeus test {spec}'

" vim-closetag
let g:closetag_filenames = "*.html,*.phtml,*.php,*.html.*"

" syntastic
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes':   [],'passive_filetypes': [] }
noremap <C-w>e :SyntasticToggleMode<cr>
let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_html_checkers = ['']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Ag Silver Searcher – don't open first result
ca Ag Ag!
