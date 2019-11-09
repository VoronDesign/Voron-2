echo "Git diff"
git remote set-branches --add origin $TRAVIS_BRNACH
git fetch
git diff --name-only HEAD...$TRAVIS_BRANCH
