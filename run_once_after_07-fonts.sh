#!/bin/zsh

echo "🔡 Installing fonts..."

cd ~/Library/Fonts
curl https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Regular.ttf --output 'MesloLGS NF Regular.ttf'
curl https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Bold.ttf --output 'MesloLGS NF Bold.ttf'
curl https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Italic.ttf --output 'MesloLGS NF Italic.ttf'
curl https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Bold%20Italic.ttf --output 'MesloLGS NF Bold Italic.ttf'
cd -

echo "🔡 Done."
