
if stat $HOME/bin > /dev/null
	set -gx PATH $HOME/bin $PATH
end
if stat $HOME/.cargo/bin > /dev/null
	set -gx PATH $HOME/.cargo/bin $PATH
end
if stat $HOME/.yarn/bin > /dev/null
	set -gx PATH $HOME/.yarn/bin $PATH
end
if stat $HOME/.local/bin > /dev/null
	set -gx PATH $HOME/.local/bin $PATH
end
