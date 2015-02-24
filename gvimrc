set background=dark
colorscheme codeschool
set guifont=Inconsolata:h15
highlight ExtraWhitespace guifg=White guibg=#f5a2ad
" cmd-w shouldn't close the last buffer in MacVim
if has("gui_macvim")
  macmenu &Edit.Find.Find\.\.\. key=<Nop>
  macmenu &File.Close key=<Nop>
end
