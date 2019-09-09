if test -d $HOME/bin
	set -gx PATH $HOME/bin $PATH
end
if test -d $HOME/.cargo/bin
	set -gx PATH $HOME/.cargo/bin $PATH
end
if test -d $HOME/.yarn/bin
	set -gx PATH $HOME/.yarn/bin $PATH
end
if test -d $HOME/.local/bin
	set -gx PATH $HOME/.local/bin $PATH
end
if test -d $HOME/Library/Python/2.7/bin
	set -gx PATH $HOME/Library/Python/2.7/bin $PATH
end
if test -d $HOME/Library/Python/3.7/bin
	set -gx PATH $HOME/Library/Python/3.7/bin $PATH
end
