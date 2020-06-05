# fixes some error/notice about admin folders on startup on macOS
ZSH_DISABLE_COMPFIX=true

export ZSH="/Users/djs/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git colorize sublime)

alias wil='python3 ~/whoislive.py'
alias pullLogs='rsync -rzvh USER@SERVER:~/Logging/ ~/Desktop/Logging/'
alias s='ssh USER@SERVER'
alias slt=st
tw () { streamlink twitch.tv/$@ best --player mpv;}
ul() { sh ~/uplimg.sh $@; }


source $ZSH/oh-my-zsh.sh
