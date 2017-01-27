# -*- sh -*- vim:set ft=sh ai et sw=4 sts=4:

if [ "$(id -u)" = "0" ]; then
    PROMPT='%F{yellow}%n@%m:%{[0;90m%}%~ %f%(!.#.$) '
elif [[ "$(hostname)" = *"vps"* ]]; then
    PROMPT='%{cyan}%n@%m:%{[0;90m%}%~ %f%(!.#.$) '
else
    PROMPT='%F{red}%n@%m:%{[0;90m%}%~ %f%(!.#.$) '
fi
