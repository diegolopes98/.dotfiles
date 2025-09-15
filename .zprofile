if [[ "$(uname)" == "Linux" ]]; then
  # Podman envs
  export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock
fi

if [[ "$(uname)" == "Linux" && -z "${DISPLAY}" && "${XDG_VTNR}" -eq 1 ]]; then
  exec startx
fi

if [[ "$(uname)" == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  alias shcopy=pbcopy
  alias shpaste=pbpaste
fi
