#!/bin/bash

# install xcode - can trigger with `git`

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install work related packages
brew install --cask authy
brew install awscli
brew install --cask bitwarden
brew install --cask brave-browser
brew install --cask google-cloud-sdk
#brew install --cask iterm2
brew install --cask microsoft-remote-desktop
brew install --cask microsoft-teams
brew install --cask scroll-reverser
brew install --cask slack
brew install --cask spectacle
brew install terraform-docs
# brew install liamg/tfsec/tfsec
brew install tflint
brew install warrensbox/tap/tfswitch
brew install --cask visual-studio-code

# Powerlevel10K
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
# add p10k settings

# install additional packages
brew install --cask spotify
brew install --cask signal
brew install --cask whatsapp


# fix home and end keys
# https://coderwall.com/p/ikyhag/fixing-home-and-end-keys-and-more-on-macos
mkdir -p $HOME/Library/KeyBindings
echo '{
/* Remap Home / End keys to be correct */
"\UF729" = "moveToBeginningOfLine:"; /* Home */
"\UF72B" = "moveToEndOfLine:"; /* End */
"$\UF729" = "moveToBeginningOfLineAndModifySelection:"; /* Shift + Home */
"$\UF72B" = "moveToEndOfLineAndModifySelection:"; /* Shift + End */
"^\UF729" = "moveToBeginningOfDocument:"; /* Ctrl + Home */
"^\UF72B" = "moveToEndOfDocument:"; /* Ctrl + End */
"$^\UF729" = "moveToBeginningOfDocumentAndModifySelection:"; /* Shift + Ctrl + Home */
"$^\UF72B" = "moveToEndOfDocumentAndModifySelection:"; /* Shift + Ctrl + End */
}' > $HOME/Library/KeyBindings/DefaultKeyBinding.dict


# change hostname
#sudo scutil --set HostName mbp.fqdn.tld
#sudo scutil --set ComputerName mbp

# clear dns cache
#dscacheutil -flushcache

# reboot
#reboot now
