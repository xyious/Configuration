if status is-interactive
    # use the coolbeans theme
    export STARSHIP_CONFIG=/home/ailuriya/.config/starship/starship.toml
    starship init fish | source
    fastfetch
end

