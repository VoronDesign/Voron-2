echo "Git diff"
git remote set-branches --add origin $TRAVIS_BRNACH
git fetch
git remote set-branches --add origin master
git fetch
git diff --name-only master...$TRAVIS_BRANCH
