#!/bin/bash

[[ `amixer -D pulse | grep "Front Right: Playback"|cut -c 38-40` = "off" ]] && op="un" 
amixer -D pulse sset Master ${op}mute

i3-nagbar -m "${op}mute" &
sleep 1 
killall i3-nagbar
