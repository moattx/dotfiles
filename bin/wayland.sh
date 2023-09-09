#!/bin/sh

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

#dbus-daemon --session --address=unix:path="$XDG_RUNTIME_DIR"/bus &
#export $(dbus-launch)
#export DISPLAY=:0.0
#exec dbus-run-session $1
exec $1
