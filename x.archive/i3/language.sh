#!/bin/sh

# shell script to prepend i3status with more stuff

i3status --config ~/.i3status.conf | while :
do
        read line
        LG=$(setxkbmap -print | grep xkb_symbols | awk -F"+" '{print $2}') 
        echo "$LG | $line" || exit 1
done
