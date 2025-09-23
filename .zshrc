export CLICOLOR="1";
export LSCOLORS="exfxcxdxbxegedabagacad"
export TERM=xterm

export PATH=$PATH:/root/.local/bin

eval "$(/opt/homebrew/bin/brew shellenv)"

ZINIT_HOME=${HOME}/.local/share/zinit/zinit.git

if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in Oh my posh
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/torb.yml)"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit light joshskidmore/zsh-fzf-history-search

# Load completions
autoload -U compinit && compinit

# Bash-like navigation
autoload -U select-word-style
select-word-style bash

# History
export HISTFILE=~/.zhistory
export HISTSIZE=10000
export SAVEHIST=10000
setopt inc_append_history
setopt share_history
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Aliases
alias ls='ls --color'
alias l='ls -tF'     # type, info
alias la='ls -FA'    # type, info, all
alias ll='ls -lFAh'  # long list, type, info, all human readable
alias ..='cd ..'