# Path to your oh-my-zsh installation.
export ZSH=/Users/beeman/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="beeman"
ZSH_THEME="agnoster"

plugins=(git)

# User configuration
export PATH="~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$PATH:/Users/beeman/bin"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ws="cd ~/workspace/"
alias wsf="cd ~/workspace/fullcube/fullcube"
alias wsb="cd ~/workspace/beeman"
alias wss="cd ~/workspace/scratch"
alias wst="cd ~/workspace/twiba"
alias wsc="cd ~/workspace/colmena"
alias wsa="cd ~/workspace/angular-cli"
alias wsm="cd ~/workspace/mean-expert"

alias grep='grep --color=auto --exclude-dir={.bzr,.cvs,.git,.hg,.svn,bower_components,node_modules,jspm_packages}'

alias e="wstorm"

export PATH="/usr/local/sbin:$PATH"

function code {  
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

autoload -U promptinit && promptinit
prompt pure

export GIT_AUTHOR_NAME="Bram Borggreve"
export GIT_AUTHOR_EMAIL="borggreve@gmail.com"

alias gus="git checkout master; git fetch upstream && git reset --hard upstream/master && git push; git checkout -"

source ~/.secrets
