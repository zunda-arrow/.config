#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    # MONITOR=$m polybar backdrop &
    MONITOR=$m polybar barworkspaces &
    MONITOR=$m polybar dateandtime &
    MONITOR=$m polybar pulseaudio &
done


echo "Bars launched..."
