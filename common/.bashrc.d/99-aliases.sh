# Aliases

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# Other Command Line Aliases
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

[[ -e "$(which nvim)" ]] && alias vim="nvim"

# FZF Aliases
cdf() {
    cd $(find . -maxdepth 1 -type d | fzf) || exit
}

ftmux() {
    local session_name=$(tmux list-sessions | cut -d ':' -f1 | fzf)
    if [[ -z ${TMUX:-} ]]; then
        # Not in a TMUX session
        tmux attach-session -t "${session_name}"
    else
        # In a TMUX session
        tmux switch-client -t "${session_name}"
    fi
}

# Dotfiles config
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
