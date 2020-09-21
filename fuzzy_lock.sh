#!/usr/bin/env bash

# Exit on error
set -e 

# This script was taken from: 
# https://faq.i3wm.org/question/83/
#       how-to-run-i3lock-after-computer-inactivity.1.html

tsrcfile=/tmp/lockimage-src.png
tfile=/tmp/lockimage.png

# Take a screenshot
scrot $tsrcfile

# Pixelate it 10x
convert -scale 10% -scale 1000% $tsrcfile $tfile 2> /tmp/mogrify.log

# Remove original image:
rm $tsrcfile

# Lock screen displaying this image
i3lock -i $tfile

# Turn the screen off after a delay.
sleep 60; pgrep i3lock && xset dpms force off
