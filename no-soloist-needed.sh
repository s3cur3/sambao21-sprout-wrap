#!/bin/sh

#  The version of the installer that doesn't use soloist (which
#  seems buggy as hell on Mavericks)
#
#  Created by Tyler Young on 9/12/13.
#

alias homebrew_cask="brew cask install"
homebrew_cask "bettertouchtool"
homebrew_cask "calibre"
homebrew_cask "dia"
homebrew_cask "filezilla"
homebrew_cask "f-lux"
homebrew_cask "keepass-x"
homebrew_cask "max"
homebrew_cask "pandoc"
homebrew_cask "quicksilver"
homebrew_cask "sabnzbd"
homebrew_cask "selfcontrol"
homebrew_cask 'simple-comic'
homebrew_cask "sourcetree"
homebrew_cask "sublime-text"
homebrew_cask "vagrant"
homebrew_cask "virtualbox"



echo "Installing Skype"
brew cask install skype --force
echo "Installing IntelliJ"
brew cask install intellij-ultimate --force
echo "Installing RubyMine"
brew cask install rubymine --force
echo "Installing VLC"
brew cask install vlc --force
echo "Installing Inkscape"
brew cask install inkscape --force
echo "Installing Chicken of the VNC"
brew cask install chicken --force
echo "Installing Transmission"
brew cask install transmission --force
echo "Installing PHPStorm"
brew cask install phpstorm --force
echo "Installing Quicksilver"
brew cask install quicksilver --force
echo "Installing Keepass-X"
brew cask install keepass-x --force
echo "Installing Logitech Unifying software"
brew cask install logitech-unifying --force
echo "Installing Opera"
brew cask install opera --force
echo "Installing Pandoc"
brew cask install pandoc --force
echo "Installing Pycharm"
brew cask install pycharm --force
echo "Installing SABNZBD+"
brew cask install sabnzbd --force
echo "Installing VMWare Fusion"
brew cask install vmware-fusion --force
echo "Installing Daisy Disk"
brew cask install daisy-disk

echo "Installing LESS"
npm install less

echo "Installing Python 3"
brew reinstall readline # Something in our config installs this with the wrong links...
brew install python3

echo "Installing Xcode command line tools"
xcode-select --install

echo "Installing Mercurial"
brew install mercurial

echo "Installing Mercurial for Pip"
pip3 install mercurial


