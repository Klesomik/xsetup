# Zsh customisation file

# ~/ clean-up:
export XDG_CONFIG_HOME="$HOME/dotfiles"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# zsh stuff
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_DATA_HOME"/zsh/history

source $ZDOTDIR/home-cleen-up

source $ZDOTDIR/env
source $ZDOTDIR/functions

if [[ -n $PS1 ]]; then
    # interactive
    source $ZDOTDIR/interactive
else
    # noninteractive
fi

if [[ -o login ]]; then
    # login
    source $ZDOTDIR/login
else
    # nonlogin
fi

source $ZDOTDIR/alias