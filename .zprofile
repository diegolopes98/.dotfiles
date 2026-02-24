if [[ "$(uname)" == "Linux" ]]; then
  export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/podman/podman.sock
fi

if [[ "$(uname)" == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
