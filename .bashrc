#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# inspired by @lukesmithxyz at github
export PS1='\[\e[1;31m\][\[\e[1;33m\]\u\[\e[1;32m\]@\[\e[1;34m\]\H \[\e[1;35m\]\w\[\e[1;31m\]]\[\e[1;37m\]\$ \[\e[0m\]' 

# local scripts
export PATH="$PATH:$HOME/.local/bin" 

