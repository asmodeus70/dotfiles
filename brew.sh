#!/usr/bin/env zsh

# Testing gpg
# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ack
brew install git
brew install gs
brew install pv
brew install ssh-copy-id
brew install as-tree
brew install fd
brew install exa
brew install googler
brew install --cask uninstallpkg
brew install --cask iterm2
brew install --cask itsycal
brew install --cask jiggler
brew install grip # https://github.com/joeyespo/grip
brew install zoxide
brew install fzf
brew install procs

# Install development tools
brew install packer
brew install tfenv
brew install ansible
brew install awscli
brew install golang
brew install bat
brew install jq
brew install --cask visual-studio-code

# Remove outdated versions from the cellar.
brew cleanup
