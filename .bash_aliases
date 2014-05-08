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
alias apt-get="sudo apt-get"
alias unit="grails run-test unit:"
alias serve="python -m SimpleHTTPServer"

if [ -x /usr/bin/dircolors ]; then
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi
