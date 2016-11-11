# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# GPG agent implemeting SSH agent support
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
	export SSH_AUTH_SOCK="/run/user/$(id -u $USER)/gnupg/S.gpg-agent.ssh"
fi
export GPG_TTY=$(tty)

alias mv='mv -iv'
alias cp='cp -iv'
alias rm='rm -Iv'
alias ln='ln -iv'
alias mkdir='mkdir -v'
alias bc='bc -l'
alias gp='gp -q'
alias gg='git log --oneline --abbrev-commit --all --graph --decorate'

alias npr='mpv http://stream1.tpr.org/kstxmp3'
alias kpac='mpv http://stream1.tpr.org/kpacmp3'
alias relax='mpv http://relax.stream.publicradio.org/relax.mp3'

source ~/.git-prompt.sh
PS1='[\u@\h \W$(__git_ps1)]\$ '

export PGDATABASE='testing'
export PGUSER=$USER
#export PGHOST='localhost'
#export PGPORT='5432'
