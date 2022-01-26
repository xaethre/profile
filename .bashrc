# PROMPT STRING FUNCTIONS
U_OK() { U_OK=$?; [[ $U_OK -eq 0 ]] && printf '%s' "$(whoami)"; }
U_ER() { U_ER=$?; [[ $U_ER -ne 0 ]] && printf '%s' "$(whoami)"; }

# SHELL CONFIGURATION
shopt -s direxpand cdspell
set -o noclobber
stty werase undef
bind "\C-w:unix-filename-rubout"

# PROMPT STRING
export PS1="[\[\e[32m\]\$(U_OK)\[\e[m\]\[\e[31m\]\$(U_ER)\[\e[m\]:\[\e[36m\]\w\[\e[m\]] "
[[ $EUID -eq 0 ]] && export PS1="[\[\e[33m\]R\[\e[m\]]$PS1"
systemd-detect-virt -q && export PS1="[\[\e[34m\]VM\[\e[m\]]$PS1"

# ALIASES
alias rsp='rsync -rlpv'
alias nc="netcat"
alias ip="ip -c"
alias man="man -L ru"
alias pname="ps -p 1337 -o comm="
alias vidinfo="mplayer -vo null -ao null -identify -frames 0"
alias trans="trans -b en:ru -verbose"
alias cal="cal -m"
alias sudo="sudo "
alias ls="ls -hF --color=auto"
alias htop="htop -s M_RESIDENT"
[[ -f "$(which gawk)" ]] && alias awk="gawk --re-interval"
[[ -f "$(which vim)" ]] && alias vi="vim"

# BASH COMPLETION
if [[ -f /usr/share/bash-completion/bash_completion ]]; then
	. /usr/share/bash-completion/bash_completion
elif [[ -f /usr/local/share/bash-completion/bash_completion.sh ]]; then
	. /usr/local/share/bash-completion/bash_completion.sh 
elif [[ -f /etc/bash_completion ]]; then
	. /etc/bash_completion
fi

# VARIABLES
export TERM=xterm-256color
export PAGER=less
export EDITOR=vim
export VISUAL=vim
export GIT_EDITOR=vim
export GIT_AUTHOR_NAME='Rijndael Brown'
export GIT_AUTHOR_EMAIL='aethre@yandex.com'
export BLOCKSIZE=M
export SOMESHIT="/home/rijndael/Cloud/Someshit"
export CDPATH="$SOMESHIT"
export PATH="${PATH}:${SOMESHIT}/scripts:/opt/bin"
export TIMEZONE="/usr/share/zoneinfo/Europe/Moscow"
export TZ="$TIMEZONE"
export TTY=$(tty)
export PROMPT_DIRTRIM=2
export PROMPT_COMMAND="printf '\e]0;'${HOSTNAME%%.*}'\7'" #Terminal title
