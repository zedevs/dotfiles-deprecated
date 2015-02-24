" extracts a variable
function! ExtractVariable()
  try
    let save_a = @a
    let variable = input('Variable name: ')
    normal! gv"ay
    execute "normal! gvc" . variable
    execute "normal! O" . variable . " = " . @a
  finally
    let @a = save_a
  endtry
endfunction
xnoremap <Leader>e <ESC>:call ExtractVariable()<CR>

" close all buffers but the current one
function! Wipeout()
  let l:buffers = range(1, bufnr('$'))
  let l:currentTab = tabpagenr()
  try
    let l:tab = 0
    while l:tab < tabpagenr('$')
      let l:tab += 1
      let l:win = 0
      while l:win < winnr('$')
        let l:win += 1
        let l:thisbuf = winbufnr(l:win)
        call remove(l:buffers, index(l:buffers, l:thisbuf))
      endwhile
    endwhile
    if len(l:buffers)
      execute 'bwipeout' join(l:buffers)
    endif
  finally
    execute 'tabnext' l:currentTab
  endtry
endfunction
nnoremap <leader>a :call Wipeout()<cr>
