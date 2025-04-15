# environmental variables ======================================================

export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:=$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:=$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:=$HOME/.local/state}"

export ZDOTDIR="${ZDOTDIR:=$XDG_CONFIG_HOME/zsh}"
export ZPLUGDIR="${ZPLUGDIR:=$XDG_DATA_HOME/zsh/plugins}"

export IPYTHONDIR="${IPYTHONDIR:=$XDG_CONFIG_HOME/ipython}"

export TERM=xterm-256color

source "$HOME/.env"


# path =========================================================================

typeset -U path PATH

path=("$HOME/.config/bin" $path[@])

path+=("$HOME/.local/bin")
path+=("$HOME/.juliaup/bin")
path+=("$HOME/.cargo/bin")
path+=("$HOME/go/bin")
