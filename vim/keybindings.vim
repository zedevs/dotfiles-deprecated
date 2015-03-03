" clear search
nnoremap <leader><space> :noh<cr>

" clear trailing spaces
nnoremap <leader>ts :%s/\s\+$//e<cr>

" toggle tabstops and EOLS
nnoremap <leader>l :set list!<cr>

" toggle spell check
nnoremap <leader>s :set spell!<cr>

" toggle numbers
nnoremap <leader>nm :set number!<cr>

" open file explorer
nnoremap <C-k> :Explore<cr>

" list and select buffers
nnoremap <leader>b :buffers<cr>:b

" fold tags with matchit
noremap <leader>ft V%zf

" remap redo to U
noremap U <C-r>

" normal mode quick access
inoremap jj <esc>
inoremap kk <c-o>

" Tabline shortcuts
nmap <D-1> <Plug>AirlineSelectTab1
nmap <D-2> <Plug>AirlineSelectTab2
nmap <D-3> <Plug>AirlineSelectTab3
nmap <D-4> <Plug>AirlineSelectTab4
nmap <D-5> <Plug>AirlineSelectTab5
nmap <D-6> <Plug>AirlineSelectTab6
nmap <D-7> <Plug>AirlineSelectTab7
nmap <D-8> <Plug>AirlineSelectTab8
nmap <D-9> <Plug>AirlineSelectTab9

" TODO: shortcut for copying to system clipboard

