# Defined in - @ line 2
if test (uname) = 'Linux'
    function open
        xdg-open  $argv;
    end
end
if test "$OS" = 'Windows_NT'
    function open
        explorer $argv;
    end
end
