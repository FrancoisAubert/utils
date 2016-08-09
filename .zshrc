# Path to your oh-my-zsh installation.
  export ZSH=/home/francoisa/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="amuse"

# "robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git virtualenv virtualenvwrapper)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source /usr/local/bin/virtualenvwrapper.sh
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias warrior="echo w@rR!0rZlbd"

go () 
{ 
    if [ -z $1 ]; then
        echo "Usage: go analytics|data|sarenza|samsung";
    fi;
    case $1 in 
        "analytics")
            echo "Going on analytics.artefact.is";
            ssh  ubuntu@analysis.artefact.is
        ;;
        "cassandra")
            echo "Going on cassandra.data.artefact.is";
            ssh  ubuntu@cassandra.data.artefact.is
        ;;
        "db0")
            echo "Going on db0 cassandra";
            ssh ubuntu@prod-scenarizor-db-0.apps.artefact.is
        ;;
        "db1")
            echo "Going on db1 cassandra";
            ssh ubuntu@prod-scenarizor-db-1.apps.artefact.is
        ;;
        "db2")
            echo "Going on db2 cassandra";
            ssh ubuntu@prod-scenarizor-db-2.apps.artefact.is
        ;;
        "db3")
            echo "Going on db3 cassandra";
            ssh ubuntu@prod-scenarizor-db-3.apps.artefact.is
        ;;
        "sarenza")
            echo "Going on prod stories sarenza";
            ssh ubuntu@prod-stories-sarenza.apps.artefact.is
        ;;
        "sarenza-staging")
            echo "Going on staging stories sarenza";
            ssh ubuntu@staging-stories-sarenza.apps.artefact.is
        ;;
        "samsung")
            echo "Going on prod stories samsung";
            ssh ubuntu@ec2-54-171-73-177.eu-west-1.compute.amazonaws.com
        ;;
        "nginx")
            echo "Going on prod cruncher collector";
            ssh ubuntu@prod-cruncher-collector-1.apps.artefact.is
        ;;
        "kafka")
            echo "Going on kafka brokers";
            ssh ubuntu@kafka.data.artefact.is
        ;;
        "storm")
            echo "Going on storm storm nimbus";
            ssh ubuntu@storm.data.artefact.is
        ;;
        *)
            :;
            echo "Unknown destination: '$1'"
        ;;
    esac
}
