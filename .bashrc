source ~/.git-prompt.sh
export PS1='\h:\w$(__git_ps1 " \[\e[0;32m\](%s)\[\e[0;37m"\]) \$ '

[[ -s  ~/.bash_completion ]] && source ~/.bash_completion
[[ -s  ~/.bash_aliases ]] && source ~/.bash_aliases
[[ -s ~/.bash_work ]] && source ~/.bash_work
[[ -f ~/.git-completion.bash ]] && source ~/.git-completion.bash

export GRAILS_HOME=~/dev/grails-2.2.4
export PATH=${GRAILS_HOME}/bin:${PATH}
export PATH=~/bin:${PATH}
export JVM_OPTS="-Dclover.license=~/dev/clover.license"

export PATH="$HOME/.rvm/bin:$PATH" 
