export ZSH="/home/djs/.oh-my-zsh"

alias subl='/cygdrive/c/Program\ Files/Sublime\ Text/sublime_text.exe'
alias slt='/cygdrive/c/Program\ Files/Sublime\ Text/sublime_text.exe'

ZSH_THEME="robbyrussell"
plugins=(git colorize command-time)

alias wil='python "c:\\in_path\\whoislive.py"'
alias ex='explorer.exe .'
alias c=clear
alias s='ssh XXXXXXXXXXXX'
alias python3='python'

tw () { streamlink twitch.tv/$@ best --player $(cygpath -w /cygdrive/c/in_path/mpv.exe);}
#UplImg() { python3 ~/UploadImage.py $@; }
path () { python3 -c "import os;print(os.path.realpath(\""$1\""))" }

source $ZSH/oh-my-zsh.sh
