############################################################################
# Setup the prompt so that it shows the current branch when in a git directory.
#
# Requires git-completion (and git-prompt if it exists) to be sourced somewhere
local BLUE="\[\e[0;34m\]"
local BLACK="\[\e[0;30m\]"
local RED="\[\e[0;31m\]"
local GREEN="\[\e[0;32m\]"
local YELLOW="\[\e[0;33m\]"
local PURPLE="\[\e[0;35m\]"
local WHITE="\[\e[0;37m\]"
local ON_BLUE="\[\e[0;44m\]"
local ON_WHITE="\[\e[0;47m\]"
local ON_RED="\[\e[0;41m\]"
local ON_YELLOW="\[\e[0;43m\]"

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
PS1="${TITLEBAR}$RED\u@$GREEN$ON_RED\h$CLR_RESET$YELLOW\$(__git_ps1) $PURPLE\w$CLR_RESET\n\$ "
PS2='> '
PS4='+ '
