echo "Git diff"
git remote set-branches --add origin master
git fetch
git diff --name-only origin/master
