# Podman config
export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$UID/bus
export TESTCONTAINERS_RYUK_DISABLED=true

# GPG config
export GPG_TTY=$TTY

# Editor config
export EDITOR=nvim

# Start X only if in console tty 1
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
