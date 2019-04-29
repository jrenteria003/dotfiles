#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# basic shortcuts
alias ll='ls -lFh'
alias la='ls -alFh'
alias l1='ls -1F'
alias l1m='ls -1 | more'
alias lm='ls | more'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias pp='ping archlinux.org'
alias ff='firefox'
alias mdp='mate-display-properties'
alias dgpuon='sudo tee /proc/acpi/bbswitch <<<ON'
alias dgpuoff='sudo tee /proc/acpi/bbswitch <<<OFF'

PS1='[\u \W] '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*|termite)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

#alias nvidiaon='sudo tee /proc/acpi/bbswitch <<<ON'
#alias nvidiaoff='sudo tee /proc/acpi/bbswitch <<<OFF'

