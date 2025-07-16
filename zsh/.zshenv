# environmental variables ======================================================

export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:=$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:=$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:=$HOME/.local/state}"
export XDG_BIN_HOME="${XDG_BIN_HOME:=$HOME/.local/bin}"

export ZDOTDIR="${ZDOTDIR:=$XDG_CONFIG_HOME/zsh}"
export ZPLUGDIR="${ZPLUGDIR:=$XDG_DATA_HOME/zsh/plugins}"

export IPYTHONDIR="${IPYTHONDIR:=$XDG_CONFIG_HOME/ipython}"

export TERM=xterm-256color
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

if [[ -f "$HOME/.env" ]]; then
  source "$HOME/.env"
fi


# path =========================================================================

typeset -U path PATH

path=("$HOME/.config/bin" $path[@])
path=("$XDG_BIN_HOME" $path[@])

path+=("$HOME/.local/bin")
path+=("$HOME/.juliaup/bin")
path+=("$HOME/.cargo/bin")
path+=("$HOME/go/bin")
