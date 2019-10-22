#!/usr/bin/env bash

# Exit on error
set -e 

if [ `hostname` = "hope" ]
then
        # Laptop computer
        # We map the printscreen key to be an extra winkey.
        xmodmap -e 'keycode 107 = Super_R' && xset -r 107

else
        # Desktop computer. We map the menu key to be an extra winkey:
        xmodmap -e 'keycode 135 = Super_R' && xset -r 135
fi

