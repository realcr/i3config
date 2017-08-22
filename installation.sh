#!/usr/bin/env bash

# Exit on error
set -e 

# Required packages for the i3 configuration to work:

# Used for capturing a screen shot (Used for locking the screen):
apt install scrot xautolock

# Used for controlling audio
apt install pavucontrol

# Power manager configuration.
# Used to configure how long before blanking screen.
apt install xfce4-power-manager-settings

# Configure nautilus to work with i3:
gsettings set org.gnome.desktop.background show-desktop-icons false
