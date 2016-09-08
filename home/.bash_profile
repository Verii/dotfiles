# .bash_profile

# User specific environment and startup programs

export EDITOR=vim
export VISUAL=vim
export LESSHISTFILE='-'

# GPG agent implemeting SSH agent support
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
	export SSH_AUTH_SOCK="/run/user/$(id -u $USER)/gnupg/S.gpg-agent.ssh"
fi

export HISTSIZE=
export HISTFILESIZE=
export PATH=$PATH:~/bin

source ~/.git-prompt.sh
PS1='[\u@\h \W$(__git_ps1)]\$ '
