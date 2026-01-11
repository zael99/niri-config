#!/bin/bash

# Close all windows gracefully before exiting
hyprctl clients -j | jq -r '.[] | .address' | xargs -I {} hyprctl dispatch closewindow address:{}
sleep 0.5
hyprctl dispatch exit