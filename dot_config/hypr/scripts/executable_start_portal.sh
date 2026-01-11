#!/bin/sh

sleep 1
killall -e xdg-desktop-portal-hyprland
killall xdg-desktop-portal

dbus-update-activation-environment --systemd --all
systemctl --user import-environment QT_QPA_PLATFORMTHEME

/usr/libexec/xdg-desktop-portal-hyprland &
sleep 2
/usr/libexec/xdg-desktop-portal &
