#! /bin/bash

if test -s ./us.bkup -a -s ./evdev.xml.bkup
then
    echo 'already installed!'
    exit
fi
cp /usr/share/X11/xkb/symbols/us ./us.bkup
cp /usr/share/X11/xkb/rules/evdev.xml ./evdev.xml.bkup
cat us >> /usr/share/X11/xkb/symbols/us
sed -i '/English (Workman, intl/ r evdev.xml' /usr/share/X11/xkb/rules/evdev.xml
echo 'installation complete!'
