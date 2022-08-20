# Add in .bashrc or bash_profile

# some more aliases.
# alias shell command.
alias l='ls -CF'
alias ll='ls -lhF'
alias la='ls -lAhF'
alias lt='ls -lthFr'
alias lta='ls -ltahFr'
alias rm='rm -i'
alias rmdir='rmdir -i'
alias pd='pushd'
#alias vi='nvim'
#alias vim='nvim'

# conda alias.
alias cl='conda env list'
alias ca='conda activate'
alias cda='conda deactivate'

# git alias.
alias gs='git status'
alias gadd='git add'
alias gcom='git commit -m'
alias gpull='git pull'
alias gpush='git push'
alias gchange='git checkout'

# PS1 (invite commande line configuration).
# parse function of git active git branch.
parse_git_branch(){
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
# export PS1.
export PS1="\[\e[94;22m\][\d - \t] \[\e[92m\]\W \[\e[91m\]\$(parse_git_branch)\n\[\e[00;2m\]\u@\h \[\e[00m\] $ "