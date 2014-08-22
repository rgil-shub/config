# ~/.bashrc
# Version: 2014082218

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
    . /etc/bash.bashrc
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PROMPT
PS1="$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;33m\]\u@\h'; fi)\[\033[01;34m\] \w \$([[ \$? != 0 ]] && echo \"\[\033[01;31m\]:(\[\033[01;34m\] \")\\$\[\033[00m\] "

# COLORS

# term
export TERM='xterm-256color'

# ls
alias ls='ls --color'

# dmesg (util-linux 2.23+ RHEL7+)
#alias dmesg='dmesg --color'

# grep
alias grep='grep --color'
# export GREP_COLOR='1;31'

# man
export LESS_TERMCAP_mb=$'\E[01;34m'
export LESS_TERMCAP_md=$'\E[01;34m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;37m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[04;37m'

# ALIAS
alias ll='ls -l'
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''

# VIM
if [ -f /usr/bin/vim ]; then
    export EDITOR='vim'
    alias vi='vim'
fi

# SHOPT
# automatically fixes your 'cd folder' spelling mistakes
shopt -s cdspell
# the bash history is only saved when you close the terminal, 
# not after each command. fix it..
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# ARCHLINUX
# get recommened packages when command not found (requires pkgfile --update)
#source /usr/share/doc/pkgfile/command-not-found.bash
# update grub2 config
#alias update-grub='grub-mkconfig -o /boot/grub/grub.cfg'

