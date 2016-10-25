clear

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

GIT_PS1_SHOWUPSTREAM=auto
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_STATESEPARATOR=" "

#change the spaces around the (%s) to add/remove spaces around prompt
PS1=" \[\e[36m\]\W\[\e[m\]\[\e[35m\]\$(__git_ps1 \" (%s)\" )\[\e[m\] \[\e[31m\]➜\[\e[m\] "

PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

alias ls='ls --color -XF'
LS_COLORS=$LS_COLORS:'di=0;36:' ; export LS_COLORS
