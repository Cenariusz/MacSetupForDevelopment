# Setup-a-Mac-Dev-Machine-From-Scratch

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
 		* Window
  		* Transparency: 30
  		* Style: Full Screen
  		* Screen: Main Screen
 		* Terminal
  		* select "Unlimited scrollback"
 		* Keys
  		* select "A hotkey opens a dedicated window with this profile"
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
		* Advanced
			* Semantic History -> Open with editor ... -> IntelliJ IDEA
  
## SH script
Download and run [this](https://github.com/Kenariosz/Setup-a-Mac-Dev-Machine-From-Scratch/blob/master/setupMacDevMachineFromScratch.command) script, which is install every necessary apps, libraries and tools for development.

chmod +x setupMacDevMachineFromScratch.command  
./setupMacDevMachineFromScratch.command
