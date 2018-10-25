############################################################################
# Setup the prompt so that it shows the current branch when in a git directory.
#
# Requires git-completion (and git-prompt if it exists) to be sourced somewhere
local BLACK="\[\e[0;30m\]"
local RED="\[\e[0;31m\]"
local GREEN="\[\e[0;32m\]"
local YELLOW="\[\e[0;33m\]"
local BLUE="\[\e[0;34m\]"
local PURPLE="\[\e[0;35m\]"
local CYAN="\[\e[0;36m\]"
local WHITE="\[\e[0;37m\]"

local ON_BLACK="\[\e[0;40m\]"
local ON_RED="\[\e[0;41m\]"
local ON_GREEN="\[\e[0;42m\]"
local ON_YELLOW="\[\e[0;43m\]"
local ON_BLUE="\[\e[0;44m\]"
local ON_PURPLE="\[\e[0;45m\]"
local ON_CYAN="\[\e[0;46m\]"
local ON_WHITE="\[\e[0;47m\]"

local BLACK_ON_WHITE="\[\e[0;30;47m\]"
local BLACK_ON_RED="\[\e[0;30;41m\]"
local WHITE_ON_RED="\[\e[0;37;41m\]"
local YELLOW_ON_RED="\[\e[0;33;41m\]"

local CLR_RESET="\[\e[0m\]"

case $TERM in
  xterm*)
  TITLEBAR='\[\033]0;\u@\h:\w\007\]'
  ;;
  *)
  TITLEBAR=""
  ;;
esac

THEME_A=''
THEME_B=''

#PS1="${TITLEBAR}$THEME_A  $RED\u@$GREEN$ON_RED\h$CLR_RESET$YELLOW\$(__git_ps1) $PURPLE\w$CLR_RESET\n$THEME_B  \$ "
PS1="${TITLEBAR}$RED\u@$BLACK_ON_RED \h $CLR_RESET$YELLOW\$(__git_ps1) $PURPLE\w$CLR_RESET\n\$ "
PS2='> '
PS4='+ '

alias gs='git status'
alias gl='git log'
alias gd='git diff'
alias gdt='git difftool'
