# add to top of ~/.bash_aliases
#
# if we have one in dotfiles exec it
# if [ -f "$HOME/.dotfiles/.bash_aliases" ] ; then
#  . $HOME/.dotfiles/.bash_aliases
# fi

mkcd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

alias h=history
alias c=clear
alias opencwd='nautilus .'

# https://garywoodfine.com/use-pbcopy-on-ubuntu/
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

#alias http-serve='python3 -m http.server'
alias www='caddy file-server --browse --listen :3000'

#alias audio-list='pactl list short modules | grep alca_card.pci' # pactl unload-module module-id

alias lgrep='ls -al| grep -i $*'

# docker stuff
alias dk="docker"
alias dkps="docker ps"
alias dkrm="docker rm"
alias dkrmall='docker rm `docker ps -aq --no-trunc`'
alias dki="docker images"
alias dcu="docker-compose up"
alias dcud="docker-compose up -d"
alias dkrun="docker run -it --rm" # dkrun alpine
alias bat="batcat" # https://github.com/sharkdp/bat
alias weather="curl wttr.in"
alias sublime_merge="flatpak run com.sublimemerge.App"
alias sublime_text="/opt/sublime_text/sublime_text"
alias enpass="/opt/enpass/Enpass showassistant"
alias cls="clear"

alias fd="fdfind"

alias youtube_dl="yt-dlp"

# whats listening on a particular port
alias ports="ss -tulpn | grep LISTEN"
alias kill-node='ss -tulpn | grep LISTEN |grep 3001| grep -Po "(?<=pid=).*(?=,)" |xargs kill'

# https://is.gd/c17Q3D
#function port-kill() {
#  kill -9 $(lsof -ti tcp:$1)
#}
port-kill () {
  ss -tulpn | grep LISTEN |grep "$1" | grep -Po "(?<=pid=).*(?=,)" |xargs kill
}

# https://techwiser.com/fix-bluetooth-device-doesnt-auto-connect-in-linux/
#function mouse-connect() {
# echo "Reconnecting MX Ergo mouse"
# bluetoothctl connect C6:97:89:8B:63:0E
#}
