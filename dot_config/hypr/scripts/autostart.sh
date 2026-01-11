#!/bin/bash
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland

systemctl --user stop hyprland-session.target xdg-desktop-portal xdg-desktop-portal-hyprland
systemctl --user start hyprland-session.target

#syncthing &
steam -silent &
heroic &
#sleep 1

#sleep 1
#set-random-wallpaper
