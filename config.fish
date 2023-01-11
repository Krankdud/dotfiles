alias vim="lvim"
alias python="python3"
alias bath="ssh bath@50.116.20.111"

alias fo='vim (fzf --preview="bat --theme=base16 --color=always --style=plain {}")'

set FZF_DEFAULT_COMMAND "fd --type f"

fish_vi_key_bindings
fish_ssh_agent

eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
