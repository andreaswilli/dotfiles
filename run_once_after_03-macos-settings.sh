#!/bin/zsh

echo "⚙️  Changing macOS settings..."

# trackpad
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

echo "⚙️  Done. Some settings get only applied after logout."
