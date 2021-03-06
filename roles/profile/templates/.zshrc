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
alias vi='/usr/bin/vim'
alias itohiro73='cd ~/Development/github/itohiro73'
alias dev='cd ~/Development/src/github.com/itohiro73'
alias vians='vi $PROVISION_HOME/dev-env-setup.yml'
alias cdpr='cd $PROVISION_HOME'
alias cdvag='cd ~/Development/vagrant'
alias stps='postgres -D /usr/local/var/postgres'
alias stop_jenkins='launchctl stop homebrew.mxcl.jenkins'
alias start_jenkins='launchctl start homebrew.mxcl.jenkins'
alias ql='qlmanage -p "$@"'
alias gitconf='gitconf.sh'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

bindkey '^]' peco-src
function peco-src() {
  local src=$(ghq list --full-path | peco --query "$LBUFFER")
  if [ -n "$src" ]; then
    BUFFER="cd $src"
    zle accept-line
  fi
  zle -R -c
}
zle -N peco-src
