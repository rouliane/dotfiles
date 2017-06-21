hostColor="\e[32m"
export PS1="\[\e]0;\w\a\]\n\[$hostColor\]\u@\h \[\e[1;34m\]\t\[\e[0m\] \[\e[33m\]\w\[\e[0m\]\[\e[36m\]\$(__git_ps1)\[\e[0m\]\n\$ "

# Aliases
alias ll='ls -lah --color=auto'
alias  d='ls -lah --color=auto'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='../../../'
alias .....='../../../../'
alias 1="cd .."
alias 2="cd ../.."
alias 3="cd ../../.."
alias 4="cd ../../../.."
alias 5="cd ../../../../.."
alias 6="cd ../../../../../.."

alias nautilus='explorer'
alias gp='git pull --rebase'
alias vi='vim'
alias wl='php console worker:list'
alias wr='php console worker:run'
alias devel='ssh devel-v3-web21'

# usefull vars
export projects_dir=~/Documents/projects
export documents_dir=~/Documents
export eclipse_dir=~/App/eclipse-neon
export workspace=~/workspace
export develServer="devel-v3-web21"

# grep matches colorization
alias grep=' grep --color'

# force git to be in english
#LANG=en
alias git='LANG=en_US.UTF-8 git'

# Docker
alias docker-stop-all='docker stop $(docker ps -a -q)'
alias docker-clean-containers='docker rm -fv $(docker ps -a -q -f status=exited)'
alias docker-clean-untagged-images='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'
alias docker-check-router='docker exec -ti system_router_1 cat /etc/nginx/conf.d/staging.conf | sed '\''/^\s*$/d'\'''
alias docker-yolo='docker rm -fv $(docker ps -aq)'
alias docker-yolo++='docker rm -fv $(docker ps -aq) && docker system prune'

