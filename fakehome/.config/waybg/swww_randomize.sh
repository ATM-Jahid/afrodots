#!/bin/sh

# Edit below to control the images transition
export SWWW_TRANSITION_SPEED=10
export SWWW_TRANSITION="random"

swww init

while true; do
	swww img $(find ~/Pictures/WallE -type f | shuf -n 1)
	sleep 60
done
