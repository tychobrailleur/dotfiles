alias ll='ls -l'
alias tptem='totem'
alias na='nautilus'
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias c="clear"
alias r="reset"
alias g="grails"
alias h="cd"
alias apt-get="sudo apt-get"
alias serve="python -m SimpleHTTPServer"
alias rgrep="grep -HnR"

alias ec="emacsclient -n"
alias ls='ls -G'
alias grep='grep --color'
alias fgrep='fgrep --color'
alias egrep='egrep --color'
alias fuck='$(thefuck $(fc -ln -1))'

# Grails aliases
# alias grails="grails -echoOut -plain-output"
alias grails-run="grails run-app"
alias grails-test="grails test-app"
alias grails-clean="grails clean"
alias unit="grails run-test unit:"

# Functions
function clean_grails() {
  rm -rf ~/.grails/.slcache
}

function bak() {
  mv -v $1{,.bak}
}

function unbak() {
  x=$1
  y=${x%.bak}
  mv -v $x $y
}
