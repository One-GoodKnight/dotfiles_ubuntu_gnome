#!/bin/bash
export DISPLAY=:0
export XAUTHORITY=$HOME/.Xauthority

focused_id=$(xprop -root _NET_ACTIVE_WINDOW | awk '{print $5}')
focused_class=$(xprop -id $focused_id WM_CLASS 2>/dev/null)

if echo "$focused_class" | grep -qi "kitty"; then
    focused_pid=$(xprop -id $focused_id _NET_WM_PID 2>/dev/null | awk '{print $3}')
    socket=$(ls /tmp/kitty-* 2>/dev/null | grep "$focused_pid")
    /home/aginiaux/.local/kitty.app/bin/kitty @ --to unix:$socket launch --location=split --cwd current
else
    /home/aginiaux/.local/kitty.app/bin/kitty &
fi
