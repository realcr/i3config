#!/usr/bin/env bash

# Exit on error
set -e 

# Required packages for the i3 configuration to work:

# Used for capturing a screen shot (Used for locking the screen):
apt install scrot xautolock

# Used for controlling audio
apt install pavucontrol

# EDIT: Seems to not work on Ubuntu 18.
# Power manager configuration.
# Used to configure how long before blanking screen.
# apt install xfce4-power-manager-settings

# A util to control the touchpad (Allowing to enable, disable):
apt install xserver-xorg-input-synaptics-hwe-18.04

# Install redshift, to control monitor color
apt install redshift redshift-gtk

# Configure nautilus to work with i3 (Ubuntu 16?)
gsettings set org.gnome.desktop.background show-desktop-icons false

# Add missing icons to nautilus:
# See: https://askubuntu.com/questions/319547/some-icons-missing-in-nautilus
apt install gnome-icon-theme-symbolic

# Install fcitx (keyboard input):
# Remember to edit ~/.pam_environment on gnome (See resources dir)
apt install fcitx-bin fcitx-googlepinyin

# Used to configure GUI to look like out of the box Ubuntu 18:
# Run gnome-tweaks later to choose themes.
sudo apt install gnome-tweak-tool

# Install fonts, so that websites look reasonable:
sudo apt-get install ttf-mscorefonts-installer culmus

# Solving other issues:

# - To solve dmenu issue, Add an extra line to /usr/bin/dmenu_run:

#       #!/bin/sh
#       LANG=en_US.UTF-8    # <-- Add this line
#       dmenu_path | dmenu "$@" | ${SHELL:-"/bin/sh"} &

# - Choose a theme with gnome-tweaks: Ambiance
