#!/bin/sh

#  set_up_aquamacs.sh
#  
#
#  Created by Tyler Young on 9/12/13.
#
chflags nohidden ~/Library
chflags nohidden /Library

# Menu bar: disable transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false
# Remove useless stuff from menu bar
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu"
# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
# Don't ask if you really want to open this app
defaults write com.apple.LaunchServices LSQuarantine -bool false
# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
# Disable "natural" (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
# Automatically illuminate built-in MacBook keyboard in low light
defaults write com.apple.BezelServices kDim -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true
# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true
# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# Use list view in all Finder windows by default
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
# Enable AirDrop over Ethernet and on unsupported Macs running Lion
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# Make ⌘ + F focus the search input in iTunes
defaults write com.apple.iTunes NSUserKeyEquivalents -dict-add "Target Search Field" "@F"

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Disable all bouncing
defaults write com.apple.dock no-bouncing -bool TRUE

# Enable subpixel font rendering on non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Make LS work like it should
echo "alias ls='ls -GpFh'" >> ~/.bash_profile
echo "" >> ~/.bash_profile

# Add the Auria color profile
sudo cp Auria_27-2.2-6500.icm /Library/ColorSync/Profiles

echo ""
echo ""
echo "You'll need to manually copy the MultiMarkdownQuickLook generator to /Library/QuickLook."
echo ""
echo "You'll need to manually copy the HexColorPicker to  /Library/ColorPickers."
echo ""
echo "You'll need to manually copy the Sublime Text helper to ~/Library/Application Support/Sublime Text 2/Packages/User/."
echo ""
echo "You'll need to manually drop Day-O into the applications folder & launch it."
echo ""
echo "You'll need to manually confirm that the Auria monitor has the proper color profile."

echo ""
echo "You'll need to manually install:"
echo "- Office"
echo "- iWork"
echo "- Creative Suite"
echo "- MacTeX"


