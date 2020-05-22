# Defined in - @ line 2
if test (uname) != 'Darwin'
    function open --description 'alias open xdg-open'
        xdg-open  $argv;
    end
end
