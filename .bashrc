export BASH_CONF="bashrc"
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

[[ -s "/usr/local/etc/bash_completion.d/mvn-completion.bash" ]] && source /usr/local/etc/bash_completion.d/mvn-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

# If problem with term display because of unicode char,
# try setting TERM=term, rather than xterm-256color.
#separator="💛💚"
separator="$"
#separator="🔰‏"
# 🔰‏
#separator="🐉"

PS1='\w$(__git_ps1 " \[\e[0;32m\](%s)\[\e[0;37m"\]) \[\e[1;33m\]${separator}\[\e[0m\] '
PS1="\$(~/.rvm/bin/rvm-prompt u) $PS1"

# Change colour of directories, blue is too dark
LS_COLORS=$LS_COLORS:'di=0;35:'
export LS_COLORS
export LS_OPTIONS='--color=auto'
export EDITOR='emacs'

PLATFORM=`uname`

[[ -s  ~/.bash_aliases ]] && source ~/.bash_aliases
[[ -s  ~/.bash_completion ]] && source ~/.bash_completion
[[ -s  ~/.bash_work ]] && source ~/.bash_work
[[ -s  ~/.bash_local ]] && source ~/.bash_local
[[ -f ~/.git-completion.bash ]] && source ~/.git-completion.bash
if [[ "$PLATFORM" == "Darwin" ]]; then
    [[ -s ~/.bash_darwin ]] && source ~/.bash_darwin
fi
if [[ "$PLATFORM" == "Linux" ]]; then
    [[ -s ~/.bash_linux ]] && source ~/.bash_linux
fi

## Find local config file, if needed
testpg=kpsewhich
if which "$testpg" 2> /dev/null; then
  temp=$(kpsewhich -var-value TEXMFCONFIG)
  if [ -e "$temp/web2c/texmf.cnf" ] ; then
      export TEXMFCNF=$temp/web2c:
  fi
else
  echo "kpsewhich not found"
fi


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
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
source "$HOME/.cargo/env"

# export BASH_IT="${HOME}/.bash_it"

# # Don't check mail when opening terminal.
# unset MAILCHECK

# # Change this to your console based IRC client of choice.
# export IRC_CLIENT='erc'

# # Set this to the command you use for todo.txt-cli
# export TODO="t"

# # Set this to false to turn off version control status checking within the prompt for all themes
# export SCM_CHECK=true
# export BASH_IT_THEME="powerline"
# export POWERLINE_PROMPT="cwd scm"


# source "$BASH_IT"/bash_it.sh

# vterm integration
vterm_printf(){
    if [ -n "$TMUX" ] && ([ "${TERM%%-*}" = "tmux" ] || [ "${TERM%%-*}" = "screen" ] ); then
        # Tell tmux to pass the escape sequences through
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}

vterm_cmd() {
    local vterm_elisp
    vterm_elisp=""
    while [ $# -gt 0 ]; do
        vterm_elisp="$vterm_elisp""$(printf '"%s" ' "$(printf "%s" "$1" | sed -e 's|\\|\\\\|g' -e 's|"|\\"|g')")"
        shift
    done
    vterm_printf "51;E$vterm_elisp"
}

. "$HOME/.cargo/env"
