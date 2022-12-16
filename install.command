#!/bin/bash

# <<COMMENT
# # Simple Installation of the latest Brew, Cask, Git, PHP, Composer, Node.js and lot of other apps/tools/libraries. #
# Download this file, and from the directory, run in terminal
# chmod +x install.command
# sudo ./install.command
# COMMENT

printf '\n\e[35m System settings... \e[0m\n'
# take screenshots as jpg (usually smaller size) and not png
defaults write com.apple.screencapture type jpg

# do not open previous previewed files (e.g. PDFs) when opening a new one
defaults write com.apple.Preview ApplePersistenceIgnoreState YES

# show Library folder
chflags nohidden ~/Library

# show hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# show path bar
defaults write com.apple.finder ShowPathbar -bool true

# show status bar
defaults write com.apple.finder ShowStatusBar -bool true

killall Finder

printf '\n\e[35m Create Work dir if it is not exist... \e[0m\n'
# shellcheck disable=SC2164
cd
mkdir -p ~/Work

if ! command -v brew &>/dev/null; then

  printf '\n\e[35m Installing Homebrew, an OSX package manager, follow the instructions... \e[0m\n'

  #Install Brew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo eval "$(/opt/homebrew/bin/brew shellenv)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
  echo 'export PATH="/opt/homebrew/bin:$PATH"' >>~/.zshrc
  echo export PATH="/opt/homebrew/bin:$PATH"

  # Make sure Brew has permissions
  brew doctor
fi

printf '\n\e[35m Update brew... \e[0m\n'
# Update Brew
brew update

printf '\n\e[35m Install GUI applications... \e[0m\n'
brew install --cask \
  cardhop \
  fantastical \
  alfred \
  calibre \
  anki \
  discord \
  slack \
  skype \
  viber \
  zoom \
  microsoft-office \
  steam \
  1password \
  google-chrome \
  firefox \
  iterm2 \
  rectangle \
  ImageOptim \
  sublime-text \
  jetbrains-toolbox \
  docker \
  postman

printf '\n\e[35m Install terminal applications... \e[0m\n'
brew install \
  coreutils \
  wget \
  exa \
  git \
  git-flow-avh \
  gh \
  composer \
  node \
  yarn \
  vim \
  php@8.1 \
  mysql@8.0 \
  symfony-cli/tap/symfony-cli \
  libpq

brew link --force libpq

printf '\n\e[35m Install xDebug... \e[0m\n'
pecl install xdebug

printf '\n\e[35m Install fonts... \e[0m\n'
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

SSH_CONFIG_FILE=~/.ssh/config
if [ ! -f "$SSH_CONFIG_FILE" ]; then
	printf "\n\e[35m Add SSH config file... \e[0m\n"

	touch $SSH_CONFIG_FILE
fi

printf '\n\e[35m Git global setup... \e[0m\n'
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global init.defaultBranch main
#git config --list

printf "\n\e[35m Append SSH config file with demo setup... \e[0m\n"
printf '\n' >>$SSH_CONFIG_FILE
echo "#Host *" >>$SSH_CONFIG_FILE
echo "#	Hostname github.com" >>$SSH_CONFIG_FILE
echo "#	Identityfile ~/.ssh/id_rsa" >>$SSH_CONFIG_FILE
echo "#	IdentitiesOnly yes" >>$SSH_CONFIG_FILE

DIR="/Users/$USER/.oh-my-zsh"
if [ ! -d "$DIR" ]; then
  printf '\n\e[35m Install Oh My ZSH... \e[0m\n'
  git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

  if [ -f ~/.zshrc ]; then
    printf '\n\e[35m Backup .zshrc file... \e[0m\n'
    cp ~/.zshrc ~/.zshrc.orig
  fi

  printf '\n\e[35m Create new .zshrc file from template... \e[0m\n'
  wget https://raw.githubusercontent.com/Cenarius-io/MacSetupForDevelopment/master/.zshrc -O ~/.zshrc

  printf '\n\e[35m Update Oh My ZSH... \e[0m\n'
  omz update
fi

if [ ! -d "${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions" ]; then
  printf '\n\e[35m Install zsh-completions plugin... \e[0m\n'
  git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
fi

if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
  printf '\n\e[35m Install zsh-autosuggestions plugin... \e[0m\n'
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
  printf '\n\e[35m Install zsh-syntax-highlighting plugin... \e[0m\n'
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

if ! command -v starship &>/dev/null; then
  printf '\n\e[35m Install Starship terminal theme... \e[0m\n'
  brew install starship
fi

printf '\n\e[35m Load new config... \e[0m\n'
source ~/.zshrc

FILE=~/.zsh_aliases
if [ ! -f "$FILE" ]; then
  printf '\n\e[35m Init ZSH aliases... \e[0m\n'

  touch ~/.zsh_aliases

  echo "# get machine's ip address" >>~/.zsh_aliases
  echo 'alias ip="ipconfig getifaddr en0"' >>~/.zsh_aliases
  echo "" >>~/.zsh_aliases
  echo "# edit global zsh configuration" >>~/.zsh_aliases
  echo 'alias zconfig="vim ~/.zshrc"' >>~/.zsh_aliases
  echo "# edit global zsh_profile configuration" >>~/.zsh_aliases
  echo "alias zprofile='vim ~/.zsh_profile'" >>~/.zsh_aliases
  echo "# edit global zsh_aliases configuration" >>~/.zsh_aliases
  echo "alias zaliases='vim ~/.zsh_aliases'" >>~/.zsh_aliases
  echo "" >>~/.zsh_aliases
  echo "# reload zsh configuration" >>~/.zsh_aliases
  echo 'alias zsource="source ~/.zshrc"' >>~/.zsh_aliases
  echo "# reload zsh configuration" >>~/.zsh_aliases
  echo 'alias ohmyzsh="cd ~/.oh-my-zsh"' >>~/.zsh_aliases
  echo "" >>~/.zsh_aliases
  echo "# CDs" >>~/.zsh_aliases
  echo "alias work='cd ~/Work'" >>~/.zsh_aliases
  echo "" >>~/.zsh_aliases
  echo "# Unix" >>~/.zsh_aliases
  echo "alias c='clear'" >>~/.zsh_aliases
  echo "" >>~/.zsh_aliases
  echo "# LS Stuff" >>~/.zsh_aliases
  echo "alias ls='gls -F -1 --color=auto --group-directories-first'" >>~/.zsh_aliases
  echo "alias ll='ls -la'" >>~/.zsh_aliases
  echo "alias ld='ls -d */'" >>~/.zsh_aliases
  echo "alias la='ls -CA'" >>~/.zsh_aliases
fi

source ~/.zsh_aliases

if [ ! -f ~/.hushlogin ]; then
  # Remove login info
  sudo touch ~/.hushlogin
fi
