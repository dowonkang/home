# ls
if ls --color=auto >/dev/null 2>&1
	alias ls='ls -F --color=auto'
else if ls -G >/dev/null 2>&1
	alias ls='ls -FG'
else
	alias ls='ls -F'
end
if test (command -s exa)
	alias exa='exa -F'
	alias l='exa'
	alias ll='exa -l'
	alias la='exa -a'
	alias lla='exa -la'
else
	alias l='ls'
	alias ll='ls -lh'
	alias la='ls -A'
	alias lla='ls -lAh'
end

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# mkdir
alias mkdir='mkdir -pv'

# git
if test $LANG != 'en_US.UTF-8'
	and command -s locale >/dev/null 2>&1
	and locale -a | grep --extended-regexp 'en_US\.(utf8|UTF\-8)' >/dev/null
	alias git='env LANG=en_US.UTF-8 git'
end
