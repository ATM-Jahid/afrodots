# Rename this file to match the name of the function
# e.g. ~/.config/fish/functions/n.fish
# or, add the lines to the 'config.fish' file.

function n --wraps nnn --description 'support nnn quit and change directory'
    # Block nesting of nnn in subshells
    if test -n "$NNNLVL"
        if [ (expr $NNNLVL + 0) -ge 1 ]
            echo "nnn is already running"
            return
        end
    end

    # The default behaviour is to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, remove the "-x" as in:
    #    set NNN_TMPFILE "$XDG_CONFIG_HOME/nnn/.lastd"
    # NOTE: NNN_TMPFILE is fixed, should not be modified

    set -x NNN_TMPFILE "$HOME/.config/nnn/.lastd"
    set -x NNN_COLORS "4123"
    set -x NNN_TRASH 1
    set -x NNN_OPENER "$HOME/.config/nnn/plugins/nuke"
    set -x NNN_BMS "c:~/Documents/Coding/;w:~/Pictures/WallE/;b:~/Documents/Books"
    set -x NNN_PLUG "f:preview-tabbed"

    nnn -acdHT v $argv

    if test -e $NNN_TMPFILE
        source $NNN_TMPFILE
        rm $NNN_TMPFILE
    end
end
