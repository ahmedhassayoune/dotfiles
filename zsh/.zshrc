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

# -- Theme
eval "$(starship init zsh)"
