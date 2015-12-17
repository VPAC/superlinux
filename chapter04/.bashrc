# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

function calc { echo "$1" | bc -l; }

alias fe31='source /usr/local/openfoam/2.3.0/foam-extend-3.1/etc/bashrc'
