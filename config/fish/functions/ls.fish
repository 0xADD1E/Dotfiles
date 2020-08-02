# Defined in - @ line 1
if command -sq exa
	function ls --description 'alias ls exa'
		exa --git-ignore  $argv;
	end
end
