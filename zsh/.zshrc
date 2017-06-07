# Zplug
if [ ! -f ~/.zplug/init.zsh ]; then
    curl -sL zplug.sh/installer | zsh
fi

source ~/.zplug/init.zsh

# OS Predicates
is_osx () {
    [[ $('uname') == 'Darwin' ]]
}

is_archlinux () {
    [[ -a /etc/arch-release ]]
}

# Zsh configuration

# If a pattern for filename generation has no matches leave it unchanged
unsetopt nomatch

# History configuration
if [ -z "$HISTFILE" ]; then
    HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify
setopt inc_append_history
setopt share_history

# Oh-my-zsh configuration
DISABLE_AUTO_TITLE="true"

# Load local configuration
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Commands, plugins and bundles
zplug "plugins/git",  from:oh-my-zsh
zplug "plugins/lein", from:oh-my-zsh

if is_osx; then
    zplug "plugins/brew", from:oh-my-zsh
fi

if is_archlinux; then
    zplug "plugins/pacman", from:oh-my-zsh
fi

zplug "supercrabtree/k"

zplug "b4b4r07/enhancd", use:init.sh

# Prompt theme
zplug '~/.zsh/themes', as:theme, from:local

# Install missing plugins
if ! zplug check; then
    zplug install
fi

# Load plugins
zplug load

# Keybindings
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "^[OA" up-line-or-history
bindkey "^[OB" down-line-or-history
bindkey "^P" up-line-or-beginning-search
bindkey "^N" down-line-or-beginning-search

# ins / home / pgup
bindkey "${terminfo[kich1]}" overwrite-mode
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kpp]}" up-history
# del / end / pgdown
bindkey "${terminfo[kdch1]}" delete-char
bindkey "${terminfo[kend]}" end-of-line
bindkey "${terminfo[knp]}" down-history

# Aliases
alias ls='ls --color=auto'
alias l='ls -lah'
