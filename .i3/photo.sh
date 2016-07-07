FILE=~/Pictures/Screenshot-$USER-$(date +%Y%m%d-%H%M%S).png  
import $FILE
i3-nagbar -m "$FILE created"  &
sleep 4 && killall i3-nagbar

