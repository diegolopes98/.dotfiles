# Start X only if in console tty 1
if [[ "$(uname)" == "Linux" && -z "${DISPLAY}" && "${XDG_VTNR}" -eq 1 ]]; then
  exec startx
fi

if [[ "$(uname)" == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
