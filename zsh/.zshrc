# aliases ======================================================================

(( ${+aliases[vim]} )) || alias vim='nvim'
alias ll='ls -l --color=auto'
alias cchk='for i in {0..256}; do echo -en "\033[38;05;${i}m CLR \033[0m"; done'


# prompt =======================================================================

# future enhancement
# source ${ZDOTDIR}/prompt.zsh


# packages =====================================================================

local packages_file="${ZDOTDIR}/packages.zsh"
[[ -f "$packages_file" ]] && source "$packages_file"


# misc =========================================================================

eval "$(direnv hook zsh)"
