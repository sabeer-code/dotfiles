# My Bash prompt
#
#
# Example:
# (2023-10-11T15:44:12 +0100) <0> [~]
# wacko@hostname $

green() {
    local text="$1"
    local green="\[\e[32m\]"
    local end="\[\e[0m\]"

    echo -n "${green}${text}${end}"
}

blue() {
    local text="$1"
    local blue="\[\e[96m\]"
    local end="\[\e[0m\]"

    echo -n "${blue}${text}${end}"
}

# Python environments like to prefix PS1
# This will ensure there is still a newline at the start of the prompt
prefix_newline() {
    if [[ \n != ${PS1:0:2} ]]; then
        PS1='\n'${PS1}
    fi
}

date=$(green '(\D{%FT%T %z})')
exit_code='$?'
git_branch=$(blue '$(git branch --show-current 2>/dev/null | sed '"'"'s/.*/ (&)/'"'"')')
cwd='\w'
user='\u'
host='\h'


PROMPT_COMMAND=prefix_newline
export PS1="${date} <${exit_code}>${git_branch} [${cwd}]\n${user}@${host} ${var}\$ "

