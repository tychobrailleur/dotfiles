export BASH_CONF="bashrc"
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/mvn-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

# If problem with term display because of unicode char,
# try setting TERM=term, rather than xterm-256color.
separator="💛💚"
#separator="$"
# 🔰‏

PS1='\w$(__git_ps1 " \[\e[0;32m\](%s)\[\e[0;37m"\]) \[\e[1;33m\]${separator}\[\e[0m\] '
#PS1="\$(~/.rvm/bin/rvm-prompt u) $PS1"

# Change colour of directories, blue is too dark
LS_COLORS=$LS_COLORS:'di=0;35:'
export LS_COLORS
export LS_OPTIONS='--color=auto'
export EDITOR='emacs'

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

export RVM_DIR=~/.rvm

export PS1
export PATH=~/bin:${PATH}
export JVM_OPTS="-Dclover.license=~/dev/clover.license"
export PSQL_EDITOR="emacs -nw -Q"
# export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
export MANPAGER="less"
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
