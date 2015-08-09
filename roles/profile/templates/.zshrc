# promot
PROMPT='[%n@%m]# '
RPROMPT='[%d]'

# vi like keybind
bindkey -v

# auto complete
autoload -U compinit; compinit

# auto cd to the directory if the command doesn't exist and directory exists
setopt auto_cd

# history
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=2000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY

setopt share_history
bindkey "^R" history-incremental-search-backward

# alias
alias rc='vizshrc.sh'
alias ze='vizshenv.sh'
alias vimrc='vimrc.sh'
alias pr='. provision.sh'
alias vi='/usr/local/bin/vim'
alias itohiro73='cd ~/Development/github/itohiro73'
alias vians='vi $PROVISION_HOME/dev-env-setup.yml'
alias cdpr='cd $PROVISION_HOME'
alias cdvag='cd ~/Development/vagrant'
alias stps='postgres -D /usr/local/var/postgres'

