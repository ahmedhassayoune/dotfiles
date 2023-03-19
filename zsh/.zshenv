# -- XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# -- EDITOR
export EDITOR="nvim"
export VISUAL="nvim"

# -- ZSH
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

# -- EPITA
export NNTPSERVER="news.epita.fr"

# -- VsCode bin
export PATH="$PATH:/mnt/c/Users/Ahmed/AppData/Local/Programs/Microsoft VS Code/bin"

# -- Maven
#M2_HOME='/opt/apache-maven-3.6.3'
#export PATH="$PATH:$M2_HOME/bin"

# -- Postgresql
export PGDATA="$HOME/postgres_data"
export DB_USERNAME="ahmed.hassayoune"
