#!/bin/bash

# Identify the output name (eDP or eDP-1)
MONITOR=$(xrandr | grep " connected" | cut -d' ' -f1)

# Apply the resolution
xrandr --output "$MONITOR" --mode 3200x1800
