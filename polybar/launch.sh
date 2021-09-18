#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
# echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log /tmp/polybar3.log
# polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown

# polybar bar1 &
# polybar bar2 &

# polybar monitori3 &
# polybar monitor1 &
# polybar monitor2 &

# polybar alli3 &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload backdrop &
    MONITOR=$m polybar --reload barworkspaces &
    MONITOR=$m polybar --reload dateandtime &
    MONITOR=$m polybar --reload pulseaudio &

  done
else
  polybar --reload backdrop &
  polybar --reload barworkspaces &
  polybar --reload dateandtime &
  polybar --reload pulseaudio &
fi


echo "Bars launched..."
