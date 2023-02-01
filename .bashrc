#
# ~/.bashrc
#
export PATH="$HOME/.local/bin/:$PATH"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
#export PATH="$HOME/.local/bin/:$PATH"
#alias vi="vim"
#alias vim="nvim"

alias paru="paru --assume-installed cargo"
alias music="yt-dlp -f 'bestaudio/best' -ciw -o '%(title)s.%(ext)s' -v --extract-audio"
alias cat="bat"
alias ls="exa"
alias find="fd"
alias pacman="sudo pacman"
alias ps="procs"
alias top="procs"
alias cloc="tokei"
alias cd="z"

[ -f "/home/moatx/.ghcup/env" ] && source "/home/moatx/.ghcup/env" # ghcup-env

eval "$(starship init bash)"
eval "$(zoxide init bash)"
nerdfetch
