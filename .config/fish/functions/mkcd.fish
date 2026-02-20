# Taken from fishshell documentations
# https://fishshell.com/docs/current/cmds/function.html#example
function mkcd -d "mkdir then cd"
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
