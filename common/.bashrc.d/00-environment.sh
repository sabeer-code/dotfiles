# Other tools configurations/setup

# Setup fzf
# https://github.com/junegunn/fzf/blob/master/README.md#setting-up-shell-integration
# ---------
if [[ ! "$PATH" == */home/wacko/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/wacko/.fzf/bin"
fi

eval "$(fzf --bash)"


# Setup Mise
# ---------
# https://mise.jdx.dev/getting-started.html#activate-mise
eval "$(/home/wacko/.local/bin/mise activate bash)"

