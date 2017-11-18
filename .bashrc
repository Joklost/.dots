#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    exec startx
fi

alias ls="ls --color=auto"
alias ll="ls -al"
PS1="[\u@\h \W]\$ "

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# eval "$(pipenv --completion)"

export VISUAL=vim
export EDITOR="$VISUAL"
export RANGER_LOAD_DEFAULT_RC=TRUE
