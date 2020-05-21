#!/bin/bash


# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`


# Install native apps

brew tap homebrew/cask-versions

# daily
brew cask install anki
brew cask install calibre
brew cask install flux
brew cask install notion
brew cask install setapp
brew cask install slack
brew cask install windscribe

# dev
brew cask install iterm2
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install gitkraken
brew cask install unity-hub
brew cask install imagealpha
brew cask install imageoptim
brew cask install quicklook-json

# mech
brew cask install qmk-toolbox

# fun
brew cask install discord
brew cask install steam
brew cask install telegram

# browsers
brew cask install brave-browser
brew cask install firefox
brew cask install firefox-developer-edition

# less often
brew cask install transmission
brew cask install wireshark

# fonts
brew tap homebrew/cask-fonts 
brew cask install font-fira-code
brew cask install font-iosevka


# Not on cask but I want regardless.

# Migrate all setapp apps
# https://support.setapp.com/hc/en-us/articles/360008560299
