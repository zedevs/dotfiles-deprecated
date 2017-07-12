# antigen
source ~/.zsh/antigen/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme https://gist.github.com/zedevs/c37fa8fb7edc22da0355 dpoggi
antigen apply

. ~/.zsh/aliases
. ~/.zsh/env

# rbenv shims
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
