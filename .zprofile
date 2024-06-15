# Podman config
export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$UID/bus
export TESTCONTAINERS_RYUK_DISABLED=true
