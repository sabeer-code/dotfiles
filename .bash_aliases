# Aliases

# K8s Aliases
alias k="kubectl"
export do="-o yaml --dry-run=client"


# Other Command Line Aliases
alias ll="ls -alF"

if [[ -e "$(which nvim)" ]]; then
    alias vim="nvim"
fi

# FZF Aliases
cdf() {
    cd $(find . -maxdepth 1 -type d | fzf)
}

ftmux() {
    local session_name=$(tmux list-sessions | cut -d ':' -f1 | fzf)
    if [[ -z ${TMUX:-} ]]; then
        # Not in a TMUX session
        tmux attach-session -t ${session_name}
    else
        # In a TMUX session
        tmux switch-client -t ${session_name}
    fi
}

# Dotfiles config
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
