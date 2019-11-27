if test -z "$EDITOR"
	if test (command -s nvim)
		set -x EDITOR "nvim"
	else if test (command -s vim)
		set -x EDITOR "vim"
	else if test (command -s vi)
		set -x EDITOR "vi"
	end
end
