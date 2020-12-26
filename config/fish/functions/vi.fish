# Defined in - @ line 1
if command -sq nvim
	function vi --description 'alias vi nvim'
		nvim  $argv;
	end
end
