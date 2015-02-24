# antigen
source ~/dotfiles/zsh/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme dpoggi
antigen apply

#
. ~/.zsh/aliases
. ~/.zsh/config
. ~/.zsh/env

if [ -f ~/.localrc ]; then
  . ~/.localrc
fi

for zshrc_file in ~/.zsh/init/S[0-9][0-9]*[^~] ; do
  source $zshrc_file
done

