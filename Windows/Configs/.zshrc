export ZSH="/home/torch/.oh-my-zsh"
ZSH_THEME="robbyrussell"


plugins=(git sublime colorize)


alias ex='explorer.exe .'
alias s='ssh u@s'
alias slt=st # redirect slt to zsh plugin sublime, because muscle memory

alias python3='python'
alias wil='python3 ~/whoislive.py'


tw () { streamlink twitch.tv/$@ best --player $(cygpath -w /cygdrive/c/in_path/mpv.exe);}
UplImg() { python3 ~/UploadImage.py $@; }

source $ZSH/oh-my-zsh.sh