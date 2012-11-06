############################################################################
# Setup the prompt so that it shows the current branch when in a git directory.
#
# brew install git-extras
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

local      BLUE="\[\e[0;34m\]"
local       RED="\[\e[0;31m\]"
local    YELLOW="\[\e[0;33m\]"
local    PURPLE="\[\e[0;35m\]"
local CLR_RESET="\[\e[0m\]"

case $TERM in
  xterm*)
  TITLEBAR='\[\033]0;\u@\h:\w\007\]'
  ;;
  *)
  TITLEBAR=""
  ;;
esac

PS1="${TITLEBAR}🎃  $RED\u@\h $PURPLE\w$YELLOW\$(__git_ps1)$CLR_RESET\n👻  \$ "
PS2='> '
PS4='+ '
