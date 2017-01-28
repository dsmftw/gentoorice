#!/bin/bash
percentage=$(cat /sys/class/power_supply/BAT0/capacity)
ac=$(cat /sys/class/power_supply/AC/online)
if [[ $ac -eq 0 ]]; then
    icon="❤"
else
    icon="⚡"
fi

#echo "♥ $percentage%"
echo "$icon $percentage%"
