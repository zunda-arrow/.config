#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --config=$1 backdrop &
    MONITOR=$m polybar --config=$1 left-left &
    MONITOR=$m polybar --config=$1 left &
    MONITOR=$m polybar --config=$1 center &
    MONITOR=$m polybar --config=$1 right &
done

echo "Bars launched..."
