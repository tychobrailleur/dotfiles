source ~/.git-prompt.sh

# If problem with term display because of unicode char,
# try setting TERM=term, rather than xterm-256color.
separator="★"
PS1='\w$(__git_ps1 " \[\e[0;32m\](%s)\[\e[0;37m"\]) \e[1;33m${separator}\e[0m '
PS1="\$(~/.rvm/bin/rvm-prompt u) $PS1"

PLATFORM=`uname`

[[ -s  ~/.bash_completion ]] && source ~/.bash_completion
[[ -s  ~/.bash_aliases ]] && source ~/.bash_aliases
[[ -s  ~/.bash_work ]] && source ~/.bash_work
[[ -s  ~/.bash_local ]] && source ~/.bash_local
[[ -f ~/.git-completion.bash ]] && source ~/.git-completion.bash
if [[ "$PLATFORM" == "Darwin" ]]; then
    [[ -s ~/.bash_darwin ]]  && source ~/.bash_darwin
fi

export NVM_DIR=~/.nvm
source ${NVM_DIR}/nvm.sh

export PS1
export PATH=~/bin:${PATH}
export JVM_OPTS="-Dclover.license=~/dev/clover.license"
export PSQL_EDITOR="emacs -nw -Q"
export MANPAGER="col -b | vim -c 'set ft=man ts=8 nomod nolist nonu' -c 'nnoremap i <nop>' -"

export PATH="$HOME/.rvm/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
