#!/bin/bash

DEFAULT_OUTPUT='eDP-1-0'
OUTPUTS='HDMI-1-0'
XRANDR=`xrandr`
EXECUTE="#" 
CURRENT=$OUTPUTS


xrandr | grep "$CURRENT\ connected\ 1366"

if [ $? -eq 0 ] 
then 
    EXECUTE=" --output $CURRENT --off "
else
    EXECUTE=" --output $CURRENT  --mode 1366x768 --pos 1366x0 --rotate normal " 
fi 

xrandr --output $DEFAULT_OUTPUT --primary --mode 1366x768 --pos 0x0 --rotate normal   $EXECUTE

