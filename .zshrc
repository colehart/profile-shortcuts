autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats ' (%b) '
setopt PROMPT_SUBST

PROMPT='🌊 %F{38}%2~%f%B%F{209}${vcs_info_msg_0_}%f%b% 🦑 '

LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
alias ls="ls -GFh"

alias editbp="code ~/.bash_profile"
alias editzp="code ~/.zshrc"
alias gco="git checkout"
alias gcom="git checkout master"
alias gcor="git checkout release"
alias gcm="git commit -m"
alias gpl="git pull"
alias gps="git push"
alias gpk="git cherry-pick"
alias gb="git branch"
alias grm="git rebase master"
alias gri="git rebase -i"
alias gs="git status"
alias ga="git add . && gs" 
alias ys="yarn && yarn start"
alias yt="yarn test"
clearl() { clear && ls;}

NVM_DIR="/Users/colehart/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
