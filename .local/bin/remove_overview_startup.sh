#!/usr/bin/env bash

for i in {1..50}; do
  state=$(gdbus call --session \
    --dest org.gnome.Shell \
    --object-path /org/gnome/Shell \
    --method org.freedesktop.DBus.Properties.Get \
    org.gnome.Shell OverviewActive)

  if echo "$state" | grep -q "true"; then
    gdbus call --session \
      --dest org.gnome.Shell \
      --object-path /org/gnome/Shell \
      --method org.freedesktop.DBus.Properties.Set \
      org.gnome.Shell OverviewActive "<false>"
    exit 0
  fi
  sleep 0.1
done
