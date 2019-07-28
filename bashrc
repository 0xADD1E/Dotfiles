# .bashrc
if [ $TERM = "xterm-kitty" ] || [ $TERM = "xterm-256color" ]; then
	fish
	exit
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
