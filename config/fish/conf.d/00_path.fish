function _prepend_if_exists
    if test -d $argv[1]
        set -gx fish_user_paths $argv[1] $fish_user_paths
    end
end
_prepend_if_exists /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
_prepend_if_exists /opt/homebrew/bin
_prepend_if_exists /opt/homebrew/sbin
_prepend_if_exists $HOME/bin
_prepend_if_exists $HOME/.cargo/bin
_prepend_if_exists $HOME/.yarn/bin
_prepend_if_exists $HOME/.local/bin
_prepend_if_exists $HOME/Library/Python/2.7/bin
_prepend_if_exists $HOME/Library/Python/3.7/bin

if test -d /opt/homebrew
    set -gx LIBRARY_PATH /opt/homebrew/lib:/opt/homebrew/opt/e2fsprogs/lib
    set -gx CPATH /opt/homebrew/include:/opt/homebrew/opt/e2fsprogs/include
end
