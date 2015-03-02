set background=dark
colorscheme spacegray
set guifont=Inconsolata\ for\ Powerline:h15
set guioptions-=L
" cmd-w shouldn't close the last buffer in MacVim
if has("gui_macvim")
  macmenu &Edit.Find.Find\.\.\. key=<Nop>
  macmenu &File.Close key=<Nop>
end
