# .bashrc
export LANG="en_US.UTF-8"
if hash genie 2>/dev/null && [ -z $INSIDE_GENIE ]; then
    genie -s && exit;
fi
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export TERM=screen-256color
[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
