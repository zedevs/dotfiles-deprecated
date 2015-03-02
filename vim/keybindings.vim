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

" TODO: shortcut for copying to system clipboard

