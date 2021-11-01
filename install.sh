#!/bin/bash

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install work related packages
brew install warrensbox/tap/tfswitch
brew install --cask brave-browser
brew install --cask slack
brew install --cask bitwarden

# install additional packages
brew install --cask whatsapp
brew install --cask signal
brew install --cask spotify




# change hostname
#sudo scutil --set HostName mbp.fqdn.tld
sudo scutil --set ComputerName mbp

# clear dns cache
dscacheutil -flushcache

# reboot
reboot now
