alias psx="ps -aux | grep $1"
mcd () {
  mkdir "$1"
  cd "$1"
}

alias cls='clear; ls'
alias p2="python2"
alias p3="python3"

alias gl='git pull'
alias gs='git status'
alias gb='git branch'
alias gd='git diff'
alias ga='git add'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gpo='git push origin'
alias gpom='git push origin master'

alias kcl='kubectl'

alias mkb='minikube'

alias nr="npm run"
alias nrb="npm run build"
alias nrt="npm run test"

alias whoshome='~/scripts/netcheck.sh'
