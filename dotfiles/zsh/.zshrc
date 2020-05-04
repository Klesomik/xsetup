# Zsh customisation file

#setfont iso02-12x22
#setfont ter-v32n

# /etc/environment

# ~/ clean-up:
export XDG_CONFIG_HOME="$HOME/dotfiles"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# zsh stuff
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_DATA_HOME"/zsh/history

source $ZDOTDIR/.home-cleen-up

source $ZDOTDIR/.env
source $ZDOTDIR/.functions
source $ZDOTDIR/.alias

if [[ -n $PS1 ]]; then
    # interactive
    source $ZDOTDIR/interactive
else
    # noninteractive
fi

if [[ -o login ]]; then
    # login
    if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
        exec startx -- -keeptty -nolisten tcp > $XDG_CONFIG_HOME/X11/.xorg.log 2>&1;
    fi
else
    # nonlogin
fi
