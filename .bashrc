# ~/.bashrc
# Version: 20140821

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
    . /etc/bash.bashrc
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# colors
eval `dircolors -b /etc/DIR_COLORS`
export GREP_COLOR='1;35'

# alias
alias ls='ls --color=auto'
alias ll='ls -l'
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''
alias dmesg='dmesg --color=auto'
alias grep='grep --color=auto'
alias update-grub='grub-mkconfig -o /boot/grub/grub.cfg'
alias vi='vim'

# prompt
# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
PS1="$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;35m\]\h'; else echo '\[\033[01;36m\]\u@\h'; fi)\[\033[01;37m\] \w \$([[ \$? != 0 ]] && echo \"\[\033[01;36m\]:(\[\033[01;37m\] \")\\$\[\033[00m\] "
# PS1='\[\033[01;33m\]\h \[\033[01;34m\]\W \$ \[\033[00m\]'
# PS1='[\u@\h \W]\$ '

# man
export LESS_TERMCAP_mb=$'\E[01;37m'
export LESS_TERMCAP_md=$'\E[01;37m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'

# automatically fixes your 'cd folder' spelling mistakes
shopt -s cdspell

# the bash history is only saved when you close the terminal, 
# not after each command. fix it..
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# archlinux
# pacman -S pkgfile
# pkgfile --update
source /usr/share/doc/pkgfile/command-not-found.bash

# git
export EDITOR=vim
