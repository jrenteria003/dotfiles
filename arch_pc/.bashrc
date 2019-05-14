#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias pp='ping archlinux.org'
alias ll='ls -a'
alias enp3s0up='sudo ip link set enp3s0 up'
alias enp3s0dw='sudo ip link set enp3s0 down'
alias ..='cd ..'

PS1='[\u \W]\$ '
