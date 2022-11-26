#!/bin/sh

function handle {
  if [[ ${1:0:9} == "workspace" ]]; then
    echo "$1" | cut --delimiter='>' -f3
  fi
}

socat - UNIX-CONNECT:/tmp/hypr/$(echo $HYPRLAND_INSTANCE_SIGNATURE)/.socket2.sock\
  | while read line; do handle $line; done
