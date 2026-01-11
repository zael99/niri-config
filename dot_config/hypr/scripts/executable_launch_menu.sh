#!/bin/bash

function is_on_special_workspace() {
    local workspace=$1
    local visible_special_workspaces=$(hyprctl monitors -j | jq -r '.[] | .specialWorkspace.name')

    if [[ ${visible_special_workspaces} == *${workspace}* ]]; then
        echo true
    else
        echo false
    fi
}

# Don't open menu on game workspace
if [[ $(is_on_special_workspace "special:game") == "true" ]]; then
  echo "On Game Workspace."
  exit 0
fi

dms ipc call spotlight toggle