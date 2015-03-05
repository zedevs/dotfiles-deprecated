source ~/.bash/aliases
source ~/.bash/env
source ~/.bash/config

export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

