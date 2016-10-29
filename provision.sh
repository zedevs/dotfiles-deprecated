#/usr/bin/env bash

sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
git submodule init
git submodule update

if hash nvim 2>/dev/null; then
  # install nvim plugins with Vundle
  nvim +PluginInstall +qall
  
  # compile ctrlp-cmatcher
  export CFLAGS=-Qunused-arguments
  export CPPFLAGS=-Qunused-arguments
  bash $HOME/.vim/bundle/ctrlp-cmatcher/install.sh
fi
