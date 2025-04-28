#!/bin/sh


notify_connected () {
notified=0
while :; do
    [ "$(power -c)" = "no" ] && [ "$notified" -ne 1 ] && notified=1 && notify-send --urgency="critical" "notify_connected" "not connected"
    [ "$(power -c)" = "yes" ] && [ "$notified" -eq 1 ] && notified=0 && notify-send "notify_connected" "connected"
sleep 1
done
}

cd ~ || exit
export _JAVA_AWT_WM_NONREPARENTING=1
export XCURSOR_SIZE=24

export QT_QPA_PLATFORM=wayland

export SDL_VIDEODRIVER=wayland

export CLUTTER_BACKEND=wayland
export GTK_THEME=Adwaita:dark
export GDK_BACKEND=wayland

export XDG_SESSION_TYPE=wayland

export MOZ_ENABLE_WAYLAND=1 
export QT_QPA_PLATFORM=wayland 
export XDG_SESSION_TYPE=wayland 

kwalletd6 &

powernotif -p 20 -t 360

notify_connected &

# Save notify_connected() PID
PROCESS=$!

# run as part of the script
exec $1
kill $PROCESS >/dev/null 2>&1
echo "KILLED $PROCESS"
