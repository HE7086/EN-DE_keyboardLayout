#! /bin/bash

if test -s ~/.bkup/us.bkup -a -s ~/.bkup/evdev.xml.bkup 
then
    echo 'already installed!'
    exit
fi
cp /usr/share/X11/xkb/symbols/us ~/.bkup/us.bkup
cp /usr/share/X11/xkb/rules/evdev.xml ~/.bkup/evdev.xml.bkup
curl -fsSL https://raw.githubusercontent.com/HE7086/EN-DE_keyboardLayout/master/linux/us >> /usr/share/X11/xkb/symbols/us
sed -i "/English (Workman, intl/a <\/configItem>\n<\/variant>\n<variant>\n<configItem>\n<name>en_de<\/name>\n<description>English (US, DE, no dead keys)<\/description>" /usr/share/X11/xkb/rules/evdev.xml
echo 'installation complete!'
