# dotfiles

## Installing on a new device

```sh
cd $TMPDIR && sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply andreaswilli; chezmoi apply && cd ~
```

> Additional `chezmoi apply` because decryption fails on the first run (https://github.com/twpayne/chezmoi/issues/1794#issuecomment-1003427435).

### Manual steps

- Copy `.gnupg` to home directory
- Allow full disk access for `Terminal.app` in System Preferences
- Preferences:
  - Security & Privacy:
    - Require password immediately
    - Turn on FileVault
    - Turn on Firewall
  - Mission Control
    - Automatically rearrange Spaces > uncheck
  - Keyboard
    - Shortcuts > Spotlight > Show Spotlight search > `option+space`
    - press fn to > do nothing
  - Bluetooth
    - Show Bluetooth in menu bar
  - Sound
    - Show Sound in menu bar > always
    - Play sound on startup > uncheck
  - Dock & Menu Bar
    - Spotlight > Show in Menu Bar > uncheck
    - Screen Mirroring > Show in Menu Bar > always
    - Bluetooth > Show in Menu Bar > check
  - Battery
    - Battery > Turn display off after > Never
    - Power Adapter > Turn display off after > Never
  - Time Machine
    - Back Up Automatically
    - Show Time Machine in menu bar
- Notification Centre:
  - Adjust widgets
- Finder:
  - Desktop > Sort By > Name
- Application Settings:
  - Alfred
    - Set preferences location to `/Users/andi/SynologyDrive/dotfiles/Alfred`
  - Chromium
    - Extract settings from `/Users/andi/SynologyDrive/dotfiles/chromium/` to `/Users/andi/Library/Application Support/Chromium/`
    - Set shortcuts for Bitwarden extension on `chrome://extensions/shortcuts` (they are saved but for some reason don't work yet and need to be set again)
  - Raycast
    - Import settings from `/Users/andi/SynologyDrive/dotfiles/`
    - Install plugins (do not seem to be part of the settings export):
      - kill process
      - search emoji
      - search npm packages
  - Tunnelblick
    - Import config from `/Users/andi/SynologyDrive/dotfiles/`
  - BTTV Extension (Chromium)
    - Import settings from `/Users/andi/SynologyDrive/dotfiles/`
  - iTerm2
    - General > Preferences > Load preferences from a custom folder or URL > `/Users/andi/.config/iterm2-settings`
  - Blobsaver
    - Import settings from `/Users/andi/SynologyDrive/dotfiles/`
