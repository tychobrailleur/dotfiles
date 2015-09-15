[[ -s ~/.bashrc ]] && source ~/.bashrc
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:/usr/local/lib/node_modules/karma/bin" 

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/sebastien/.gvm/bin/gvm-init.sh" ]] && source "/home/sebastien/.gvm/bin/gvm-init.sh"
