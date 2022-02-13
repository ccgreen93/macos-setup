#!/bin/bash

# install xcode - can trigger with `git`

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install work related packages
brew install ansible
brew install ansible-lint
brew install --cask authy
brew install awscli
brew install --cask bitwarden
brew install --cask brave-browser
brew install --cask docker
brew install --cask google-cloud-sdk
brew install graphwiz #(for visualising terraform)
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
brew install watch
brew install yamllint

## Terminal
# replace below with fish? - https://fishshell.com/

# install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" --unattended
# install Powerlevel10K theme - will prompt to customise on next run
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
# echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >>~/.zshrc

# auto suggestions - https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# add 'zsh-autosuggestions' to plugins in ~/.zshrc
# plugins=( 
#     # other plugins...
#     zsh-autosuggestions
# )

# https://github.com/zsh-users/zsh-history-substring-search#usage:
# "If you want to use zsh-syntax-highlighting along with this script, 
# then make sure that you load it before you load this script"
# source zsh-syntax-highlighting.zsh
# source zsh-history-substring-search.zsh

# syntax highlighting
brew install zsh-syntax-highlighting
echo "source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >>~/.zshrc

# zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
# add 'zsh-history-substring-search' to plugins in ~/.zshrc
# plugins=( 
#     # other plugins...
#     zsh-history-substring-search
# )

# also kinda cool, needs iterm2: https://github.com/zsh-users/zsh-apple-touchbar


# flat icon theme colours: https://github.com/QuentinWatt/dark-flat-iterm-colors/blob/master/flat-colors.itermcolors
curl https://raw.githubusercontent.com/QuentinWatt/dark-flat-iterm-colors/master/flat-colors.itermcolors -o ~/Downloads/flat-colors.itermcolors

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



# https://github.com/antonbabenko/pre-commit-terraform


# show hidden folder and files
defaults write com.apple.Finder AppleShowAllFiles true

# # hide hidden folder and files
# defaults write com.apple.Finder AppleShowAllFiles false



# change hostname
#sudo scutil --set HostName mbp.fqdn.tld
#sudo scutil --set ComputerName mbp

# clear dns cache
#dscacheutil -flushcache

# reboot
#reboot now
