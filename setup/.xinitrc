#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script

if [ -f /etc/X11/Xsession ]; then
    . /etc/X11/Xsession
fi


exec i3
