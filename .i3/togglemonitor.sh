#!/bin/bash

# your notebook monitor
DEFAULT_OUTPUT='eDP1'

# outputs to toggle if connected
OUTPUTS='HDMI1'
# get info from xrandr
XRANDR=`xrandr`
EXECUTE=""
for CURRENT in $OUTPUTS
do
        if [[ $XRANDR == *$CURRENT\ connected*  ]] # is connected
        then
                if [[ $XRANDR == *$CURRENT\ connected\ \(* ]] # is disabled
                then
                        EXECUTE+="--output $CURRENT --auto --right-of $DEFAULT_OUTPUT "
                else
                        EXECUTE+="--output $CURRENT --off "
                fi
        else # make sure disconnected outputs are off 
                EXECUTE+="--output $CURRENT --off "
        fi
done
xrandr --output $DEFAULT_OUTPUT --primary --auto $EXECUTE
