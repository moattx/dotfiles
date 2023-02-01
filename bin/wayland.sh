#!/bin/sh

cd ~ || exit
export _JAVA_AWT_WM_NONREPARENTING=1
export XCURSOR_SIZE=24

export QT_QPA_PLATFORM=wayland

export SDL_VIDEODRIVER=wayland

export CLUTTER_BACKEND=wayland
export GTK_THEME=Adwaita:dark
export GDK_BACKEND=wayland

dbus-daemon --session --address=unix:path="$XDG_RUNTIME_DIR"/bus &
export $(dbus-launch)
exec $1
# Hyprland

