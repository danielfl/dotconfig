#!/bin/bash

status=$(acpi -b | awk '{print $3}' | tr -d , | tr -d % )
percent=$(acpi -b | awk '{print $4}' | tr -d , | tr -d % )

if [ $status == "Charging" ]; then
    echo -en "   $percent" 
elif [ $percent -lt 20 ]; then
    echo -en " $percent"
elif [ $percent -lt 40 ]; then 
    echo -en " $percent"
elif [ $percent -lt 60 ]; then
    echo -en " $percent"
elif [ $percent -lt 80 ]; then
    echo -en " $percent"
else
    echo -en " $percent"
fi 
echo %
