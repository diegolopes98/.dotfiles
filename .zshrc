export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(git asdf kubectl dotenv)

source $ZSH/oh-my-zsh.sh

# Install ZINIT
export ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

# Install ZINIT plugins
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

# ASDF config
. ${ASDF_DATA_DIR:-$HOME/.asdf}/plugins/java/set-java-home.zsh
. ${ASDF_DATA_DIR:-$HOME/.asdf}/plugins/golang/set-env.zsh
