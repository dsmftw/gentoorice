#!/bin/bash

percentage=$(cat /sys/class/power_supply/BAT0/capacity)
ac=$(cat /sys/class/power_supply/AC/online)

if [[ $ac -eq 0 ]]; then
    if [[ $percentage -ge 70 ]]; then
        icon='#[fg=colour2]❤'
    elif [[ $percentage -le 20 ]]; then
        icon='#[default]☠'
    else
        icon='#[fg=colour1]❤'
    fi
else
    icon='#[fg=colour3]❤'
    #icon='#[fg=colour3]⚡' lightning unicode screwed up the statusline
fi

echo -n "$icon #[default]$percentage#[fg=colour247]%"
