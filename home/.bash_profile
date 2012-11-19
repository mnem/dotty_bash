#########################################
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
PATH=/usr/local/bin:/usr/bin:/bin:/usr/X11/bin:/usr/local/sbin:/usr/sbin:/sbin:$HOME/bin

########################################
# Source all the scripts to include
source_files "$HOME/.bash_profile_include*/`uname -n`.*.sh"
source_files "$HOME/.bash_profile_include*/`uname -s`.*.sh"
source_files "$HOME/.bash_profile_include*/generic.*.sh"

########################################
# Source all the scripts setting up aliases
source_files "$HOME/.bash_aliases*/`uname -n`.*.sh"
source_files "$HOME/.bash_aliases*/`uname -s`.*.sh"
source_files "$HOME/.bash_aliases*/generic.*.sh"

########################################
# Finally, export any path changes
export PATH
