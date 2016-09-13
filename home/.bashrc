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
alias gg='git log --oneline --abbrev-commit --all --graph --decorate'

source ~/.git-prompt.sh
PS1='[\u@\h \W$(__git_ps1)]\$ '
