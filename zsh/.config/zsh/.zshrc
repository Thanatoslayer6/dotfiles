# agkozak prompt
source ${HOME}/.config/zsh/agkozak-zsh-prompt.plugin.zsh
AGKOZAK_USER_HOST_DISPLAY=0
AGKOZAK_MULTILINE=0
AGKOZAK_LEFT_PROMPT_ONLY=1
AGKOZAK_PROMPT_CHAR=( ❯ ❯ ❮ )
AGKOZAK_CUSTOM_SYMBOLS=( '⇣⇡' '⇣' '⇡' '+' 'x' '!' '>' '?' )
AGKOZAK_COLORS_CMD_EXEC_TIME=yellow

# zsh-prompt from Chris@machine
# source ${HOME}/.config/zsh/zsh-prompt

# Starship prompt
# eval "$(starship init zsh)"

# Basic auto/tab complete:
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Change dir given just path
setopt autocd extendedglob nomatch menucomplete

# Colors
# enable color support of ls and also add handy aliases
  if [ -x /usr/bin/dircolors ]; then
      test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
      alias ls='ls --color=auto'
      alias dir='dir --color=auto'
      alias vdir='vdir --color=auto'
      alias grep='grep --color=auto'
      alias fgrep='fgrep --color=auto'
      alias egrep='egrep --color=auto'
  fi

# Aliases
alias startx='startx "$XDG_CONFIG_HOME/X11/xinitrc" -- "$XDG_CONFIG_HOME/X11/xserverrc" vt1'
alias sfeed_update='sfeed_update "$XDG_CONFIG_HOME/sfeed/sfeedrc"'
alias wget='wget --no-hsts'
alias v='vim'
alias lf='lfrun'
alias editzsh='vim "$XDG_CONFIG_HOME/zsh/.zshrc"'
alias editvim='vim "$XDG_CONFIG_HOME/vim/vimrc"'
alias suck='rm -f config.h ; sudo make install'
alias clean='sudo pacman -R $(pacman -Qdtq)'

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
