# EN-DE_keyboardLayout

A custom keyboard layout based on us-international layout optimized for german input
Created using Microsoft Keyboard Layout Creator.


features:

extended punctuation with standard layout

asuo + AltGr = äßüö

AUO + AltGr = ÄÜÖ

![layout](https://raw.githubusercontent.com/HE7086/EN-DE_keyboardLayout/master/layout.jpg)

# Install


## windows:


After installing you need to modify an existing layout's Layout file to the custom Layout in order to enable it.
```
\HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Keyboard Layouts
```
it is a little buggy and would remove the input method icon in the status bar


## Linux:


1. clone the repository and run install.sh with sudo
```
sudo ./install.sh
```

2. logout and re-login(restart is not required)
3. choose the keyboard layout in your language/input manager like `gnome settings` or `fcitx-config` etc.  
the layout should be in the category `English(US)` and has the name `English (US, DE, no dead keys)`
4. just start typing  

**warning**: the script is only tested on ubuntu 18.04 and manjaro 18.1, other Releases may not support!

To make it safe the install script will backup your original  layout files in the  current working directory. Manually replace them will revert you system to original state.

**note**: if you upgraded some keyboard related packages like `xkb-data` the layout file will be cleaned. Then you just need to rerun the script and do a re-login and every thing is fine.
