#!/bin/bash


: '


DEPS=hostapd dnsmasq unclutter-xfixes i3 xinit xorg-xserver socat x11-xserver-utils

sudo firewall-cmd --add-service=dns 
sudo firewall-cmd --add-service=http 
sudo firewall-cmd --add-service=dhcp 
sudo firewall-cmd --runtime-to-permanent


xset s off
xset s noblank
xset -dpms

enable_uart=0
disable_splash=1
gpu_mem=256
avoid_warnings=2
dtoverlay=vc4-kms-v3d


'

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $HOME
find $DIR -mindepth 1 -depth -type d -printf "%P\n" | grep -v git | while read dir; do mkdir -p "$dir"; done
find $DIR -type f -printf "%P\n" | grep -v 'git\|setup.sh' | while read file; do ln -s "$DIR/$file" "$file"; done

