#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

case "$(uname -n)" in
  "fedora")
    # Launch bar1 and bar2
    echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
    polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
    polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown
  ;;
  "fedora-laptop") echo 2 or 3
    echo "---" | tee -a /tmp/polybar1.log
    polybar laptop 2>&1 | tee -a /tmp/polybar1.log & disown
  ;;
  *) echo default
  ;;
esac

echo "Bars launched..."
