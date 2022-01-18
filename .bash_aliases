alias ll='ls -alrht'
alias tptem='totem'
alias na='nautilus'
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias c="clear"
alias r="reset"
alias h="cd"
alias k="kubectl"
alias apt-get="sudo apt-get"
alias serve="python -m SimpleHTTPServer"
alias rgrep="grep -HnR"
alias mkdir='mkdir -p'

alias ec="emacsclient -n"
alias grep='grep --color'
alias fgrep='fgrep --color'
alias egrep='egrep --color'
alias fuck='$(thefuck $(fc -ln -1))'

alias git-up-all="for i in `ls`; do echo $i; cd ~/dev/$i && git-up; done"

# Clojure aliases
#alias clojure="clojure -A:rebel" # Use rebel as the Clojure REPL

function bak() {
  mv -v $1{,.bak}
}

function unbak() {
  x=$1
  y=${x%.bak}
  mv -v $x $y
}

# eval "$(hub alias -s)"
