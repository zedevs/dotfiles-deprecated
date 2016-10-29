let mapleader = ","

" clear search
nmap <leader><space> :noh<cr>
ab W w

" reload vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" clear trailing spaces
nmap <leader>ts :%s/\s\+$//e<cr>

" toggle tabstops and EOLS
nmap <leader>l :set list!<cr>

" toggle spell check
nmap <leader>s :set spell!<cr>

" toggle numbers
nmap <leader>nm :set number!<cr>

" open file explorer
nmap <C-k> :NERDTreeFind<cr>
autocmd FileType nerdtree noremap <buffer> <C-k> :NERDTreeToggle<cr>

" list and select buffers
nmap <leader>b :buffers<cr>:b

" delete buffer
nmap <leader>x :bd<cr>

" quick quit
nmap <leader>q :q<cr>

" close window
nmap <leader>c :close<cr>

" fold tags with matchit
nmap <leader>ft V%zf

" remap redo to U
nmap U <C-r>

" normal mode quick access
imap jj <esc>
imap jk <esc>

" shiftless commands
noremap ; :
noremap ;; ;

" too slow, so breaking the habbit
nmap <C-c> <nop>

" tabline shortcuts
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" Easier access to system clipboard
map <C-a> "+

" Slimux
map <leader>sl :SlimuxREPLSendLine<CR>
map <leader>ss :SlimuxShellConfigure<CR>

" vim-rspec
map <C-t> :call RunCurrentSpecFile()<CR>
map <leader>ta :SlimuxShellRun be rake test<CR>

" TComment
map <leader>, :TComment<cr>

