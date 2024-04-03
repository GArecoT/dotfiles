#!/bin/sh
xrandr --output HDMI-1 --auto --right-of eDP-1
#xrandr --output HDMI-1-1 --auto --right-of eDP-1-1
greenclip daemon
setxkbmap -layout us -variant intl
