#!/bin/zsh

if [ -d "${HOME}/.oh-my-zsh" ]; then
  echo "🙃 Oh My Zsh is installed already."
else
  echo "🙃 Installing Oh My Zsh..."
  CHSH=no RUNZSH=no KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo "🙃 Done."
fi
