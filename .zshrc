# .zshrc

# Version: 20170327 (ZSH 5.3.1 / FreeBSD 11)

# Requires:
# + cache dir: ~/.zsh/cache
# + gnuls
# + vim | vim-lite
# + zsh-syntax-highlighting
# + py27-powerline-status

# URLs:
# + https://www.system-rescue-cd.org/Download
# + https://wiki.archlinux.org/index.php/Zsh
# + https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# + https://powerline.readthedocs.io/en/latest/usage/shell-prompts.html#zsh-prompt
# + https://sourceforge.net/p/systemrescuecd/code/ci/master/tree/overlay-squashfs-x86/root/.zshrc

# SYSTEMRESCUECD 4.9.3

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
# auto rehash
zstyle ':completion:*' rehash true
# cd ..<TAB>
zstyle ':completion:*' special-dirs true
# cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

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
# host_color="red"
path_color="blue"
# path_color="white"
date_color="white"

# host="%{$fg[$host_color]%}%n@%m"
host="%{$fg_bold[$host_color]%}%n"
cpath="%B%{$fg_bold[$path_color]%}%/%b"
# ret_status examples
# ret_status="%(?:%{$fg_bold[green]%}✓ :%{$fg_bold[red]%}✗ )"
# ret_status="%(?:%{$fg_bold[blue]%}➜ :%{$fg_bold[yellow]%}☹ %s)"
# ret_status="%(?:%{$fg_bold[white]%}->:%{$fg_bold[red]%}:(%s)"
ret_status="%(?:%{$fg_bold[blue]%}->:%{$fg_bold[yellow]%}:(%s)"
end="%{$reset_color%}%% "

# PS1="$host $cpath $end"
PS1="$host $cpath $ret_status $end"

# HISTORY
export HISTSIZE=512
export SAVEHIST=512
HISTFILE=~/.history

# EXPORT
export EDITOR='vim'
export PAGER='less'

# COLORS

export TERM='xterm-256color'
# gnuls color highlighting (dircolors -> coreutils 8.26)
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=01;05;37;41:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=01;36:*.au=01;36:*.flac=01;36:*.m4a=01;36:*.mid=01;36:*.midi=01;36:*.mka=01;36:*.mp3=01;36:*.mpc=01;36:*.ogg=01;36:*.ra=01;36:*.wav=01;36:*.oga=01;36:*.opus=01;36:*.spx=01;36:*.xspf=01;36:'
# export LSCOLORS="ExGxFxdxCxDxDxhbadExEx";
export CLICOLOR='YES'
# export GREPCOLORS="ExGxFxDxCxDxDxHbAdExEx"
export GREP_COLOR='1;33'
# export GREP_COLOR='1;31'
export LESS_TERMCAP_mb=$'\E[01;37m'
export LESS_TERMCAP_md=$'\E[01;37m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;41;37m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[04;31m'

# zsh-syntax-highlighting 
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ALIAS
alias curl='curl -C - -O'
# alias ls='ls -G -F'
alias ls='gnuls --color'
alias ll='ls -l'
alias grep='grep --color'
alias vi='vim'
alias updatedb='/usr/libexec/locate.updatedb'
alias weather='\curl -s "wttr.in/Madrid?m"'

# POWERLINE

# source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
