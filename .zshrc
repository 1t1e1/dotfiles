
# my things s
alias v='nvim'
alias nottt='cd ~/Documents/writing/Notes'
alias projjj='cd /home/neva/Documents/Projects'
alias kitapreact='cd /home/neva/Documents/Book/Software/React'
alias kitaplik='cd /home/neva/Documents/Book/'
alias parlaklik='xrandr --output eDP1 --brightness'
alias del="mv -t ~/.local/share/Trash/" # use delete command " ; find ~/.Trash/ -mtime +30 -exec rm {} \;"
alias learnEnglish="node ~/Documents/writing/Notes/dersler/english/uygulama.js" # learn english app.


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## this make man page colorfull
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal
# export PAGER="most" # it uses emacs key, change all shortcut in man page 


precmd() { eval "$PROMPT_COMMAND" }
PROMPT_COMMAND='pwd > /tmp/whereami'

# open ternimal in same directory
alias ttt="~/.config/terminal_samedir.sh"
alias termmm="i3-sensible-terminal"


## Android settings

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
