# Install and configuration

## Installation script

```
# Use this snippet to download the installation script
cd ~/Downloads
curl -o install.command https://github.com/Kenariosz/Setup-a-Mac-Dev-Machine-From-Scratch/blob/master/setupMacDevMachineFromScratch.command
chmod +x install.command

# Run the script
./install.command
```

## SYSTEM PREFERENCES

* Dock
    * Remove most applications from Dock
    * Automatic Hide
    * Smaller Dock
    * "Show recent applications in Dock" off
    * "Show indicators for open applications" on
    * Battery -> "Show Percentage"
* Display
    * Nightshift
* Touch ID
* Notifications
  *Off, except for Calendar
* Siri
    * Disable
* Trackpad
    * Tap to Click
    * Point & Click -> Look up & data detectors off
    * App exposé
    * Speed: 9/10
* Accessibility
    * Pointer Control / Trackpad Options
        * Scroll Speed: 6/8
        * Enable dragging -> three finger drag
* Keyboard
    * select "Use F1, F2, etc. keys as standard function..."
    * Text
        * disable "Capitalise word automatically"
        * disable "Use smart quotes and dashes"
        * use " for double quotes
        * use ' for single quotes
* Mission Control
    * Hot Corners: disable all
* Finder
    * General
        * Change New Finder windows show to my home folder
    * Sidebar:
        * activate all Favorites
        * move Library to Favorites
    * Hide all Tags
    * Show all Filename Extensions
    * Remove Items from Bin after 30 Days
    * View menu
        * Show Preview (e.g. image files)
        * set "as List"
        * Show view options (Default view setup)
            * Group by: kind
            * Sort by: name
            * Calculate all sizes on
            * Show Lib forlder on
            * Use as default :)
* Security and Privacy
    * Turn on FileVault
* Sharing
    * "Change computer name"
    * Also terminal:
        * sudo scutil --set ComputerName "newname"
        * sudo scutil --set LocalHostName "newname"
        * sudo scutil --set HostName "newname"
    * "Make sure all file sharing is disabled"
* Storage
    * Remove Garage Band & Sound Library
    * Remove iMovie

## GUI APPLICATIONS

* cardhop
* fantastical
    * add calendars
    * [set as default](https://lemp.io/how-do-you-change-default-calendar-mac-os/) (Open the Calendar Preferences ->
      change default calendar app)
* alfred
    * [Use cmd + space](https://www.alfredapp.com/help/troubleshooting/cmd-space/)
* calibre
* [anki](https://ankiweb.net/about)
    * add-ons
        * [HyperTTS](https://ankiweb.net/shared/info/111623432)
        * [AnkiConnect](https://ankiweb.net/shared/info/2055492159)
* [Craft](https://apps.apple.com/us/app/craft-docs/id1487937127) (manual installation)
* [things](https://culturedcode.com/things/mac/appstore/) (manual installation)
* discord
* slack
* skype
* viber
* zoom
* microsoft-office
* steam
* 1password
* google-chrome
* firefox
* iterm2
* rectangle
* ImageOptim
* sublime-text
* jetbrains-toolbox
    * phpstorm
        * shell script plugin installed
* docker
* postman

## BUILT-IN MACOS APPLICATIONSxz

* iMessage
    * sync iCloud for iMessages just for the sake of syncing, then disable iCloud again
    * sync contacts on iCloud
    * iPhone: activate message forwarding to new Mac

## TERMINAL APPLICATIONS

* git
    * [multiple git account setup](https://docs.gitlab.com/ee/user/ssh.html)

## ITERM2

* Make iterm2 Default Term
* Preferences
    * General
        * Window
            * unselect "Native full screen windows"
    * Appearance
        * Windows
        * select "Hide scrollbars"
        * Tabs
        * unselect "Show tab bar in fullscreen"
        * Dimming
        * Unselect all dimming
    * Profiles
        * General
            * select "Advanced Configuration" then click Edit...
        * Text
            * Font: font-hack-nerd-font (If it is installed)
        * Window
            * Transparency: 30
            * Style: Full Screen
            * Screen: Main Screen
        * Terminal
            * select "Unlimited scrollback"
            * switch to Key Mappings
                * Press Presets... dropdown button.
                * Select Natural Text Editing
                    * then, you can
                        * move a word backwards Option ⌥ + ←
                        * move a word forwards Option ⌥ + →
                        * move to the start of the line fn + ←
                        * move to the end of the line fn + →
                        * delete a word backwards Option ⌥ + ⌫
                        * delete the whole line Command ⌘ + ⌫
    * Keys
        * Hotkeys
            * select "Show/hide all windows with a system-wide hotkey"
    * Advanced
        * Semantic History -> Open with editor ... -> IntelliJ IDEA

## OH MY ZSH

[Starship](https://starship.rs/)
As font we will be using Hack Nerd Font in iTerm2, Sublime Text and PHPStorm.
If the theme and font changes do not apply, reload your zsh configuration (.zshrc) or close/open iTerm2.

### Oh My Zsh Plugins

* [zsh-completions](https://github.com/zsh-users/zsh-completions)
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

### ZSH Configuration File (.zshrc):

```
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Set Homebrew PATH
export PATH="/opt/homebrew/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
)

if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi
#You may also need to force rebuild `zcompdump`:
#rm -f ~/.zcompdump; compinit

# Additionally, if you receive "zsh compinit: insecure directories" warnings when attempting
# to load these completions, you may need to run this:
#chmod -R go-w '/opt/homebrew/share/zsh'

# activate the autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# activate the syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# If you receive "highlighters directory not found" error message, you may need to add the following to your .zshenv:
# export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters

source $ZSH/oh-my-zsh.sh

# use starship theme (needs to be at the end)
eval "$(starship init zsh)"
```