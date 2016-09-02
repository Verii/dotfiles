# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias cal='date; cal -w3 $(expr $(date +%m) + 1) $(date +%Y)'

# User specific aliases and functions
alias mv='mv -iv'
alias cp='cp -iv'
alias rm='rm -Iv'
alias ln='ln -iv'
alias mkdir='mkdir -v'
alias bc='bc -l'
alias gp='gp -q'
alias relax='mpv http://relax.stream.publicradio.org/relax.mp3'

source ~/.git-prompt.sh
PS1='[\u@\h \W$(__git_ps1)]\$ '
