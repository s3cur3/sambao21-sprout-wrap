#!/bin/sh

#  The version of the installer that doesn't use soloist (which
#  seems buggy as hell on Mavericks)
#
#  Created by Tyler Young on 9/12/13.
#

echo "Installing Xcode command line tools"
xcode-select --install

alias homebrew_cask="brew cask install"
echo "Installing BetterTouchTool"
homebrew_cask "bettertouchtool"
echo "Installing Calibre"
homebrew_cask "calibre"
echo "Installing Dia"
homebrew_cask "dia"
echo "Installing Filezilla"
homebrew_cask "filezilla"
echo "Installing Flux"
homebrew_cask "f-lux"
echo "Installing Max"
homebrew_cask "max"
echo "Installing Quicksilver"
homebrew_cask "quicksilver"
echo "Installing SelfControl"
homebrew_cask "selfcontrol"
echo "Installing SimpleComic"
homebrew_cask 'simple-comic'
echo "Installing SourceTree"
homebrew_cask "sourcetree"
echo "Installing Sublime"
homebrew_cask "sublime-text"
echo "Installing Vagrant"
homebrew_cask "vagrant"
echo "Installing VirtualBox"
homebrew_cask "virtualbox"



echo "Installing Skype"
brew cask install skype --force
echo "Installing VLC"
brew cask install vlc
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
brew cask install keepassx --force
echo "Installing Pandoc"
brew cask install pandoc
echo "Installing SABNZBD+"
brew cask install sabnzbd
echo "Installing VMWare Fusion"
brew cask install vmware-fusion --force
echo "Installing Daisy Disk"
brew cask install daisy-disk

echo "Installing Python 3"
brew reinstall readline # Something in our config installs this with the wrong links...
brew install python3

echo "Installing Mercurial"
brew install mercurial

echo "Installing Mercurial for Pip"
pip3 install mercurial


