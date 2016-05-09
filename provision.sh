#/usr/bin/env bash

# Install Brew if not installed
# command -v brew > /dev/null || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Brew and Formulae
brew update

# Install brew bundle
brew tap Homebrew/bundle

# Install tools and apps from the Brewfile wih Brew and Cask
brew bundle --file=Brewfile

# Cleanup old downloads
brew cleanup

sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# set deafult shell to zsh
echo `which zsh` | sudo tee -a /etc/shells
chsh -s `which zsh`

# link files
current_dir="$(dirname $(readlink -f $0))"
mkdir $HOME/.config
ln -s $current_dir/vim $HOME/.config/nvim
ln -s $current_dir/vimrc $HOME/.config/nvim/init.vim
ln -s $current_dir/vim $HOME/.vim
ln -s $current_dir/gitconfig $HOME/.gitconfig
ln -s $current_dir/gitconfig.private $HOME/.gitconfig.private
ln -s $current_dir/script $HOME/.script
ln -s $current_dir/zshrc $HOME/.zshrc
ln -s $current_dir/zsh $HOME/.zsh
ln -s $current_dir/bashrc $HOME/.bashrc
ln -s $current_dir/bash $HOME/.bash

# pull nvim plugins
git submodule init
git submodule update

# install nvim plugins with Vundle
nvim +PluginInstall +qall

# compile ctrlp-cmatcher
export CFLAGS=-Qunused-arguments
export CPPFLAGS=-Qunused-arguments
bash $HOME/.vim/bundle/ctrlp-cmatcher/install.sh

# setup OSX
bash $current_dir/osx_config

