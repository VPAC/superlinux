# .bash_profile
# This file can be edited by the user to set up their system as they like.
# Its copied to a users dir when their account is first created.
# SYSADMIN : don't edit the one in /etc/skel, it gets overwritten, play
# with the one in /common/skel if necessary.
# David Bannon, 23/4/03

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

module load vpac

alias d='ls -F --color'

# Like to play safe? comment out or override when sure with -f ?
alias rm='rm -i'
alias cp='cp -i'

alias ls='ls -F'
alias cp='cp -i'
alias ll='ls -laxp'
alias lo='exit'


PATH=$PATH:$HOME/bin
export PATH
unset USERNAME

# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"


