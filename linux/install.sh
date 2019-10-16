#! /bin/bash

usPath='/usr/share/X11/xkb/symbols/us'
evdevPath='/usr/share/X11/xkb/rules/evdev.xml'

if [[ ! -e $usPath && -e $evdevPath ]]
then
    echo 'Not Support! Aborting installation'
    exit
fi

# adding layout file
if [[ ! -e ./us.bkup ]]
then
    cp $usPath ./us.bkup
    cat us >> $usPath
else
    echo 'backup file us.bkup founded - reinstalling'
    if [[ -z $(grep 'xkb_symbols "en_de"' $usPath) ]]
    then
        cat us >> $usPath
    else
        echo 'already installed! abort istallation'
    fi
fi

# register the layout
if [[ ! -e ./evdev.xml.bkup ]]
then
    cp $evdevPath ./evdev.xml.bkup
    sed -i '/English (Workman, intl/ r evdev.xml' $evdevPath
else
    echo 'backup file evdev.xml.bkup founded - reinstalling'
    if [[ -z $(grep 'US, DE, no dead keys' $evdevPath) ]]
    then
        sed -i '/English (Workman, intl/ r evdev.xml' $evdevPath
    else
        echo 'already installed! abort istallation'
    fi
fi

echo 'Complete!'
