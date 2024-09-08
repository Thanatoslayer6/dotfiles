# Defaults
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

path+=("$HOME/.local/bin" "$HOME/.config/scripts" "$HOME/.local/share/npm/bin")

export PATH

# Fix paths #1 to make ~ less cluttered (.config)
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc 
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export WGETRC="$XDG_CONFIG_HOME"/wgetrc
export VIMINIT="source ${XDG_CONFIG_HOME}/vim/vimrc"

# (.local/share)
# export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo

# (/run/user/1000)
# export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

# Disable history files for less
export LESSHISTFILE=-

# Other exports for default apps
export TERMINAL="alacritty"
export EDITOR="vim"
export BROWSER="librewolf"
export VIDEO="mpv"
export IMAGE="sxiv"
export READER="zathura"
export OPENER="xdg-open"

source "$HOME/.cargo/env"
