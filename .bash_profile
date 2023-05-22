# eval "$(rbenv init -)"

export BASH_SILENCE_DEPRECATION_WARNING=1

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="🌊 \[\e[38;5;38m\]\w\[\e[38;5;209m\]\$(parse_git_branch)\[\033[00m\] 🦑 "
export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
alias ls="ls -GFh"

alias editbp="open ~/.bash_profile"
alias gco="git checkout"
alias gck="git cherry-pick"
alias gcom="git checkout master"
alias gcm="git commit -m"
alias gpl="git pull"
alias gps="git push"
alias gb="git branch"
alias grm="git rebase master"
alias gri="git rebase -i"
alias gs="git status"
alias ga="git add . && gs" 
alias ys="yarn && yarn start"
alias yt="yarn test"
clearl() { clear && ls;}

export NVM_DIR="/Users/colehart/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

source /usr/local/etc/bash_completion.d/git-completion.bash

# to edit git completion file: sudo open /usr/local/Cellar/git/2.21.0/etc/bash_completion.d/git-completion.bash
