[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx "$XDG_CONFIG_HOME/X11/xinitrc"
