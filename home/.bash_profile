########################################
# Wat, I don't even
shopt -s extglob

have()
{
    unset -v have
    # Completions for system administrator commands are installed as well in
    # case completion is attempted via `sudo command ...'.
    PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin type $1 &>/dev/null &&
    have="yes"
}

run_if_available()
{
  command -v $1 >/dev/null && $@
}

########################################
# Source all passed files. Glob patterns
# may be passed. Ignores any files which
# cannot be read.
source_files() {
  local PASSED_PATH
  local SCRIPT

  for PASSED_PATH in "$@" ; do
    for SCRIPT in $PASSED_PATH ; do
      if [[ -r $SCRIPT ]] ; then
        # Useful to uncomment if you want to see the load order
        #echo "Sourcing: $SCRIPT"
        . $SCRIPT
      fi
    done
  done
}

########################################
# Set up a somewhat promiscuous base search path
PATH=$PATH:/usr/X11/bin
PATH=/usr/local/sbin:$PATH
PATH=/usr/local/bin:$PATH
PATH=$PATH:$HOME/bin

########################################
# Source all the scripts to include
source_files "$HOME/.bash_profile_include*/generic.*.sh"
source_files "$HOME/.bash_profile_include*/`uname -s`.*.sh"
source_files "$HOME/.bash_profile_include*/`uname -n`.*.sh"

########################################
# Source all the scripts setting up aliases
source_files "$HOME/.bash_aliases*/generic.*.sh"
source_files "$HOME/.bash_aliases*/`uname -s`.*.sh"
source_files "$HOME/.bash_aliases*/`uname -n`.*.sh"

########################################
# Finally, export any path changes
export PATH
