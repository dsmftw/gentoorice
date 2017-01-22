#!/bin/bash
# a temporary hack to suppress the "Reading configuration from .." garbage
# as per https://github.com/arybczak/ncmpcpp/issues/171
now_playing=$(ncmpcpp --current-song "{%27t - %27a}|{%50f}" 2>/dev/null)
if [[ -n $now_playing ]]; then
    echo "♫ $now_playing"
fi
