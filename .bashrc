#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Commands
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ls='ls --color=auto'
alias rmdir='rm -rf'

# Programs
alias chr='chromium &'

PS1='[\u@\h \W]\$ '
