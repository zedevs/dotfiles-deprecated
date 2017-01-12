#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";


function doIt() {
	rsync --exclude ".git/" \
		--exclude "script/" \
		--exclude "terminal/" \
		--exclude ".DS_Store" \
		--exclude "*.swp" \
		--exclude ".gitmodules" \
		--exclude "node_modules" \
		--exclude "bootstrap.sh" \
		--exclude "brew.sh" \
		--exclude "osx.sh" \
		--exclude "provision.sh" \
		--exclude "README.md" \
		-avh --no-perms . ~;
	source ~/.bashrc;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
