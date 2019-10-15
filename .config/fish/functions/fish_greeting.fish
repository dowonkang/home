function fish_greeting
	if test -z $TMUX
		and command -s pfetch >/dev/null 2>&1
		pfetch
	end
end
