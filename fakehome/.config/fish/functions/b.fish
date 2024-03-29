# This function starts broot and executes the command it produces, if any.
# It's needed because some shell commands, like `cd`,
# have no useful effect if executed in a subshell.

function b --wraps=broot
    set -l cmd_file (mktemp)
    if broot --outcmd $cmd_file $argv
        read --local --null cmd <$cmd_file
        rm -f $cmd_file
        eval $cmd
    else
        set -l code $status
        rm -f $cmd_file
        return $code
    end
end
