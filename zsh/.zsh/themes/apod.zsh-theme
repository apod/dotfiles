# ------------------------------------------------------------------------------
#          FILE:  apod.zsh-theme
#   DESCRIPTION:  apod's minimal theme
#        AUTHOR:  Alex Podaras
#       VERSION:  0.1
# ------------------------------------------------------------------------------

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[red]%}↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$fg_bold[green]%}:%{$reset_color%}"

JOBS="%(1j.%{$fg_bold[green]%}[%{$fg_bold[red]%}%j%{$fg_bold[green]%}]%{$reset_color%}.)"

PROMPT='${JOBS}$(git_prompt_short_sha)$(git_prompt_info)$(git_prompt_ahead)%{$fg_bold[green]%}$ %{$reset_color%}'
 
RPROMPT="%{$fg[cyan]%}%2~%{$reset_color%}"