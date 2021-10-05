#!/bin/bash

<<COMMENT
# Simple Installation of the latest Brew, Cask, Git, PHP, Composer, Node.js and lot of other apps/tools/libraries. #
Download this file, and from the directory, run in terminal
chmod +x setupMacDevMachineFromScratch.command
sudo ./setupMacDevMachineFromScratch.command
COMMENT

# Apple Download CLI Tools
xcode-select --install

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure Brew has permissions
brew doctor

# Update Brew
brew update

# Git
brew install git
git --version

# Git flow
brew install git-flow-avh
sudo port install git-flow-avh

# Alfred
brew install --cask alfred

# PHP 7.4
brew install php@7.4
php -v

# Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php
php -r "unlink('composer-setup.php');"
mv ~/Desktop/composer.phar /usr/local/bin/composer
composer --version

# PHP Storm
brew install --cask phpstorm

# Sublime Text 3
brew install --cask sublime-text
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

# MariaDb
#brew install mariadb
#mariadb --version

# MongoDB
# brew tap mongodb/brew
# brew install mongodb-community
# brew services start mongodb-community
# mkdir -p /data/db

# MySQLWorkBench - SQL client
# brew install --cask mysqlworkbench

# Robomongo (Robo 3T) - mongodb client
brew install --cask robo-3t

# Docker
brew install --cask docker

# Install Node.js, print the version
brew install node
node --version

# updates npm
npm update npm -g

# Install Yarn
npm install -g yarn
yarn -v

# iTerm2 - best terminal
brew install --cask iterm2

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# SpaceShip - iTerm Theme
npm install -g spaceship-prompt

# CoreUtils
brew install coreutils

# Remove login info
sudo touch ~/.hushlogin

# Wget
brew install wget

# Download my ZSH config files
sudo wget https://raw.githubusercontent.com/Kenariosz/Setup-a-Mac-Dev-Machine-From-Scratch/master/.zshrc -O ~/.zshrc
sudo wget https://raw.githubusercontent.com/Kenariosz/Setup-a-Mac-Dev-Machine-From-Scratch/master/.zsh_aliases -O ~/.zsh_aliases
sudo wget https://raw.githubusercontent.com/Kenariosz/Setup-a-Mac-Dev-Machine-From-Scratch/master/.zsh_profile -O ~/.zsh_profile

# Chrome
brew install --cask google-chrome

# Firefox
#brew install --cask firefox

# Postman - api testing
brew install --cask postman

# Slack
brew install --cask slack

# ImageOptim - Image optimizer
brew install --cask ImageOptim

# Drovio - Remote pair programming and team collaboration tool
brew install --cask drovio

# 1Password - Password manager that keeps all passwords secure behind one password
brew install --cask 1password
