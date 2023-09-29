# Aliases

# K8s Aliases
alias k="kubectl"
export do="-o yaml --dry-run=client"


# URL Encode/Decode Alias
alias urldecode='python3 -c "import sys, urllib.parse as ul; print(ul.unquote(sys.argv[1]), end=\"\")"'
alias urlencode='python3 -c "import sys, urllib.parse as ul; print(ul.quote(sys.argv[1]), end=\"\")"'

# Other Command Line Aliases
alias ll="ls -alF"


# Dotfiles config
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
