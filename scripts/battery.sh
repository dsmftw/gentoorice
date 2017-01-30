#!/bin/bash

percentage=$(cat /sys/class/power_supply/BAT0/capacity)
ac=$(cat /sys/class/power_supply/AC/online)

if [[ $ac -eq 0 ]]; then
    icon='❤'
    if [[ $percentage -ge 70 ]]; then
        echo -n '#[fg=colour1]'
    elif [[ $percentage -le 20 ]]; then
        icon='☠'
    else
        echo -n '#[fg=colour2]'
    fi
else
    icon='#[fg=colour3]⚡'
fi

echo -n "$icon #[fg=colour7]$percentage%"
