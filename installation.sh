#!/usr/bin/env bash

# Exit on error
set -e 

# Required packages for the i3 configuration to work:

# Used for capturing a screen shot (Used for locking the screen):
apt install scrot xautolock

# Used for controlling audio
apt install pavucontrol

# Configure nautilus to work with i3:
gsettings set org.gnome.desktop.background show-desktop-icons false
