# Setup-a-Mac-Dev-Machine-From-Scratch

## Homebrew
[Install](https://brew.sh/)

## ITerm2
[Download ITerm2](https://iterm2.com/downloads.html)

### Configuration
**Open preferences**
* turn off native full screen window (General tab)
* setup the show/hide ITerm2 with hotkey (Keys tab)

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
[zsh zshrc](https://github.com/Kenariosz/Setup-a-Mac-Dev-Machine-From-Scratch/blob/master/.zshrc)
[zsh aliases](https://github.com/Kenariosz/Setup-a-Mac-Dev-Machine-From-Scratch/blob/master/.zsh_aliases)
[zsh_profile](https://github.com/Kenariosz/Setup-a-Mac-Dev-Machine-From-Scratch/blob/master/.zsh_profile)
