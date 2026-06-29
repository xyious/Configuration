function ls --wraps='eza -al --color=always --group-directories-first --icons' --description 'alias ls ls --color=auto'
    command ls --color=auto $argv
end
