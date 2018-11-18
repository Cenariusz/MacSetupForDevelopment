#!/bin/bash

<<COMMENT
# Simple Installation of the latest Brew, Cask, Git, PHP, Composer, Node.js and lot of other apps/tools/libraries. #
Download this file, and from the directory, run in terminal
chmod +x setupMacDevMachineFromScratch.sh
sudo ./setupMacDevMachineFromScratch.sh
COMMENT

# Apple Download CLI Tools
xcode-select --install

# Install Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure Brew has permissions
brew doctor

# Update Brew
brew update

# Install Brew Cask, for terminal app installs
brew install caskroom/cask/brew-cask

# Git
brew install git
git --version

# Alfred
brew cask install alfred

# PHP 7.2
brew install php@7.2
php -v

# Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv /Users/XYZ/composer.phar /usr/local/bin/composer
composer --version

# PHP Storm
brew cask install phpstorm

# Sublime Text 3
brew cask install sublime-text
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

# MariaDb
#brew install mariadb
#mariadb --version

# MongoDB
# brew install mongodb
# mkdir -p /data/db

# MySQLWorkBench - SQL client
brew cask install mysqlworkbench

# Robomongo (Robo 3T) - mongodb client
brew cask install robo-3t

# Docker
brew cask install docker

# Install Node.js, print the version
brew install node
node --version

# updates npm
npm update npm -g

# Install Yarn
npm install -g yarn
yarn -v

# iTerm2 - best terminal
brew cask install iterm2

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# SpaceShip - iTerm Theme
npm install -g spaceship-prompt

# CoreUtils
brew install coreutils

# Remove login info
touch ~/.hushlogin

# Download my ZSH config files
wget https://github.com/Kenariosz/Setup-a-Mac-Dev-Machine-From-Scratch/blob/master/.zshrc -P ~/
wget https://github.com/Kenariosz/Setup-a-Mac-Dev-Machine-From-Scratch/blob/master/.zsh_aliases -P ~/
wget https://github.com/Kenariosz/Setup-a-Mac-Dev-Machine-From-Scratch/blob/master/.zsh_profile -P ~/

# Chrome
brew cask install google-chrome

# Firefox
#brew cask install firefox

# Postman - api testing
brew cask install postman

# Slack
brew cask install slack

# ImageOptim - Image optimizer
#brew cask install ImageOptim
