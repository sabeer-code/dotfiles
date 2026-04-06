#!/usr/bin/env bash

set -euo pipefail

function ensure_dependencies() {
  if ! command -v stow >/dev/null 2>&1; then
    echo "Error: 'stow' is not installed."
    echo "Error: See https://www.gnu.org/software/stow/ for more information."
    exit 1
  fi
}

function main() {
  local argc="$#"
  local help=""
  local update=""

  ensure_dependencies

  while [[ $# -gt 0 ]]; do
    case "$1" in
      -h | --help)
        help="true"
        shift
        ;;
      -u | --update)
        update="true"
        shift
        ;;
      *)
        echo "Unknown option: $1" >&2
        exit 1
        ;;
    esac
  done

  if [[ "${help}" == "true" || "${argc}" -eq 0 ]]; then
    echo "A small script for quickly updating dotfiles."
    echo ""
    echo "This program will attempt to remove dotfiles and re-add them"
    echo "using 'stow'."
    echo ""
    echo "Usage: $0 [-h | --help] [-u | --update]"
  fi

  if [[ ${update} == "true" ]]; then
    stow --delete --target="${HOME}" common
    stow --target="${HOME}" common
  fi
}

main "$@"

