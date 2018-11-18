# Setup-a-Mac-Dev-Machine-From-Scratch

## SH script
Download and run [this](https://github.com/Kenariosz/Setup-a-Mac-Dev-Machine-From-Scratch/blob/master/.zshrc) script, which is install every necessary apps, libraries and tools for development.

chmod +x setupMacDevMachineFromScratch.sh  
sudo ./setupMacDevMachineFromScratch.sh

## Configuration
### iTerm
**Open preferences**
* turn off native full screen window (General tab)
* setup the show/hide ITerm2 with hotkey (Keys tab)
* reuse previous session's directory (Pref/Profile/General)

##Laravel-Valet
###Uninstall
```
valet uninstall
sudo brew services stop nginx
sudo brew services stop php70
sudo brew services stop dnsmasq
brew uninstall nginx
brew uninstall php70
brew uninstall dnsmasq
rm -rf ~/.valet
rm /usr/local/bin/valet
```
