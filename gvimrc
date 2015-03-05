set background=dark
colorscheme spacegray
set guifont=Sauce\ Code\ Powerline:h14
set guioptions-=L
set guioptions-=r
" cmd-w shouldn't close the last buffer in MacVim
if has("gui_macvim")
  macmenu &Edit.Find.Find\.\.\. key=<Nop>
  macmenu &File.Close key=<Nop>
end
