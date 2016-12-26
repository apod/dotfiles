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

# Oh-my-zsh configuration
DISABLE_AUTO_TITLE="true"

# Load local configuration
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Commands, plugins and bundles
zplug "plugins/git",  from:oh-my-zsh
zplug "plugins/lein", from:oh-my-zsh

if is_osx; then
    zplug "plugins/brew",  from:oh-my-zsh
fi

if is_archlinux; then
    zplug "plugins/pacman",  from:oh-my-zsh
fi

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

# Prompt Theme
source ~/.zsh/themes/apod.zsh-theme
