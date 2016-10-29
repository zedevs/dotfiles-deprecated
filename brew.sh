#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install 'coreutils'
brew install 'moreutils'
brew install 'findutils'
brew install 'gnu-sed' --default-names
brew install 'git'
brew install 'ctags'
brew install 'curl'
brew install 'wget' --with-iri
brew install 'p7zip'
brew install 'pigz'
brew install 'pv'
brew install 'rename'
brew install 'tree'
brew install 'webkit2png'
brew install 'zopfli'
brew install 'ctags'
brew install 'homebrew/dupes/openssh'
brew install zsh
brew install 'diff-so-fancy'

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/zsh;
fi;

# Text editing
brew install 'vim' --override-system-vi
brew install neovim/neovim/neovim
brew install 'the_silver_searcher'
brew install 'homebrew/dupes/grep'
brew install 'tmux'
brew install 'reattach-to-user-namespace'
brew install emacs

# Image related
brew install 'imagemagick' --with-webp --with-tiff
brew install 'jpegoptim'
brew install 'optipng'

# Languages
brew install 'rbenv'
brew install 'ruby-build'
brew install 'python3'
brew install 'python'
brew install 'node'
brew tap  homebrew/php'
brew install 'homebrew/php/php70' --with-gmp
brew install 'homebrew/php/php70-xdebug'

# Databases
brew install 'postgresql'

# Useful completions
brew tap 'homebrew/completions'
brew install 'homebrew/completions/brew-cask-completion'
brew install 'homebrew/completions/bundler-completion'
brew install 'homebrew/completions/gem-completion'
brew install 'homebrew/completions/open-completion'
brew 'homebrew/completions/vagrant-completion'

# GUI
brew tap  'caskroom/cask'
brew tap  'caskroom/versions'
brew cask install '1password'
brew cask install 'atom'
brew cask install 'evernote'
brew cask install 'filezilla'
brew cask install 'slack'
brew cask install 'skype'
brew cask install 'sketch'
brew cask install 'spotify'
brew cask install 'vagrant'
brew cask install 'virtualbox'
brew cask install 'vlc'

# Fonts
brew tap  'caskroom/fonts'
brew tap  'bramstein/webfonttools'
brew cask install 'font-source-code-pro'
brew install 'sfnt2woff'
brew install 'sfnt2woff-zopfli'
brew install 'woff2'

# Remove outdated versions from the cellar.
brew cleanup
