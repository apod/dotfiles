# Zplug
if [ ! -f ~/.zplug/zplug ]; then
    curl -fLo ~/.zplug/zplug --create-dirs git.io/zplug
fi

source ~/.zplug/zplug

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


# Load local configuration
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Plugins and bundles
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

# Prompt Theme
source ~/.zsh/themes/apod.zsh-theme
