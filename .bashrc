# ~/.bashrc: executed by bash(1) for non-login shells.
#
# When bash is invoked as an interactive login shell, or as a non-interactive
# shell with the --login option, it first reads and executes commands from the
# file
#   1. `/etc/profile`, if that file exists.
#
#   After reading that file, it looks for
#   2. `~/.bash_profile`
#   3. `~/.bash_login`
#   4. `~/.profile`
#
# In that order, and reads and executes commands from the **first** one that
# exists and is readable.
#
# When an interactive shell that is not a login shell is started, bash reads
# and executes commands from **both**:
#   - `/etc/bash.bashrc`
#   - `~/.bashrc`
#
# if these files exist.


# History File
HISTCONTROL=ignoreboth  # Don't put duplicate lines or lines starting with space in the history
HISTSIZE=1000           # The number of commands to remember in the command history in memory
HISTFILESIZE=2000       # The maximum number of lines contained in the history file saved to disk
shopt -s histappend     # Append to the history file, don't overwrite it


# Bash Run Configurations
if [ -d "$HOME/.bashrc.d" ]; then
    for file in $(find $HOME/.bashrc.d/ -type f | sort); do
        if [ -f "$file" ]; then
            . "$file"
        fi
    done
fi

