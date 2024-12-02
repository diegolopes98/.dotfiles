# Podman config
export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock
export TESTCONTAINERS_RYUK_DISABLED=true

# Editor config
export EDITOR=nvim

# Start X only if in console tty 1
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

# Manual Path additions
export PATH="$PATH:/usr/local/bin"
