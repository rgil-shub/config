# .zshrc

# Version: 20170303 (ZSH 5.3.1 / FreeBSD 11)

# Requires:
# + zsh-syntax-highlighting
# + py27-powerline-status

# URLs:
# + https://www.system-rescue-cd.org/Download
# + https://wiki.archlinux.org/index.php/Zsh
# + https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# + https://powerline.readthedocs.io/en/latest/usage/shell-prompts.html#zsh-prompt

### SYSTEMRESCUECD 4.8.1 ###                                                                                                                                                                                   

autoload -U zutil
autoload -U compinit
autoload -U complist

bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward
bindkey '^K' kill-whole-line
bindkey "\e[H" beginning-of-line        # Home (xorg)
bindkey "\e[1~" beginning-of-line       # Home (console)
bindkey "\e[4~" end-of-line             # End (console)
bindkey "\e[F" end-of-line              # End (xorg)
bindkey "\e[2~" overwrite-mode          # Ins
bindkey "\e[3~" delete-char             # Delete
bindkey '\eOH' beginning-of-line
bindkey '\eOF' end-of-line

# Activation
compinit

# HISTORY
export HISTSIZE=512
export SAVEHIST=512
HISTFILE=~/.history

# COMPLETION

# case-insensitive (uppercase from lowercase) completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# process completion
zstyle ':completion:*:processes' command 'ps -au$USER'
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"
# zstyle
zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*:descriptions' format '%U%F{yellow}%d%f%u'

# OPTIONS

setopt CORRECT
setopt ALWAYS_TO_END
setopt NOTIFY
setopt NOBEEP
setopt AUTOLIST
setopt AUTOCD
setopt PRINT_EIGHT_BIT

# PROMPT

# for have colors
autoload -U colors
colors

# define your colors here (i hate white background)
host_color="yellow"
path_color="blue"
date_color="white"

# host="%{$fg[$host_color]%}%n@%m"
host="%{$fg_bold[$host_color]%}%n"
cpath="%B%{$fg_bold[$path_color]%}%/%b"
# ret_status="%(?:%{$fg_bold[green]%}✓ :%{$fg_bold[red]%}✗ )"
# ret_status="%(?:%{$fg_bold[blue]%}➜ :%{$fg_bold[yellow]%}☹ %s)"
ret_status="%(?:%{$fg_bold[blue]%}->:%{$fg_bold[yellow]%}:(%s)"
end="%{$reset_color%}%% "

PS1="$host $cpath $ret_status $end"

### ARCHLINUX ###

# auto rehash
zstyle ':completion:*' rehash true
# zsh-syntax-highlighting 
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

### SHUB ###

# EXPORT
export TERM='xterm-256color'
export CLICOLOR='YES'
# export LSCOLORS="ExGxFxdxCxDxDxhbadExEx";
# export GREPCOLORS="ExGxFxDxCxDxDxHbAdExEx"
export GREP_COLOR='1;33'
export EDITOR='vim'
export PAGER='less'
export LESS_TERMCAP_mb=$'\E[01;37m'
export LESS_TERMCAP_md=$'\E[01;37m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;41;37m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[04;31m'

# ALIAS
alias curl='curl -C - -O'
alias ls='ls -G -F'
alias ll='ls -l'
alias grep='grep --color'
alias vi='vim'
alias updatedb='/usr/libexec/locate.updatedb'
alias weather='\curl -s "wttr.in/Madrid?m"'

# POWERLINE
# source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
