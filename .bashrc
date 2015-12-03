source ~/.git-prompt.sh
# Sun is cute, bt causing problems on Iterm2
# PS1='\w$(__git_ps1 " \[\e[0;32m\](%s)\[\e[0;37m"\]) \e[1;33m☀\e[0m '
PS1='\w$(__git_ps1 " \[\e[0;32m\](%s)\[\e[0;37m"\]) \e[1;33m★\e[0m '
PS1="\$(~/.rvm/bin/rvm-prompt u) $PS1"

[[ -s  ~/.bash_completion ]] && source ~/.bash_completion
[[ -s  ~/.bash_aliases ]] && source ~/.bash_aliases
[[ -s  ~/.bash_work ]] && source ~/.bash_work
[[ -s  ~/.bash_local ]] && source ~/.bash_local
[[ -f ~/.git-completion.bash ]] && source ~/.git-completion.bash

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export PS1
export PATH=~/bin:${PATH}
export JVM_OPTS="-Dclover.license=~/dev/clover.license"
export PSQL_EDITOR="emacs -nw -Q"

export PATH="$HOME/.rvm/bin:$PATH"
