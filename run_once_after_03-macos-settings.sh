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
# keyboard
# =====================================

# enable key-repeating (for vim in vscode)
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# make repeat delays more suitable for use with vim
defaults write "Apple Global Domain" InitialKeyRepeat -int 15
defaults write "Apple Global Domain" KeyRepeat -int 2

# =====================================
# dock
# =====================================

# hide dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 1000
defaults write com.apple.dock no-bouncing -bool TRUE

# hide recent applications
defaults write com.apple.dock show-recents -int 0

# hide indicators for open applications
defaults write com.apple.dock show-process-indicators -int 0

killall Dock

# =====================================
# finder 
# =====================================

# always use list view
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# show all file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# disable extension change warning
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# show path bar
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder PathBarRootAtHome -bool TRUE

# new finder tab shows downloads
defaults write com.apple.finder NewWindowTarget -string 'PfLo'
defaults write com.apple.finder NewWindowTargetPath -string 'file:///Users/andi/Downloads/'

# hide tags from sidebar
defaults write com.apple.Finder ShowRecentTags -bool false

killall Finder

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

# enable scroll gesture to zoom
defaults write com.apple.AppleMultitouchTrackpad HIDScrollZoomModifierMask -int 262144
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad HIDScrollZoomModifierMask -int 262144
defaults write com.apple.universalaccess closeViewScrollWheelToggle -int 1

echo "⚙️  Done. Some settings get only applied after logout."
