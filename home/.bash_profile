# .bash_profile

# User specific environment and startup programs

export EDITOR=vim
export VISUAL=vim
export LESSHISTFILE='-'

# GPG agent implemeting SSH agent support
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
	export SSH_AUTH_SOCK="${HOME}/.gnupg/S.gpg-agent.ssh"
fi

eval $(gpg-agent --daemon)

export HISTSIZE=
export HISTFILESIZE=
export PATH=$PATH:~/bin

# GPG agent support
export GPG_TTY=$(tty)

source ~/.git-prompt.sh
PS1='[\u@\h \W$(__git_ps1)]\$ '
