#!/bin/zsh

echo "🔡 Installing fonts..."

cd "$HOME/Library/Fonts"

if [ ! -f "$HOME/Library/Fonts/MesloLGS NF Regular.ttf" ]; then
curl https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Regular.ttf --output 'MesloLGS NF Regular.ttf'
fi

if [ ! -f "$HOME/Library/Fonts/MesloLGS NF Bold.ttf" ]; then
curl https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Bold.ttf --output 'MesloLGS NF Bold.ttf'
fi

if [ ! -f "$HOME/Library/Fonts/MesloLGS NF Italic.ttf" ]; then
curl https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Italic.ttf --output 'MesloLGS NF Italic.ttf'
fi

if [ ! -f "$HOME/Library/Fonts/MesloLGS NF Bold Italic.ttf" ]; then
curl https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Bold%20Italic.ttf --output 'MesloLGS NF Bold Italic.ttf'
fi

cd -

echo "🔡 Done."
