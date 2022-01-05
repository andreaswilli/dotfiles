#!/bin/zsh

echo "❇️  Applying application settings..."

defaults write com.sindresorhus.Plash websites -array "'{\"usePrintStyles\":false,\"isCurrent\":true,\"invertColors2\":\"never\",\"id\":\"CABB3D95-79BD-4170-A55F-6A97CF135E39\",\"title\":\"Minecraft Weather\",\"css\":\"\",\"javaScript\":\"\",\"invertColors\":false,\"url\":\"https:\\/\\/andreaswilli.github.io\\/minecraft-weather?overlay=left\"}'"

echo "❇️  Done."
