# -*- sh -*- vim:set ft=sh ai et sw=4 sts=4:
autoload -U colors
colors

if [ "$(id -u)" = "0" ]; then
    PROMPT='%F{yellow}%n@%m:%{[0;90m%}%~ %(!.#.$)%f '
#elif [[ "$(hostname)" = *"vps"* ]]; then
#    PROMPT='%{[0;36m%}%n@%m:%{[0;90m%}%~ %(!.#.$)%f '
else
    PROMPT='{$fg[red]%}%n@%m:%{[0;90m%}%~ %(!.#.$)%f '
fi


#RPROMPT='%{$fg[yellow]%}$(git_prompt_short_sha)%{$reset_color%} '
#RPROMPT='[%*]'
RPROMPT='$(git_super_status)'

#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
#ZSH_THEME_GIT_PROMPT_SUFFIX="›%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗%{$fg[yellow]%}"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔%{$fg[yellow]%}"
#ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[yellow]%}✚%{$fg[yellow]%}"
#ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[green]%}✹%{$fg[yellow]%}"
#ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[yellow]%}✖%{$fg[yellow]%}"
#ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[yellow]%}➜%{$fg[yellow]%}"
#ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═%{$fg[yellow]%}"
#ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[blue]%}✭%{$fg[yellow]%}"
