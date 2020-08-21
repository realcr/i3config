#!/usr/bin/env bash

# Set screen resolution

# Exit on error
set -e 

if [ `hostname` = "hope" ]
then
        # Set resolution
        xrandr && xrandr --output "eDP1" --mode "1600x900" 2> /tmp/i3_xrandr_output
fi
