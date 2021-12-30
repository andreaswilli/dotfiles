#!/bin/zsh

# install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install chezmoi to path (was temporarily installed in $TMPDIR by install script)
brew install chezmoi