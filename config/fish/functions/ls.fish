# Defined in - @ line 1
if command -sq exa
        function ls
                exa --git-ignore  $argv;
        end
else
    set ls_command (which ls)
    function ls
        $ls_command --color $argv;
    end
end
