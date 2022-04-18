#!/bin/bash

# Judge whether the system is macOS.
if [ "$(uname)" = "Darwin" ] ; then
	# MacOS
	if ! type brew >/dev/null 2>/dev/null; then
		echo "---start install homebrew---"
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	else
		echo "---start upgrade homebrew---"
	fi
else
	# Linux
	echo "homebrew The missing package manager for macOS"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install terminal tools
brew install git
brew install zsh
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install oh-my-zsh
brew install vim
brew install font-meslo-lg-nerd-font
brew install ranger
brew install tmux
brew install highlight
brew install htop
brew install jq
brew install onefetch
brew install neofetch
brew install figlet
brew install most
brew install tree
brew install cask
brew install httpie

# Install cask tools
brew install v2rayu        -- cask
brew install iterm2        -- cask
brew install alacritty     -- cask
brew install tabby         -- cask
brew install google-chrome -- cask
brew install postman       -- cask
brew install vlc           -- cask
brew install tickeys       -- cask
brew install rotato        -- cask

# Cleanup
brew cleanup 
