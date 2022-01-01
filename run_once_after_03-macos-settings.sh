#!/bin/zsh

echo "⚙️  Changing macOS settings..."

# trackpad
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

# dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 1000
defaults write com.apple.dock no-bouncing -bool TRUE
killall Dock

echo "⚙️  Done. Some settings get only applied after logout."
