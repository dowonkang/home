# Name is taken from ohmyzsh
# https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/functions.zsh#L16-L18
# Code is taken from fishshell documentations
# https://fishshell.com/docs/current/cmds/function.html#example
function take -d "mkdir then cd"
    command mkdir -p $argv
    if test $status = 0
        switch $argv[(count $argv)]
            case '-*'

            case '*'
                cd $argv[(count $argv)]
                return
        end
    end
end
