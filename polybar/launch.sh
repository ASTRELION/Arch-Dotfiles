#!/bin/bash

# Terminate already running instances
killall -q polybar

# Wait until processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar example -q &

echo "Polybar launched..."
