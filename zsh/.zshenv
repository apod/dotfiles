# Load local configuration
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local

# PATH configuration
typeset -U path
path=(~/bin /usr/local/{bin,sbin} $path)

# Plugin configuration
export ENHANCD_DISABLE_DOT=1
