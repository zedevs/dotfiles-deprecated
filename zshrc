# antigen
source ~/dotfiles/zsh/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme dpoggi
antigen apply

. ~/.zsh/aliases
. ~/.zsh/env

# rbenv shims
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

