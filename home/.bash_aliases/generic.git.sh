alias git-branch-tidy="git branch --merged | grep -v '^* ' | xargs -p git branch --delete"
