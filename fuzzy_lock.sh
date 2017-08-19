#!/usr/bin/env bash

# Detect errors:
set -e 

# This script was taken from: 
# https://faq.i3wm.org/question/83/
#       how-to-run-i3lock-after-computer-inactivity.1.html

# Take a screenshot
scrot /tmp/screen_locked.png

# Pixelalte it 10x
mogrify -scale 10% -scale 1000% /tmp/screen_locked.png

# Lock screen displaying this image
i3lock -i /tmp/screen_locked.png

# Turn the scree off after a delay.
sleep 60; pgrep i3lock && xset dpms force off
