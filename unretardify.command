#/bin/bash
echo „Project unretardify-macOS”
sudo spctl --master-disable
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
