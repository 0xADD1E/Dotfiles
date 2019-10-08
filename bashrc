# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Launch tmux if we aren't already, fish if we are
if [ -z "$TMUX" ]; then
	tmux
	exit
else
	export TERM=tmux-256color
	fish
	exit
fi
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
