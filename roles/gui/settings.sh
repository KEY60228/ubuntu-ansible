#!/bin/bash

## Top Bar
gsettings set org.gnome.desktop.interface show-battery-percentage true

## Screen Lock
gsettings set org.gnome.desktop.session idle-delay $((15*60))
gsettings set org.gnome.desktop.screensaver lock-delay $((15*60))

## Keyboards
sudo apt-get update && sudo apt-get install $(check-language-support -l ja)
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'mozc-jp')]"
gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:nocaps']"

## Dock
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock multi-monitor true
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true

## Power
gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled false
