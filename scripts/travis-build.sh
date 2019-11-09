echo "Git diff"
git diff --name-only --diff-filter=AM HEAD...$TRAVIS_BRANCH
