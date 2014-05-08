source ~/.git-prompt.sh
export PS1='\h:\w$(__git_ps1 " \e[0;32m(%s)\e[0;37m") \$ '

[[ -s  ~/.bash_completion ]] && source ~/.bash_completion
[[ -s  ~/.bash_aliases ]] && source ~/.bash_aliases
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

function clean_grails() {
  rm -rf ~/.grails/.slcache
}

export GRAILS_HOME=~/dev/grails-2.2.4
export PATH=${GRAILS_HOME}/bin:${PATH}

export PATH="$HOME/.rvm/bin:$PATH" 
