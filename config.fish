if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

alias vim="nvim"
alias python="python3"

fish_ssh_agent
