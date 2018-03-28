#!/bin/bash

# a temporary hack to suppress the "Reading configuration from .." garbage
# as per https://github.com/arybczak/ncmpcpp/issues/171
now_playing=$(ncmpcpp --current-song="{%23t -- %18a}|{%45f}" 2>/dev/null)

if [[ -n $now_playing ]]; then
    echo -n "#[fg=colour6]♪ $now_playing #[default]#[fg=colour233]|#[default] "
fi
