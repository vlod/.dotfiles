alias neofetch=fastfetch
alias fd=fdfind
alias bat=batcat
alias h=history
alias cls=clear
alias uuid='uuidgen'
alias lgrep='ls -al| grep -i '

# https://garywoodfine.com/use-pbcopy-on-ubuntu/
#alias pbcopy='xclip -selection clipboard'
#alias pbpaste='xclip -selection clipboard -o'
# use wl-copy and wl-paste

# docker stuff
alias dk="docker"
alias dkps="docker ps"
alias dkrm="docker rm"
alias dkrmall='docker rm '
alias dkrmid='docker rmi '
alias dki="docker images"
alias dcu="docker compose up"
alias dcud="docker compose up -d"
alias dkrun="docker run -it --rm" # dkrun alpine

# whats listening on a particular port
#alias ports="ss -tulpn | grep LISTEN"
alias ports="lsof -i :3001"
#alias kill-node='ss -tulpn | grep LISTEN |grep 3001| grep -Po "(?<=pid=).*(?=,)" |xargs kill'

# https://gist.github.com/mkczyk/646b69f85f0214f813d3a3da951d7df2
alias g='git'
alias ga='git add'

alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbD='git branch -D'

alias gcmsg='git commit -m'
alias gco='git checkout'
alias gcm='git checkout main'

alias gd='git diff'
alias gf='git fetch'
alias gl='git pull'

alias gp='git push'
alias gpd='git push --dry-run'

alias grb='git rebase'
alias grbi='git rebase -i'

alias gst='git status'

mkcd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

# Navigate back from the working directory, one directory at a time, for the number of times given in the first argument
function cdb() {
    if [[ -z "$1" ]]; then
        cd ..
        return
    fi
    pwd
    for i in `seq 1 $1`; do
        cd ..
    done
    pwd
}

