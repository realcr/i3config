#!/usr/bin/env bash

# Exit on error
set -e 

# This script was taken from: 
# https://faq.i3wm.org/question/83/
#       how-to-run-i3lock-after-computer-inactivity.1.html

# Generate a random filename:
tfile=$(mktemp /tmp/foo.XXXXXXXXX.png)

# Take a screenshot
scrot $tfile

# Pixelalte it 10x
mogrify -scale 10% -scale 1000% $tfile

# Lock screen displaying this image
i3lock -i $tfile

# Turn the scree off after a delay.
sleep 60; pgrep i3lock && xset dpms force off
