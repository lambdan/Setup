# color terminal and ls
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export CLICOLOR=1

# whoislive, streamlink and twitch shortcut
alias wil='python3 ~/whoislive.py'
tw () { streamlink twitch.tv/$@ best --player mpv;}

# open sublime text from terminal
alias slt='open -a "Sublime Text"'

# remove annoying Catalina warning that bash is deprecated, bash 4 life
export BASH_SILENCE_DEPRECATION_WARNING=1
