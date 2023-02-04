# Load more completions
fpath=($ZDOTDIR/plugins/zsh-completions/src $fpath)

zmodload zsh/complist                                                           # Should be called before compinit

bindkey -M menuselect '^[[Z' reverse-menu-complete                              # Shift-tab for previous selection

autoload -U compinit; compinit
_comp_options+=(globdots)                                                       # With hidden files

# -- Options
setopt COMPLETE_IN_WORD                                                         # Complete from both ends of a word.

# -- Zstyles
# :completion:<function>:<completer>:<command>:<argument>:<tag>                 # Ztyle pattern

zstyle ':completion:*' completer _extensions _complete _approximate             # Define completers

# Use cache for commands using cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"

zstyle ':completion:*' complete true                                            # Complete the alias when _expand_alias is used as a function
zstyle ':completion:*' menu select                                              # Allow you to select in a menu
zstyle ':completion:*' complete-options true                                    # Autocomplete options for cd instead of directory stack
zstyle ':completion:*' squeeze-slashes true                                     # cd ~//Documents will expand to cd ~/Documents
# zstyle ':completion:*' file-sort dummyvalue                                   # sort matching files alphabetically
zstyle ':completion:*' file-sort modification                                   # sort matching files by modif date
zstyle ':completion:*:*:*:*:default' list-colors ${(s.:.)LS_COLORS}             # Colors for files and directory
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
