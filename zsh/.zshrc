# aliases ======================================================================

alias vim='nvim'
alias ll='ls -l --color=auto'
alias cchk='for i in {0..256}; do echo -en "\033[38;05;${i}m CLR \033[0m"; done'


# prompt =======================================================================

if [[ ! -d $ZPLUGDIR/pure ]]; then
  git clone https://github.com/sindresorhus/pure $ZPLUGDIR/pure
fi

fpath+=($ZPLUGDIR/pure)
autoload -U promptinit ; promptinit ; prompt pure

# future enhancement
# source ${ZDOTDIR}/prompt.zsh


# packages =====================================================================

if [[ ! -d $ZPLUGDIR/zsh-syntax-highlighting ]]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting \
  $ZPLUGDIR/zsh-syntax-highlighting
fi
source ${ZPLUGDIR}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# misc =========================================================================

eval "$(direnv hook zsh)"
