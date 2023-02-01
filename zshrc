HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS

export PATH=$PATH:~/bin

export PATH="$HOME/.local/bin/:$PATH"

source "$HOME/.cargo/env"
#export PATH="$HOME/.local/bin/:$PATH"
#alias vi="vim"
#alias vim="nvim"

     
alias paru="paru --assume-installed cargo --assume-installed rust"
alias music="yt-dlp -f 'bestaudio/best' -ciw -o '%(title)s.%(ext)s' -v --extract-audio"
alias cat="bat"
alias ls="exa"
alias find="fd"
alias pacman="sudo pacman"
alias ps="procs"
alias top="procs"
alias cloc="tokei"
alias cd="z"
alias vim="helix"
alias lvim="helix"
alias grim="grim - | wl-copy"
alias hx="helix"


[ -f "/home/moatx/.ghcup/env" ] && source "/home/moatx/.ghcup/env" # ghcup-env

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
nerdfetch

