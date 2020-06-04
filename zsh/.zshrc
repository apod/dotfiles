# Zsh configuration

# If a pattern for filename generation has no matches leave it unchanged
unsetopt nomatch

# History configuration
if [ -z "$HISTFILE" ]; then
    HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=10000
SAVEHIST=10000

setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify
setopt share_history

# Load local configuration
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Keybindings
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "^P" up-line-or-beginning-search
bindkey "^N" down-line-or-beginning-search

# Prompt
autoload -U colors && colors
setopt prompt_subst

source ~/.zsh/lib/git.zsh
source ~/.zsh/themes/apod.zsh-theme

# Aliases

# Navigation
alias ls='ls --color=auto'
alias l='ls -lah'
alias ..='cd ..'
alias ....='cd ../..'

# Clipboard
alias cbcopy='xclip -in -selection clipboard'
alias cbpaste='xclip -out -selection clipboard'

# Git
alias gst='git status'
alias grt='cd "$(git rev-parse --show-toplevel || echo .)"'

# System
if (( $+commands[gio] )); then
    alias open='gio open'
fi
