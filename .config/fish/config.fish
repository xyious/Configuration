if status is-interactive
    set fish_greeting
    export STARSHIP_CONFIG=/home/ailuriya/.config/starship/starship.toml
    starship init fish | source
    fastfetch
end

