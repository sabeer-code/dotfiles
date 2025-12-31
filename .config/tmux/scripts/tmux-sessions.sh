#!/usr/bin/env bash
#
# Search for tmux sessions in pre-determined locations.

# Globals
readonly DIRS=(
  $(find ~/Projects/ -maxdepth 1 -mindepth 1 -type d)
  $(find ~/.config/ -maxdepth 1 -mindepth 1 -type d)
)

########################################
# Write error messages to stderr and exits
# the program with exit code of 1.
# Arguments:
#   $* - All arguments
# Outputs:
#   Writes to stderr joining all args by `IFS`.
#   If `IFS` is unset, then joined by spaces.
########################################
function fatal_log() {
  echo "$*" >&2
  exit 1
}

########################################
# Checks if dependencies exist in the environment.
# Returns:
#   Exits program if command is not found
########################################
function check_deps() {
  command -v fzf &> /dev/null || fatal_log "'fzf' is missing, install FZF: https://github.com/junegunn/fzf"
  command -v tmux &> /dev/null || fatal_log "'tmux' is missing: https://github.com/tmux/tmux/wiki/Installing"
}

########################################
# Uses `fzf` to query directories from DIRS
# and returns the selected directory
# Globals:
#   DIRS
# Returns:
#   target_dir - selected directory
########################################
function select_dir() {
  local target_dir=$(printf "%s\n" "${DIRS[@]}" | fzf)

  if [[ -z "${target_dir}" ]]; then
    fatal_log "No directory selected. Exiting."
  fi

  if [[ ! -d "${target_dir}" ]]; then
    fatal_log "'${target_dir}' is not a directory or does not exist"
  fi

  echo -n "${target_dir}"
}

########################################
# Sanitize string for tmux session name
# Ref: https://github.com/tmux/tmux/blob/d4b8635f50f997bf48764caa4972c4b5fc8802fd/session.c#L241-L243
# Arguments:
#   $1 - String (i.e. `~/.config/tmux/`)
# Returns:
#   name - Sanitized session name
########################################
function sanitize_session_name() {
  local name="$1"
  echo -n "${name}" | tr ':.' '_'
}



########################################
# Switches a tmux session with a given name. The method changes
# depending if you are in a tmux session or not. It will create
# a session if it does not already exist.
# Globals:
#   TMUX - Environment variable that is set when the client is
#          in a tmux session.
# Arguments:
#   session_name - name of the target tmux session
# Returns:
#   None
########################################
function tmux_switch_session() {
  local session_name="$1"

  if [[ -z ${TMUX:-} ]]; then
    # Not in a TMUX session
    tmux new-session -A -t "${session_name}"
  else
    # In a TMUX session
    tmux switch-client -t "${session_name}"
  fi
}

########################################
# Main program execution
########################################
function main() {
  local target_dir
  local session_name

  check_deps

  target_dir=$(select_dir)
  session_name=$(sanitize_session_name "${target_dir}")

  # Create a session if it does not exist
  if ! tmux has-session -t "${session_name}" &> /dev/null; then
    tmux new-session -d -c "${target_dir}" -s "${session_name}"
  fi

  tmux_switch_session "${session_name}"
}

main "$@"
