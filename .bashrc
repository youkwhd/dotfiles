#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias mocp='mocp --theme yellow_red_theme'

# inspired by @lukesmithxyz at github
# bold
PS1="\[\e[1;31m\][\[\e[1;33m\]\u\[\e[1;32m\]@\[\e[1;34m\]\H \[\e[1;35m\]\w\[\e[1;31m\]]\[\e[1;37m\]\\$ \[\e[0m\]"

# normal
# PS1="\[\e[0;31m\][\[\e[0;33m\]\u\[\e[0;32m\]@\[\e[0;34m\]\H \[\e[0;35m\]\w\[\e[0;31m\]]\[\e[0;37m\]\\$ \[\e[0m\]"

# PS1 for root, place it at /root/.bashrc
# PS1="\[\e[1;31m\][\[\e[1;31m\]!\u\[\e[1;32m\]@\[\e[1;34m\]\H \[\e[1;35m\]\w\[\e[1;31m\]]\[\e[1;37m\]\\$ \[\e[0m\]"

export PATH="$PATH:$HOME/.local/bin" # local scripts
export EDITOR=nvim

. "$HOME/.cargo/env"
