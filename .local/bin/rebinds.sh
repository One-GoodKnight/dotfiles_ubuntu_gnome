#!/usr/bin/env bash

gsettings set org.gnome.desktop.input-sources xkb-options "['caps:hyper']"

gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>s']"
gsettings set org.gnome.desktop.wm.keybindings minimize "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "[]"
gsettings set org.gnome.shell.keybindings toggle-application-view "[]"
gsettings set org.gnome.shell.keybindings toggle-message-tray "[]"
gsettings set org.gnome.desktop.wm.keybindings show-desktop "[]"
gsettings set org.gnome.shell.keybindings focus-active-notification "[]"
gsettings set org.gnome.shell.extensions.dash-to-dock shortcut "[]"

gsettings set org.gnome.shell.keybindings switch-to-application-1 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-2 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-3 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-4 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-5 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-6 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-7 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-8 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-9 "[]"

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Hyper>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Hyper>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Hyper>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Hyper>4']"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Alt><Hyper>1']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Alt><Hyper>2']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Alt><Hyper>3']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Alt><Hyper>4']"


pkill -x xcape 2>/dev/null

/home/aginiaux/.local/share/junest/bin/junest -- bash -c "xcape -e 'Hyper_L=Escape' -t 0" 
