#!/usr/bin/fish

# https://github.com/ELLIOTTCABLE/code-connect
# (a fork of https://github.com/chvolkmann/code-connect)

function code --description 'Run local code exectuable if installed, run code-connect otherwise'
    set -l local_code_executable (which code 2>/dev/null)
    if test -n "$local_code_executable"
        # code is in the PATH, use that binary instead of the code-connect
        $local_code_executable $argv
    else
        # code not locally installed, use code-connect
        code-connect $argv
    end
end
