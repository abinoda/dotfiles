# cd

# local branch clean
brclean () { git branch -d $( git branch --merged | grep -v '^\*' | grep -v 'master' ); }

# remote branch clean
rbrclean () {
  # fetch remote branches and clear refs to deleted ones
  git fetch --prune

  # update master
  git checkout master && git pull origin master

  if [ $? -eq 0 ]; then
    echo "Checkout successful -- Updating/cleaning code"

    branches_to_delete="$(git branch -r --merged | grep -v '^\*' | grep -v 'origin/master' | grep 'origin/' | sed 's/origin\///g')"
    if [[ "$branches_to_delete" == "" ]]; then
      echo "No remote branches to delete"
    else
      git push --delete origin $branches_to_delete
    fi
  else
    echo "Checkout unsuccessful -- Commit any working changes"
  fi
}

function gbclean {
  rbrclean
  brclean
}