#!/bin/bash
echo „Project unretardify-macOS”
if [ $(sw_vers -productVersion) = '10.12' ]; then
	sudo spctl --master-disable
fi

defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write com.apple.finder AppleShowAllFiles YES
