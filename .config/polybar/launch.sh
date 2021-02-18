#!/bin/bash

# kill any open running polybar instances
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# lauch polybar for current desktop
activeSessionId=$(for sessionid in $(loginctl list-sessions --no-legend | awk '{ print $1 }')
  do loginctl show-session -p Id -p Name -p User -p State -p Type -p Remote $sessionid | sort
  done |
  awk -F = '/Id/ { id = $2 } /State/ { state = $2 } /Type/ { type = $2 } /Remote/ { remote = $2 } /User/ && remote == "no" && state == "active" && (type == "x11" || type == "wayland") { print id }')
activeDesktop=$(loginctl show-session -p Desktop $activeSessionId | awk -F = '/Desktop/ { de = $2 } /Desktop/ { print de }')

case "$activeDesktop" in
  "leftwm")
    polybar main-left &
    ;;
  "awesome")
    polybar main-awesome &
esac
