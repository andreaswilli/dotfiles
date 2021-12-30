#!/bin/zsh

# install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install chezmoi to path (was temporarily installed in $TMPDIR by install script)
brew install chezmoi

# install software with Homebrew/mas-cli
# HOMEBREW_CASK_OPTS=--no-quarantine brew bundle
