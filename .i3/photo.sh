FILE=~/Pictures/Screenshot-$USER-$(date +%Y%M%d-%H%M%S).png  
import $FILE
i3-nagbar -m "$FILE created"  &
sleep 4 && killall i3-nagbar

