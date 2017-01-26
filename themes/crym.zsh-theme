# -*- sh -*- vim:set ft=sh ai et sw=4 sts=4:
source ../lib/completion.zsh
source ../lib/git.zsh

if [ "$(id -u)" = "0" ]; then
    PROMPT='%{$fg[yellow]%}%n@%m:%{[0;90m%}%~ $(git_prompt_info)%(!.#.$)%{$reset_color%} '
elif [[ "$(hostname)" = *"vps"* ]]; then
    PROMPT='%{[0;36m%}%n@%m:%{[0;90m%}%~ $(git_prompt_info)%(!.#.$)%{$reset_color%} '
else
    PROMPT='%{$fg[red]%}%n@%m:%{[0;90m%}%~ $(git_prompt_info)%(!.#.$)%{$reset_color%} '
fi


RPROMPT='%{$fg[yellow]%}$(git_prompt_short_sha)%{$reset_color%} '
#RPROMPT='%{fg[yellow]%}$(git_prompt_short_sha)%{$reset_color%}'
#RPROMPT='[%*]'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="›%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔%{$fg[yellow]%}"


ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[yellow]%}✚%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[green]%}✹%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[yellow]%}✖%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[yellow]%}➜%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[blue]%}✭%{$fg[yellow]%}"
