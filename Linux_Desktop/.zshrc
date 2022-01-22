
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# command-time plugin from: https://github.com/popstas/zsh-command-time
plugins=(git colorize sublime command-time pip catimg)

alias protontricks='flatpak run com.github.Matoking.protontricks'
alias slt='subl'
alias wil='python3 ~/whoislive.py'
alias s='ssh USER@SERVER'
alias c=clear
alias x='xdg-open'

tw () { streamlink twitch.tv/$@ best; }
UplImg() { python3 ~/UploadImage.py $@; }
path () { python3 -c "import os;print(os.path.realpath(\""$1\""))" }

# https://stackoverflow.com/a/25876379
DISABLE_AUTO_UPDATE=true

source $ZSH/oh-my-zsh.sh



