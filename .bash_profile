[[ -s ~/.bashrc ]] && source ~/.bashrc
export BASH_CONF="bash_profile"
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# export PATH=/usr/local/bin:$PATH
# export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:/usr/local/lib/node_modules/karma/bin"


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/sebastien/.gvm/bin/gvm-init.sh" ]] && source "/home/sebastien/.gvm/bin/gvm-init.sh"

export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$HOME/.cargo/bin:$PATH"
