# Setup-a-Mac-Dev-Machine-From-Scratch

##Apps
PHPStorm | Sublime text 3 | Alfred | MysqlWorkbench
###Alfred
[Install](https://www.alfredapp.com/)


## Homebrew
[Install](https://brew.sh/)

## ITerm2
[Download ITerm2](https://iterm2.com/downloads.html)

### Configuration
**Open preferences**
* turn off native full screen window (General tab)
* setup the show/hide ITerm2 with hotkey (Keys tab)
* reuse previous session's directory (Pref/Profile/General)

## Oh My Zsh
[Download oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

### Configuration
**Install Spaceship theme**
```
npm install -g spaceship-prompt
```

**Remove login line**
```
touch ~/.hushlogin
```

**Add aliases and profile**
```
brew install coreutils
touch ~/.zsh_aliases
touch ~/.zsh_profile
```
[zsh zshrc](https://github.com/Kenariosz/Setup-a-Mac-Dev-Machine-From-Scratch/blob/master/.zshrc) |
[zsh aliases](https://github.com/Kenariosz/Setup-a-Mac-Dev-Machine-From-Scratch/blob/master/.zsh_aliases) |
[zsh_profile](https://github.com/Kenariosz/Setup-a-Mac-Dev-Machine-From-Scratch/blob/master/.zsh_profile)

#Node, NPM and Yarn
[Install](https://nodejs.org/en/)

```
sudo npm install -g yarn
```

#PHP and MariaDB
```
brew search php7
brew install #php#

brew install mysql/mariadb
```

##Composer
[Install](https://getcomposer.org/download/)
```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

mv /Users/XYZ/composer.phar /usr/local/bin/composer
```
