# -*- sh -*- vim:set ft=sh ai et sw=4 sts=4:

if [ "$(id -u)" = "0" ]; then
    zsh_theme_color='%F{yellow}'
elif [[ "$(hostname)" = *"vps"* ]]; then
    zsh_theme_color='%F{cyan}'
else
    zsh_theme_color='%F{red}'
fi
PROMPT='$zsh_theme_color%n@%m:%{[0;90m%}%~ %f%(!.#.$) '
