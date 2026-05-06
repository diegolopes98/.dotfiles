if [[ "$(uname)" == "Linux" ]]; then
  export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/podman/podman.sock
fi

if [[ "$(uname)" == "Darwin" ]]; then
  if command -v brew >/dev/null 2>&1; then
    eval "$(brew shellenv)"
  fi
fi
