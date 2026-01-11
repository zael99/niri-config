#!/bin/bash

source "$HOME/.custom_commands/lib/workspace-utils"

# Don't open menu on game workspace
if [[ $(is_on_special_workspace "special:game") == "true" ]]; then
  echo "On Game Workspace."
  exit 0
fi

dms ipc call spotlight toggle