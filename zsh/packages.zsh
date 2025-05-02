# prompt =======================================================================

if [[ ! -d $ZPLUGDIR/pure ]]; then
  git clone https://github.com/sindresorhus/pure $ZPLUGDIR/pure
fi

fpath+=($ZPLUGDIR/pure)
autoload -U promptinit ; promptinit ; prompt pure


# syntax =======================================================================

if [[ ! -d $ZPLUGDIR/zsh-syntax-highlighting ]]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting \
  $ZPLUGDIR/zsh-syntax-highlighting
fi
source ${ZPLUGDIR}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
