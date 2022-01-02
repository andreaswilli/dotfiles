#!/bin/zsh

echo "⚙️  Changing macOS settings..."

# =====================================
# trackpad & gestures
# =====================================

# three finger drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

# tap to click
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1
defaults write com.apple.dock showLaunchpadGestureEnabled -int 0

# enable silent clicking
defaults write com.apple.AppleMultitouchTrackpad ActuationStrength -int 0

# =====================================
# dock
# =====================================

# hide dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 1000
defaults write com.apple.dock no-bouncing -bool TRUE
killall Dock

# =====================================
# sound
# =====================================

# change alert sound
defaults write .GlobalPreferences com.apple.sound.beep.sound /System/Library/Sounds/Pop.aiff

# =====================================
# auto correct, etc.
# =====================================

# disable annoying stuff
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# =====================================
# other stuff
# =====================================

# expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# disable recent items
defaults write NSGlobalDomain NSRecentDocumentsLimit 0

# keep order of spaces
defaults write com.apple.dock mru-spaces -int 0

echo "⚙️  Done. Some settings get only applied after logout."
