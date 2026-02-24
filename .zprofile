if [[ "$(uname)" == "Linux" ]]; then
  export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/podman/podman.sock

  if [[ -z "${DISPLAY}" && "${XDG_VTNR}" -eq 1 ]]; then
    exec start-hyprland
  fi
fi

if [[ "$(uname)" == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
