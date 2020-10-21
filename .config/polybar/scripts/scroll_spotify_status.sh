#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 120 \
        --delay 0.1 \
        --match-command "playerctl --player=playerctld status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true '/home/tranphongbb/.config/polybar/scripts/get_spotify_status.sh' &

wait
