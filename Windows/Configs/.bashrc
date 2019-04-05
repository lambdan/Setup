
# ls color output
alias ls='ls --color=auto'

# shortcut to open sublime text with fixed windows path, from http://www.kevs.biz/2015/09/launch-sublime-text-from-cygwin-terminal.html
slt() {
	local cmd="'$(cygpath 'C:\Program Files\Sublime Text 3\sublime_text.exe')'"
	if [[ $@ ]]; then
		cmd=$cmd' "'$(cygpath --windows "$@" | sed ':a;N;$!ba;s/\n/" "/g')'"'
	fi
	eval $cmd
}
#######################


# is this needed?
[[ "$-" != *i* ]] && return
