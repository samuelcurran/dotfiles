if status is-interactive
    # Commands to run in interactive sessions can go here

    # local fish configs
    if test -f $XDG_CONFIG_HOME/fish/local.fish
        source $XDG_CONFIG_HOME/fish/local.fish
    end

    # asdf completions
    if test -f ~/.asdf/asdf.fish
        source ~/.asdf/asdf.fish
    end

    alias cat='bat --paging=never' 
    alias vim=nvim
    alias ls=lsd
    alias ll='ls -Ahl'

    set -Ux XDG_CONFIG_HOME ~/.config
    set -Ux DOT ~/.dotfiles
    set -Ux EDITOR nvim

    starship init fish | source
end
