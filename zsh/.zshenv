# Load local configuration
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local

# PATH configuration
typeset -U path
path=(~/bin /usr/local/{bin,sbin} $path)

export ENHANCD_FILTER=fzf
export ENHANCD_COMMAND=c
