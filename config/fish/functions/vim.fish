# Defined in - @ line 1
if command -sq nvim
	function vim --description 'alias vim nvim'
		nvim  $argv;
	end
end
