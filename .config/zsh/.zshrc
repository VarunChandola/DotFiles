# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(
    git
    docker
    docker-compose
    macos
    brew
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='vim'
export VISUAL='vim'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS

# Navigation
setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# Completion
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Common aliases
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='clear'
alias h='history'
alias ports='netstat -tulanp'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias wget='wget -c'
alias mkdir='mkdir -pv'
alias ping='ping -c 5'
alias myip='curl ipinfo.io/ip'
alias ports='netstat -tulanp'
alias header='curl -I'
alias headerc='curl -I --compress'
alias mount='mount |column -t'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'
alias vi=vim
alias svi='sudo vim'
alias vis='vim "+set si"'
alias edit='vim'

# Load Git aliases
source ~/.config/git/.git_aliases

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh 