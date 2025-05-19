# Set EDITOR and GIT_EDITOR
if command -v nvim &> /dev/null; then
    export EDITOR=nvim
    export GIT_EDITOR=nvim
else
    export EDITOR=vim
    export GIT_EDITOR=vim
fi
