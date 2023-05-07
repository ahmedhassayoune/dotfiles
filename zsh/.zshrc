#!/usr/bin/env zsh

fpath=($ZDOTDIR/plugins $fpath)

# -- Navigation
setopt CORRECT              # Spelling correction

# -- Aliases
source "$ZDOTDIR/aliases/basic_commands.zsh"
source "$ZDOTDIR/aliases/git.zsh"

# -- Autosuggestions
source "$ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

# -- Syntax highlighting
source "$ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# -- Quickly go back to a specific parent directory (cd ../../..) using bd
source "$ZDOTDIR/plugins/bd.zsh"

# -- Insert sudo at the beginning of a command
source "$ZDOTDIR/plugins/sudo.zsh"

# -- Vim options
bindkey -v
export KEYTIMEOUT=1
source "$ZDOTDIR/plugins/cursor_mode.zsh" # Change cursor

# Vim backspace=indent,eol,start
bindkey "^?" backward-delete-char
bindkey "^[[3~" delete-char
bindkey -a "^[[3~" delete-char

# Add Vi text-objects for brackets and quotes
autoload -Uz select-bracketed select-quoted
zle -N select-quoted
zle -N select-bracketed
for km in viopp visual; do
  bindkey -M $km -- '-' vi-up-line-or-history
  for c in {a,i}${(s..)^:-\'\"\`\|,./:;=+@}; do
    bindkey -M $km $c select-quoted
  done
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $km $c select-bracketed
  done
done

# -- Completion
source $ZDOTDIR/completion.zsh

# -- nvm
export NVM_DIR="$XDG_CONFIG_HOME/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# -- Include colors in commands (ls, tree ...)
eval "$(dircolors -b)"

# -- Theme
eval "$(starship init zsh)"
