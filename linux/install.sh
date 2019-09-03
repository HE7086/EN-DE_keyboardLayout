#! /bin/bash

cat us >> /usr/share/X11/xkb/symbols/us
sed -i '/English (Workman, intl/ r evdev.xml' /usr/share/X11/xkb/rules/evdev.xml
