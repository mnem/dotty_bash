############################################################################
# Setup the prompt so that it shows the current branch when in a git directory.
#
# Requires git-completion (and git-prompt if it exists) to be sourced somewhere
local BLUE="\[\e[0;34m\]"
local RED="\[\e[0;31m\]"
local YELLOW="\[\e[0;33m\]"
local PURPLE="\[\e[0;35m\]"
local WHITE="\[\e[0;37m\]"
local ON_BLUE="\[\e[0;44m\]"

local CLR_RESET="\[\e[0m\]"

case $TERM in
  xterm*)
  TITLEBAR='\[\033]0;\u@\h:\w\007\]'
  ;;
  *)
  TITLEBAR=""
  ;;
esac

PS1="${TITLEBAR}🎅  $RED\u@$WHITE$ON_BLUE\h$CLR_RESET $PURPLE\w$YELLOW\$(__git_ps1)$CLR_RESET\n🎄  \$ "
PS2='> '
PS4='+ '
