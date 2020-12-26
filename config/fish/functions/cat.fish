# Defined in - @ line 1
if command -sq bat
    function cat --description 'alias cat bat'
        bat  $argv;
    end
end
