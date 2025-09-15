# Aliases
alias vim='nvim'
alias uuid="uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]' | shpaste && shcopy && echo"

# GPG envs
export GPG_TTY=$(tty)

# Testcontainers config
export TESTCONTAINERS_RYUK_DISABLED=true

# Editor config
export EDITOR=nvim

# Manual Path additions
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export PATH="$PATH:/usr/local/bin"
