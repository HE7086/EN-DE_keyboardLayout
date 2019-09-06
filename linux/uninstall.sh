#! /bin/bash

if test -s ./us.bkup -a -s ./evdev.xml.bkup 
then
    mv ./us.bkup /usr/share/X11/xkb/symbols/us
    mv ./evdev.xml.bkup /usr/share/X11/xkb/rules/evdev.xml
    echo 'uninstalled!'
else
    echo 'uninstallation failed - backup files missing'
fi
