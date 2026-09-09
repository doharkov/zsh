# XDG base directories
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Editor
export EDITOR="nvim"
export VISUAL="nvim"

# GPG
export GPG_TTY=$(tty)

# Personal binaries/scripts
export PATH="$HOME/.local/bin:$PATH"

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

# Shell
setopt AUTOCD
setopt NOBEEP
setopt NUMERIC_GLOB_SORT

# Initialize zoxide
eval "$(zoxide init zsh)"

# Completion system
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"            # cache metadata file
zstyle ':completion:*' menu select                     # interactive completion menu selection
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # case-insensitive

# Install plugins
source "$ZDOTDIR/plugins.zsh"

# Keybinding
source "$ZDOTDIR/plugins.zsh"

# Starship
source "$ZDOTDIR/prompt.zsh"
